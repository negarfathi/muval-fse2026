open Core
open Common
open Common.Util
open Common.Combinator
open Ast
open Ast.LogicOld

module Make (Cfg : Config.ConfigType) = struct
  let config = Cfg.config

  module Debug =
    Debug.Make ((val Debug.Config.(if config.verbose then enable else disable)))

  module RfunProver = RfunProver.Make (Cfg)

  let optimizer =
    let open Or_error in
    ExtFile.unwrap config.optimizer >>= fun cfg -> Ok (MuCLP.Optimizer.make cfg)

  (* let merge_pvars pvars1 pvars2 =
     List.sort_uniq Ident.pvar_compare
     @@ List.merge Ident.pvar_compare pvars1 pvars2

     let rec intersect_pvars pvars1 pvars2 =
     match pvars1, pvars2 with
     | [], _ | _, [] -> []
     | pvar1 :: pvars1, pvar2 :: pvars2 ->
      if Ident.pvar_compare pvar1 pvar2 < 0 then
        intersect_pvars pvars1 (pvar2 :: pvars2)
      else if Ident.pvar_compare pvar1 pvar2 > 0 then
        intersect_pvars (pvar1 :: pvars1) pvars2
      else
        pvar1 :: intersect_pvars pvars1 pvars2 *)

  let rectvar_prefix = "#rec_"

  let rectvar_of_pvar pvar =
    Ident.Tvar (rectvar_prefix ^ Ident.name_of_pvar pvar)
  (* let is_rectvar tvar =
     let varname = Ident.name_of_tvar tvar in
     String.length varname >= String.length rectvar_prefix
     && String.equal (String.sub varname ~pos:0 ~len:(String.length rectvar_prefix)) rectvar_prefix *)

  (* [coe1 * x + coe2; - coe1 * x + coe2] *)
  let get_guessed_terms_rep coe1 coe2 arg_terms =
    let const_term = T_int.from_int coe2 ~info:Dummy in
    List.fold_left ~init:[] arg_terms ~f:(fun res arg_term ->
        let pterm =
          T_int.mk_add
            (T_int.mk_mul
               (T_int.from_int coe1 ~info:Dummy)
               arg_term ~info:Dummy)
            const_term ~info:Dummy
        in
        let nterm =
          T_int.mk_add
            (T_int.mk_mul
               (T_int.from_int (-coe1) ~info:Dummy)
               arg_term ~info:Dummy)
            const_term ~info:Dummy
        in
        pterm :: nterm :: res)

  let get_guessed_terms coe1 coe2 arg_terms =
    let const_term = T_int.from_int coe2 ~info:Dummy in
    let res = get_guessed_terms_rep coe1 coe2 arg_terms in
    if List.is_empty res then [ const_term ] else res

  let replace_app coe1 coe2 outer_mu_preds current_terms_of_pvars =
    Formula.map_atom ~f:(function
      | Atom.App (Predicate.Var (pvar, arg_sorts), args, info) ->
          let arg_pvars =
            List.Assoc.find_exn ~equal:Stdlib.( = ) outer_mu_preds pvar
          in
          let arg_sorts' = List.map ~f:(fun _ -> T_int.SInt) arg_pvars in
          let make_args env_guessed env =
            List.map arg_pvars ~f:(fun pvar' ->
                try
                  let term =
                    List.Assoc.find_exn ~equal:Stdlib.( = ) env pvar'
                  in
                  if Stdlib.(pvar = pvar') then
                    T_int.mk_sub term @@ T_int.one ()
                  else term
                with Stdlib.Not_found ->
                  List.Assoc.find_exn ~equal:Stdlib.( = ) env_guessed pvar')
          in
          (* S_j - S_i *)
          let new_pvars =
            List.filter
              ~f:(fun pvar ->
                not
                @@ List.Assoc.mem ~equal:Stdlib.( = ) current_terms_of_pvars
                     pvar)
              arg_pvars
          in
          if List.is_empty new_pvars then
            Formula.mk_atom
            @@ Atom.mk_pvar_app ~info pvar (arg_sorts' @ arg_sorts)
            @@ make_args [] current_terms_of_pvars
            @ args
          else
            let new_tvars = List.map ~f:rectvar_of_pvar new_pvars in
            let new_terms =
              List.map ~f:(fun tvar -> Term.mk_var tvar T_int.SInt) new_tvars
            in
            let guessed_terms = get_guessed_terms coe1 coe2 args in
            let havocs =
              Formula.and_of
              (* [a1; a2], [b1; b2] -> [a1 >= b1; a1 >= b2; a2 >= b1; a2 >= b2] *)
              @@ List.map ~f:(uncurry2 Formula.geq)
              @@ List.cartesian_product new_terms guessed_terms
            in
            let args =
              make_args
                (List.zip_exn new_pvars new_terms)
                current_terms_of_pvars
              @ args
            in
            Formula.mk_forall_if_bounded
              (List.map ~f:(fun tvar -> (tvar, T_int.SInt)) new_tvars)
            @@ Formula.mk_imply havocs @@ Formula.mk_atom
            @@ Atom.mk_pvar_app pvar (arg_sorts' @ arg_sorts) args ~info
      | atm -> Formula.mk_atom atm)

  let get_outer_mu_preds preds =
    let preds_count = List.length preds in
    (* construct a table *)
    let pvar_to_nid = Stdlib.Hashtbl.create preds_count in
    let dummy_pvar = Ident.Pvar "" in
    let is_mu = Array.init preds_count ~f:(fun _ -> false) in
    let nid_to_pvar = Array.init preds_count ~f:(fun _ -> dummy_pvar) in
    List.iteri
      ~f:(fun nid pred ->
        Stdlib.Hashtbl.add pvar_to_nid pred.MuCLP.Pred.name nid;
        nid_to_pvar.(nid) <- pred.name;
        is_mu.(nid) <- Stdlib.( = ) pred.kind Predicate.Mu)
      preds;
    (* make a graph *)
    let g = Mygraph.init preds_count in
    List.iter
      ~f:(fun pred ->
        let nid = Stdlib.Hashtbl.find pvar_to_nid pred.name in
        Formula.pvs_of pred.body
        |> Set.iter ~f:(fun pvar' ->
               try
                 let to_nid = Stdlib.Hashtbl.find pvar_to_nid pvar' in
                 Mygraph.add_edge nid to_nid g
               with Stdlib.Not_found ->
                 failwith
                 @@ sprintf "Predicate %s is not found in muclp graph"
                 @@ Ident.name_of_pvar pvar'))
      preds;
    (* make a rev graph *)
    let rg = Mygraph.reverse_edges g in
    (* get nid list s.t. a ->* b /\ b *<- a through only min(a, b) nodes *)
    let outer_nids = Mygraph.init preds_count in
    for i = 0 to preds_count - 1 do
      let nids1 =
        Mygraph.reachable_nodes_from ~start_is_reachable_initially:false i g
      in
      let nids2 =
        Mygraph.reachable_nodes_from ~start_is_reachable_initially:false i rg
      in
      Set.inter (Set.Poly.of_list nids1) (Set.Poly.of_list nids2)
      |> Set.to_list
      |> List.iter ~f:(fun nid -> Mygraph.add_edge nid i outer_nids);
      Mygraph.reset_node i g;
      Mygraph.reset_node i rg
    done;
    (* filter by fixpoints *)
    let res =
      List.map preds ~f:(fun pred ->
          let nid = Stdlib.Hashtbl.find pvar_to_nid pred.name in
          ( pred.name,
            Mygraph.get_next_nids nid outer_nids
            |> List.filter ~f:(fun to_nid -> is_mu.(to_nid))
            |> List.map ~f:(fun to_nid -> nid_to_pvar.(to_nid)) ))
    in
    (* String.concat_map_list ~sep:"\n" ~f:(fun (pvar, pvars) ->
       sprintf "%s: %s"
         (Ident.name_of_pvar pvar)
         (String.concat_map_list ~sep:", " ~f:Ident.name_of_pvar pvars))
         res
       |> print_endline; *)
    res

  let elim_mu_with_rec muclp coe1 coe2 =
    (* calc outer_mu_preds *)
    let outer_mu_preds = get_outer_mu_preds muclp.MuCLP.Problem.preds in
    (* make tvars *)
    let rec_tvars =
      List.fold_left ~init:[] muclp.MuCLP.Problem.preds ~f:(fun env pred ->
          if Stdlib.( = ) pred.kind Predicate.Mu then
            (pred.name, rectvar_of_pvar pred.name) :: env
          else env)
    in
    (* make new muclp *)
    let preds =
      List.map muclp.MuCLP.Problem.preds ~f:(fun pred ->
          let outer_pvars =
            List.Assoc.find_exn ~equal:Stdlib.( = ) outer_mu_preds pred.name
          in
          let env =
            List.map
              ~f:(fun pvar ->
                ( pvar,
                  Term.mk_var
                    (List.Assoc.find_exn ~equal:Stdlib.( = ) rec_tvars pvar)
                    T_int.SInt ))
              outer_pvars
            @ []
          in
          let body = replace_app coe1 coe2 outer_mu_preds env pred.body in
          (* add rec > 0 if need *)
          let body =
            if List.Assoc.mem ~equal:Stdlib.( = ) env pred.name then
              let mytvar =
                List.Assoc.find_exn ~equal:Stdlib.( = ) env pred.name
              in
              Formula.mk_and (Formula.gt mytvar @@ T_int.zero ()) body
            else body
          in
          {
            pred with
            kind = Predicate.Nu;
            args =
              List.map
                ~f:(fun pvar ->
                  ( List.Assoc.find_exn ~equal:Stdlib.( = ) rec_tvars pvar,
                    T_int.SInt ))
                outer_pvars
              @ pred.args;
            body;
          })
    in
    let query =
      Formula.univ_clos
      @@ replace_app coe1 coe2 outer_mu_preds []
      @@ muclp.query
    in
    MuCLP.Problem.make preds query

  let flip_solver solver timeout is_print_for_debug =
    let status, old_status = solver timeout is_print_for_debug in
    (MuCLP.Problem.flip_solution status, old_status)

  let rec run_solvers timeout is_print_chc = function
    | [] -> MuCLP.Problem.Unknown
    | solvers ->
        let rec rep next_solvers = function
          | [] ->
              let next_timeout =
                timeout * 2
                (* if List.length next_solvers = 1 then 0 else timeout * 2 *)
              in
              run_solvers next_timeout false (List.rev next_solvers)
          | (solver, title, is_print) :: tail ->
              let is_print_chc = is_print_chc && is_print in
              if is_print_chc then (
                Debug.print @@ lazy "======================================";
                Debug.print @@ lazy ("CHC of " ^ title);
                Debug.print @@ lazy "======================================");
              if config.verbose then
                Debug.print
                @@ lazy
                     (sprintf "Solving %s %s..." title
                     @@
                     if timeout = 0 then "without timeout"
                     else
                       sprintf "with timeout %d sec" timeout
                       ^ if is_print_chc then sprintf "\n" else "");
              let status, old_status = solver timeout is_print_chc in
              if (not is_print_chc) && config.verbose then
                Debug.print
                @@ lazy
                     (sprintf " %s (<= %s)\n"
                        (MuCLP.Problem.str_of_solution status)
                        (MuCLP.Problem.str_of_solution old_status));
              if Stdlib.(status = MuCLP.Problem.Unknown) then
                rep next_solvers tail
              else if Stdlib.(status = MuCLP.Problem.Timeout) then (
                if (not is_print_chc) && config.verbose then
                  Debug.print @@ lazy " timeout\n";
                rep ((solver, title, is_print) :: next_solvers) tail)
              else status
        in
        rep [] solvers

  let get_mu_elimed_solver ~id coe1 coe2 is_print_for_debug muclp =
    if is_print_for_debug then (
      Debug.print
      @@ lazy "vvvvvvvvvvvvvvvvvv Original muCLP vvvvvvvvvvvvvvvvvv\n";
      Debug.print @@ lazy (MuCLP.Problem.str_of muclp);
      Debug.print @@ lazy "");
    let module Qelim = MuCLP.Qelim.Make (struct
      let config =
        {
          config.qelim with
          mode =
            (match config.qelim.mode with
            | MuCLP.Qelim.Nu _ -> MuCLP.Qelim.Nu coe2
            | m -> m);
        }
    end) in
    let muclp, _ =
      Qelim.elim_exists (muclp, (Map.Poly.empty, Map.Poly.empty))
    in
    if is_print_for_debug then (
      Debug.print
      @@ lazy "vvvvvvvvvvvvvvvvvv Encoded muCLP vvvvvvvvvvvvvvvvvv\n";
      Debug.print @@ lazy (MuCLP.Problem.str_of muclp);
      Debug.print @@ lazy "");
    let muclp = elim_mu_with_rec muclp coe1 coe2 in
    if is_print_for_debug then (
      Debug.print
      @@ lazy
           (sprintf "vvvvvvvvvvvvv Eliminate Mu (coe: %d, %d) vvvvvvvvvvvvv\n"
              coe1 coe2);
      Debug.print @@ lazy (MuCLP.Problem.str_of muclp);
      Debug.print @@ lazy "");
    let muclp = MuCLP.Problem.simplify muclp in
    if is_print_for_debug then (
      Debug.print @@ lazy "vvvvvvvvvvvvvvv Simplify vvvvvvvvvvvvvvv\n";
      Debug.print @@ lazy (MuCLP.Problem.str_of muclp);
      Debug.print @@ lazy "");
    fun timeout is_print_for_debug ->
      let result, _ =
        RfunProver.solve_onlynu_onlyforall ~id false timeout is_print_for_debug
          muclp
      in
      match result with
      | MuCLP.Problem.Valid -> (MuCLP.Problem.Valid, MuCLP.Problem.Valid)
      | status -> (MuCLP.Problem.Unknown, status)

  let solve_onlyforall ~id _ muclp =
    let muclp = MuCLP.Problem.bind_fvs_with_forall muclp in
    let solvers = ref [] in
    if MuCLP.Problem.has_only_forall muclp then (
      let module Qelim = MuCLP.Qelim.Make (struct
        let config = config.qelim
      end) in
      let muclp, _ (*ToDO*) =
        Qelim.elim_exists (muclp, (*ToDo*) (Map.Poly.empty, Map.Poly.empty))
      in
      let nu_relaxed_muclp = MuCLP.Util.get_greatest_approx muclp in
      Debug.print @@ lazy "======================================";
      Debug.print @@ lazy "nu-relaxed muclp";
      Debug.print @@ lazy "======================================";
      Debug.print @@ lazy (MuCLP.Problem.str_of nu_relaxed_muclp);
      Debug.print @@ lazy "";
      let nu_relax_solver timeout is_print_for_debug =
        let result, _ =
          RfunProver.solve_onlynu_onlyforall ~id false timeout
            is_print_for_debug nu_relaxed_muclp
        in
        match result with
        | MuCLP.Problem.Invalid -> (MuCLP.Problem.Invalid, MuCLP.Problem.Invalid)
        | status -> (MuCLP.Problem.Unknown, status)
      in
      solvers := !solvers @ [ (nu_relax_solver, "nu-relaxed muclp", true) ]);
    let coe1, coe2 = match config.coe with None -> (1, 1) | Some coe -> coe in
    let muclp_for_disprove = MuCLP.Util.get_dual muclp in
    Debug.print @@ lazy "======================================";
    Debug.print @@ lazy "Generating mu-eliminated muclp";
    Debug.print @@ lazy "======================================";
    let _s = get_mu_elimed_solver coe1 coe2 true muclp in
    Debug.print @@ lazy "======================================";
    Debug.print @@ lazy "Generating muclp for disproving";
    Debug.print @@ lazy "======================================";
    let _s =
      flip_solver @@ get_mu_elimed_solver ~id coe1 coe2 true muclp_for_disprove
    in
    solvers :=
      !solvers
      @ [
          ( get_mu_elimed_solver ~id coe1 coe2 false muclp,
            sprintf "mu-eliminated muclp with coe=%d,%d" coe1 coe2,
            true );
          ( flip_solver
            @@ get_mu_elimed_solver ~id coe1 coe2 false muclp_for_disprove,
            sprintf "muclp for disproving with coe=%d,%d" coe1 coe2,
            true );
        ];
    if Option.is_none config.coe then
      solvers :=
        !solvers
        @ [
            ( get_mu_elimed_solver ~id 1 2 false muclp,
              "mu-eliminated muclp with coe=1,2",
              false );
            ( flip_solver
              @@ get_mu_elimed_solver ~id 1 2 false muclp_for_disprove,
              "muclp for disproving with coe=1,2",
              false );
            ( get_mu_elimed_solver ~id 1 10 false muclp,
              "mu-eliminated muclp with coe=1,10",
              false );
            ( flip_solver
              @@ get_mu_elimed_solver ~id 1 10 false muclp_for_disprove,
              "muclp for disproving with coe=1,10",
              false );
          ];
    run_solvers 1 true !solvers

  let solve_onlyexists ~id timeout muclp =
    MuCLP.Problem.flip_solution
    @@ solve_onlyforall ~id timeout
    @@ MuCLP.Util.get_dual muclp

  let solve ~id muclp =
    let module Qelim = MuCLP.Qelim.Make (struct
      let config = config.qelim
    end) in
    let timeout = 10 in
    if
      let muclp', _ =
        Qelim.elim_exists_in_preds
          (muclp, (*ToDo*) (Map.Poly.empty, Map.Poly.empty))
      in
      MuCLP.Problem.has_only_forall muclp && MuCLP.Problem.has_only_nu muclp'
    then fst @@ RfunProver.solve_onlynu_onlyforall ~id false timeout true muclp
    else if
      let muclp', _ =
        Qelim.elim_exists_in_preds
          (MuCLP.Util.get_dual muclp, (*ToDo*) (Map.Poly.empty, Map.Poly.empty))
      in
      MuCLP.Problem.has_only_exists muclp && MuCLP.Problem.has_only_nu muclp'
    then fst @@ RfunProver.solve_onlymu_onlyexists ~id false timeout true muclp
    else solve_onlyforall ~id timeout muclp

  let solve ?(print_sol = false) muclp =
    let open Or_error in
    optimizer >>= fun (module Optimizer : MuCLP.Optimizer.OptimizerType) ->
    Debug.print
    @@ lazy (sprintf "Input muCLP: %s\n" @@ MuCLP.Problem.str_of muclp);
    let muclp =
      Optimizer.f (*ToDo: apply later*) @@ MuCLP.Problem.simplify muclp
    in
    Debug.print
    @@ lazy (sprintf "Optimized muCLP: %s\n" @@ MuCLP.Problem.str_of muclp);
    let res = solve ~id:None (*ToDo*) muclp in
    if print_sol then
      print_endline @@ sprintf "%s" @@ MuCLP.Problem.str_of_solution res;
    Ok res

  let solve_formula ?(print_sol = false) fml =
    Debug.print @@ lazy (sprintf "Input Formula: %s" @@ Formula.str_of fml);
    let fml = Ast.Evaluator.simplify @@ Formula.univ_clos fml in
    Debug.print @@ lazy (sprintf "Simplified Formula: %s" @@ Formula.str_of fml);
    let muclp = MuCLP.Util.of_formula fml in
    Debug.print @@ lazy (sprintf "muCLP: %s" @@ MuCLP.Problem.str_of muclp);
    Debug.print @@ lazy "";
    solve ~print_sol muclp
end
