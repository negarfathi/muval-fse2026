open Core
open Common.Ext
open Ast
open Ast.LogicOld
open Qsat

(*sample based algorithm*)
module SampleQSAT (A : Qsat.MBP_TYPE) = struct
  open Formula

  let rec level_of level = function
    | [] -> (Map.Poly.empty, Map.Poly.empty)
    | (Exists, sortenv) :: tl ->
        let level = if Z.is_odd level then level else Z.succ level in
        let map =
          List.fold sortenv ~init:Map.Poly.empty ~f:(fun map (tvar, sort) ->
              Map.Poly.add_exn map ~key:tvar ~data:(level, sort))
        in
        let vlevel, plevel = level_of level tl in
        (Map.force_merge map vlevel, plevel)
    | (Forall, sortenv) :: tl ->
        let level =
          if Z.Compare.(level = Z.zero) then Z.of_int 2
          else if Z.is_even level then level
          else Z.succ level
        in
        let map =
          List.fold sortenv ~init:Map.Poly.empty ~f:(fun map (tvar, sort) ->
              Map.Poly.add_exn map ~key:tvar ~data:(level, sort))
        in
        let vlevel, plevel = level_of level tl in
        (Map.force_merge map vlevel, plevel)
    | (Random r, sortenv) :: tl ->
        let level = Z.succ level in
        let map =
          List.fold sortenv ~init:Map.Poly.empty ~f:(fun map (tvar, _sort) ->
              Map.Poly.add_exn map ~key:tvar ~data:(level, r))
        in
        let vlevel, plevel = level_of level tl in
        (vlevel, Map.force_merge map plevel)

  let add_dontcare model vlevel plevel =
    let model =
      Map.Poly.fold vlevel ~init:model ~f:(fun ~key ~data:(_, sort) model ->
          match Map.Poly.find model key with
          | Some _ -> model
          | None -> Map.Poly.add_exn model ~key ~data:(Term.mk_dummy sort))
    in
    Map.Poly.fold plevel ~init:model ~f:(fun ~key ~data:(_, rand) model ->
        match Map.Poly.find model key with
        | Some _ -> model
        | None ->
            Map.Poly.add_exn model ~key
              ~data:(Term.mk_dummy (Rand.sort_of rand)))

  let level_random atom plevel =
    Set.fold (Atom.tvs_of atom) ~init:Z.zero ~f:(fun level tvar ->
        match Map.Poly.find plevel tvar with
        | Some (l, _) -> Z.max level l
        | None -> level)

  let tail j vlevel plevel =
    let t1 =
      Map.Poly.filter vlevel ~f:(fun (level, _) ->
          Z.Compare.(level >= Z.(j - Z.one)))
    in
    let t2 =
      Map.Poly.fold plevel ~init:Map.Poly.empty
        ~f:(fun ~key ~data:(level, rand) map ->
          if Z.Compare.(level >= Z.(j - Z.one)) then
            Map.Poly.add_exn map ~key ~data:(level, Rand.sort_of rand)
          else map)
    in
    Map.force_merge t1 t2

  let rec mbp ~print model j vlevel plevel core =
    let core, bcore =
      Set.fold core ~init:(Set.Poly.empty, Set.Poly.empty)
        ~f:(fun (c, bc) phi ->
          match bool_var_atom phi with
          | First phi' -> (c, Set.add bc phi')
          | Second atm -> (Set.add c atm, bc))
    in
    if false then (
      print_endline
        ("core: " ^ List.to_string ~f:Atom.str_of @@ Set.to_list core);
      print_endline
        ("bcore: " ^ List.to_string ~f:Atom.str_of @@ Set.to_list bcore);
      print_endline "");
    let mbp_theory model tail phis bphis =
      let phis, bphis =
        Map.Poly.fold tail ~init:(phis, bphis)
          ~f:(fun ~key:tvar ~data:(_, _sort) (phis, bphis) ->
            if Term.is_bool_sort T_bool.SBool then
              (phis, Mbp.Boolean.model_based_projection ~print model tvar bphis)
            else (A.model_based_projection ~print model tvar phis, bphis))
      in
      Set.union phis bphis
    in
    let tail = tail j vlevel plevel in
    let jformulas =
      Set.Poly.map ~f:Evaluator.simplify_atom
      @@ mbp_theory model tail core bcore
    in
    let index = if Z.is_odd j then Z.one else Z.of_int 2 in
    let index =
      Set.fold jformulas ~init:index ~f:(fun i jterm ->
          Z.max i (level_j_atom j vlevel jterm))
    in
    if Z.Compare.(index = Z.(j - Z.of_int 2)) then
      (and_of @@ Set.to_list jformulas, index)
    else mbp ~print model Z.(index + Z.of_int 2) vlevel plevel jformulas

  let update_formulas formulas atoms j jformula =
    let newformulas =
      if Z.is_odd j then
        Map.Poly.mapi formulas ~f:(fun ~key ~data ->
            if Z.Compare.(key < j) then data
            else if Z.is_odd key then mk_and data (negate jformula)
            else data)
      else
        Map.Poly.mapi formulas ~f:(fun ~key ~data ->
            if Z.Compare.(key < j) then data
            else if Z.is_even key then mk_and data (negate jformula)
            else data)
    in
    let newatoms =
      let pos, neg = atoms_of jformula in
      Set.Poly.union_list [ atoms; pos; neg ]
    in
    (newformulas, newatoms)

  let solve ~print quantifiers f theta =
    let open Z3Smt.Z3interface in
    print_endline "sampleQSAT";
    if false then (
      List.iter quantifiers ~f:(fun (binder, sortenv) ->
          print_string
            (str_of_binder binder
            ^ str_of_sort_env_list Term.str_of_sort sortenv
            ^ " "));
      print_endline "");
    let vlevel, plevel = level_of Z.zero quantifiers in
    let clausenames = Set.Poly.singleton "main" in
    let theta = Q.of_float theta in
    let fenv = Map.Poly.empty in
    (*TODO: generate fenv*)
    let rec loop model i j k formulas atoms clausenames =
      if Z.Compare.(i = j) then
        let vars =
          Map.Poly.fold plevel ~init:[]
            ~f:(fun ~key:tvar ~data:(level, rand) l ->
              if Z.Compare.(i = level) then (tvar, rand) :: l else l)
        in
        if List.is_empty vars then
          loop model (Z.succ i) j k formulas atoms clausenames
        else
          let vars =
            List.map vars ~f:(fun (tvar, rand) ->
                let rand = Rand.subst model rand in
                (tvar, rand))
          in
          let vars =
            List.map vars ~f:(fun (tvar, rand) ->
                let samples = Mcmc.samp rand in
                (tvar, samples))
          in
          let sat, unsat, satmodel, unsatmodel =
            compute vars model i j formulas atoms
          in
          let late = Q.make sat Z.(sat + unsat) in
          if Q.(late >= theta) then
            if Z.Compare.(i <= Z.of_int 2) then SAT
            else
              let j = if Z.is_odd i then Z.pred i else Z.(i - Z.of_int 2) in
              let tempcore = strategy ~print satmodel j atoms vlevel in
              let jformula, j = mbp ~print satmodel j vlevel plevel tempcore in
              if Z.Compare.(j < k) then SAT
              else
                let formulas, atoms =
                  update_formulas formulas atoms j jformula
                in
                loop Map.Poly.empty (Z.succ j) j k formulas atoms clausenames
          else if Z.Compare.(i <= Z.one) then UNSAT
          else
            let j = if Z.is_even i then Z.pred i else Z.(i - Z.of_int 2) in
            let tempcore = strategy ~print unsatmodel j atoms vlevel in
            let jformula, j = mbp ~print unsatmodel j vlevel plevel tempcore in
            if Z.Compare.(j < k) then UNSAT
            else
              let formulas, atoms = update_formulas formulas atoms j jformula in
              loop Map.Poly.empty (Z.succ j) j k formulas atoms clausenames
      else
        let formula = Map.Poly.find_exn formulas j in
        let str = strategy ~print model j atoms vlevel in
        if false then (
          print_endline (Z.to_string j);
          print_endline ("Formula: " ^ str_of formula);
          print_endline
            ("Strategy: "
            ^ String.concat_map_set ~sep:", " ~f:Formula.str_of str));
        let samplemodel =
          Map.Poly.filter_keys model ~f:(fun tvar ->
              match Map.Poly.find plevel tvar with
              | Some (level, _) -> Z.Compare.(level < i)
              | None -> false)
        in
        let formula = subst samplemodel formula in
        let str = Set.Poly.map str ~f:(subst samplemodel) in
        let pvar_clause_map, clausenames =
          List.foldi (Set.to_list str)
            ~init:(Map.Poly.singleton "main" formula, clausenames)
            ~f:(fun n (map, names) phi ->
              let name = "|#S_" ^ string_of_int n ^ "|" in
              let names = Set.add names name in
              (Map.Poly.add_exn map ~key:name ~data:phi, names))
        in
        match check_sat_unsat_core ~id:None fenv pvar_clause_map with
        | `Unsat core ->
            if Z.Compare.(j = Z.one) then UNSAT
            else if Z.Compare.(j = Z.of_int 2) then SAT
            else
              let core =
                List.filter_opt
                @@ List.map core ~f:(function
                     | "main" -> None
                     | v -> Map.Poly.find pvar_clause_map v)
              in
              let jformula, j =
                mbp ~print model j vlevel plevel (Set.Poly.of_list core)
              in
              if Z.Compare.(j < k) then if Z.is_odd j then UNSAT else SAT
              else (
                if false then (
                  print_endline ("core: " ^ List.to_string ~f:str_of core);
                  print_endline ("jformula: " ^ str_of jformula));
                let formulas, atoms =
                  update_formulas formulas atoms j jformula
                in
                loop Map.Poly.empty (Z.succ j) j k formulas atoms clausenames)
        | `Sat model ->
            let model =
              remove_dontcare model |> Map.Poly.of_alist_exn
              |> A.let_sort clausenames
            in
            let model =
              add_dontcare (Map.force_merge model samplemodel) vlevel plevel
            in
            if false then print_endline ("model: " ^ TermSubst.str_of model);
            let formulas =
              Map.Poly.update formulas (Z.succ j) ~f:(function
                | Some phi -> phi
                | None -> Map.Poly.find_exn formulas (Z.pred j))
            in
            loop model i (Z.succ j) k formulas atoms clausenames
        | _ -> assert false
    and compute vars model i j formulas atoms =
      match vars with
      | [] -> (
          match loop model (Z.succ i) j i formulas atoms clausenames with
          | SAT -> (Z.one, Z.zero, model, Map.Poly.empty)
          | UNSAT -> (Z.zero, Z.one, Map.Poly.empty, model))
      | (tvar, qset) :: tl ->
          Set.fold qset ~init:(Z.zero, Z.zero, Map.Poly.empty, Map.Poly.empty)
            ~f:(fun (sat, unsat, satmodel, unsatmodel) r ->
              let rterm = T_real.mk_real r in
              let model = Map.Poly.update model tvar ~f:(fun _ -> rterm) in
              let sat', unsat', satmodel', unsatmodel' =
                compute tl model i j formulas atoms
              in
              let satmodel =
                if Map.Poly.is_empty satmodel' then satmodel else satmodel'
              in
              let unsatmodel =
                if Map.Poly.is_empty unsatmodel' then unsatmodel
                else unsatmodel'
              in
              (Z.(sat + sat'), Z.(unsat + unsat'), satmodel, unsatmodel))
    in
    let formulas =
      Map.Poly.add_exn
        (Map.Poly.singleton Z.one f)
        ~key:(Z.of_int 2) ~data:(negate f)
    in
    let atoms =
      let pos, neg = atoms_of f in
      Set.union pos neg
    in
    loop Map.Poly.empty Z.one Z.one Z.one formulas atoms clausenames
end
