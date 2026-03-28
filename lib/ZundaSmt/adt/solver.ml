open Core
open Common
open EquivalenceClosure
open BidirectionalClosure
open Ast
open Ast.LogicOld

module Debug =
  Debug.Make ((val Debug.Config.(if false then enable else disable)))

type sol =
  | Sat of t * model
  | Unsat of t * Atom.t list
  | Split of t * Formula.t

type t = BidirectionalClosure.t

let mk_solver () = make ()

let str_of_reasons reasons =
  Set.fold reasons ~init:"unsat reasons:[" ~f:(fun ret atom ->
      ret ^ Atom.str_of atom ^ ";")
  ^ "]"

let set_pvar_atoms bc (pa, na) level =
  let pt = List.map pa ~f:T_bool.of_atom in
  let nt = List.map na ~f:T_bool.of_atom in
  let atoms =
    List.map pt ~f:(fun a -> T_bool.mk_eq a (T_bool.mk_true ()))
    @ List.map nt ~f:(fun a -> T_bool.mk_eq a (T_bool.mk_false ()))
  in
  add_atoms bc atoms level

let get_dt_cons =
  Set.find ~f:(fun t -> T_dt.is_cons t && (T_dt.is_dt @@ Term.sort_of t))

let get_cons_term = Set.find ~f:T_dt.is_cons

(*funcs of phase2*)

(*split to codt/dt/other classes *)
let split_classes bc =
  let classes = all_classes_of bc in
  Set.fold classes ~init:([], [], []) ~f:(fun (codts, dts, others) c ->
      match
        Set.find c ~f:(fun t ->
            (T_dt.is_codt @@ Term.sort_of t) || (T_dt.is_dt @@ Term.sort_of t))
      with
      | Some t when T_dt.is_dt @@ Term.sort_of t -> (codts, c :: dts, others)
      | Some t when T_dt.is_codt @@ Term.sort_of t -> (c :: codts, dts, others)
      | _ -> (codts, dts, c :: others))

let rec acyclic bc term his =
  match List.find his ~f:(fun ht -> same_class bc ht term) with
  | Some ht -> Error (Set.union (get_reason bc term) (get_reason bc ht))
  | None -> (
      match get_dt_cons @@ class_of bc @@ get_unionfind bc term with
      | Some (Term.FunApp (_, ts, _)) ->
          List.fold_left ts ~init:(Ok ()) ~f:(fun ret term' ->
              match ret with
              | Error reason -> Error (Set.union reason (get_reason bc term))
              | Ok _ -> acyclic bc term' (term :: his))
      | _ -> Ok ())

let rec partition bc codtcs last_parts =
  let in_same_part t1 t2 =
    List.fold_left last_parts ~init:false ~f:(fun ret part ->
        if ret then ret
        else
          List.exists part ~f:(fun c -> in_class c t1)
          && List.exists part ~f:(fun c -> in_class c t2))
  in
  let compare_args ts1 ts2 =
    List.fold2_exn ts1 ts2 ~init:true ~f:(fun ret t1 t2 ->
        if not ret then ret
        else if same_class bc t1 t2 then true
        else in_same_part t1 t2)
  in
  let compare_codtc codtc1 codtc2 =
    match (get_cons_term codtc1, get_cons_term codtc2) with
    | ( Some (Term.FunApp (T_dt.DTCons (name1, _, _), ts1, _)),
        Some (Term.FunApp (T_dt.DTCons (name2, _, _), ts2, _)) ) ->
        Stdlib.(name1 = name2) && compare_args ts1 ts2
    | Some _, Some _ | _, _ -> false
  in
  let rec add_codtc parts codtc =
    match parts with
    | [] -> [ [ codtc ] ]
    | part1 :: tl ->
        let codtc1 = List.hd_exn part1 in
        if compare_codtc codtc1 codtc then List.cons (List.cons codtc part1) tl
        else part1 :: add_codtc tl codtc
  in
  let new_parts =
    List.fold_left codtcs ~init:[] ~f:(fun ret codtc -> add_codtc ret codtc)
  in
  if List.length new_parts > List.length last_parts then
    partition bc codtcs new_parts
  else new_parts

let unique bc codtcs =
  let cal_reason bc c =
    match get_cons_term c with
    | Some (Term.FunApp (T_dt.DTCons _, ts, _) as cons) ->
        List.fold_left ts ~init:(get_reason bc cons) ~f:(fun ret t ->
            Set.union ret @@ get_reason bc t)
    | Some _ -> Set.Poly.empty
    | None -> Set.Poly.empty
  in
  let parts = partition bc codtcs [ codtcs ] in
  List.fold_left parts ~init:[] ~f:(fun ret part ->
      if List.length part < 2 then ret
      else
        let c1 = List.hd_exn part in
        let reason1 = cal_reason bc c1 in
        List.foldi part ~init:[] ~f:(fun i ret c ->
            if i < 1 then ret
            else
              ( root_of_class bc c,
                root_of_class bc c1,
                Set.union reason1 @@ cal_reason bc c )
              :: ret))

let rec phase2 bc level =
  Debug.print @@ lazy "phase2";
  let codtcs, dtcs, _ = split_classes bc in
  match
    List.map dtcs ~f:(fun cla -> Set.to_list cla |> List.hd_exn |> root_of bc)
    |> List.fold ~init:(Ok ()) ~f:(fun ret term ->
           match ret with Error _ -> ret | Ok _ -> acyclic bc term [])
  with
  | Error reasons -> Error reasons
  | Ok _ -> (
      let nexts = unique bc codtcs in
      if List.length nexts = 0 then Ok ()
      else
        match combine bc (Queue.of_list nexts) level with
        | Error reasons -> Error reasons
        | Ok _ -> phase2 bc level)

let is_splited bc = function
  | Term.FunApp (T_dt.DTSel _, [ term ], _) | term ->
      Set.exists bc.splited ~f:(Stdlib.( = ) term)

let mk_branch term =
  let aux dt term =
    let conses = Datatype.conses_of dt in
    List.fold_left conses ~init:[] ~f:(fun ret cons ->
        let sels = Datatype.sels_of_cons cons in
        let name = Datatype.name_of_cons cons in
        let ts =
          List.map sels ~f:(fun sel ->
              let name = Datatype.name_of_sel sel in
              T_dt.mk_sel dt name term)
        in
        (Formula.eq term @@ T_dt.mk_cons dt name ts) :: ret)
  in
  match term with
  | Term.FunApp (T_dt.DTSel (_, dt, _), [ t ], _) -> (t, aux dt t)
  | Term.FunApp (T_dt.DTCons (_, _, dt), _, _) -> (term, aux dt term)
  | Term.Var (_, T_dt.SDT dt, _) -> (term, aux dt term)
  | _ -> (term, [])

(*funcs of phase3*)

let split bc =
  Debug.print @@ lazy "split";
  Set.fold (vertexs_of bc) ~init:(bc, Set.Poly.empty)
    ~f:(fun (t, ret) (term, _) ->
      Debug.print
      @@ lazy (sprintf "Can be splited? -> check term [%s]" (Term.str_of term));
      if
        (not (is_splited t term))
        && ((T_dt.is_finite_dt @@ Term.sort_of term) || T_dt.is_sel term)
      then (
        Debug.print
        @@ lazy (sprintf "Term [%s] can be splited." (Term.str_of term));
        let splited_term, branch = mk_branch term in
        if List.length branch = 0 then (t, ret)
        else
          ( { t with splited = Set.add t.splited splited_term },
            Set.add ret (Formula.or_of branch) ))
      else (t, ret))

let single bc =
  Debug.print @@ lazy "single";
  let codtcs, _, _ = split_classes bc in
  List.fold codtcs ~init:[] ~f:(fun ret codtc1 ->
      List.fold codtcs ~init:ret ~f:(fun ret codtc2 ->
          let r1, r2 = (root_of_class bc codtc1, root_of_class bc codtc2) in
          let s1, s2 = (Term.sort_of r1, Term.sort_of r2) in
          if same_class bc r1 r2 then ret
          else if Stdlib.(s1 <> s2) then ret
          else if Datatype.is_singleton s1 then (r1, r2, Set.Poly.empty) :: ret
          else ret))

let rec phase3 bc level =
  Debug.print @@ lazy "phase3";
  match single bc with
  | [] ->
      let t, ret = split bc in
      if Set.length ret = 0 then Sat (t, [])
      else Split (t, Evaluator.simplify @@ Formula.and_of @@ Set.to_list ret)
  | nexts -> (
      match combine bc (Queue.of_list nexts) level with
      | Error reasons -> Unsat (bc, Set.to_list reasons)
      | Ok _ -> (
          match phase2 bc level with
          | Error reasons -> Unsat (bc, Set.to_list reasons)
          | Ok _ -> phase3 bc level))

let backtrack bc level =
  Debug.print @@ lazy "================ adt backtrack ==================";
  Debug.print @@ lazy (sprintf "before backtrack: %d" bc.level);
  Debug.print @@ lazy (all_classes_str_of bc);
  let t' = EquivalenceClosure.backtrack bc level in
  Debug.print @@ lazy (sprintf "after backtrack: %d" level);
  Debug.print @@ lazy (all_classes_str_of t');
  t'

let mk_unsat bc reasons =
  Debug.print @@ lazy (sprintf "reasons size:%d" (Set.length reasons));
  Debug.print @@ lazy (str_of_reasons reasons);
  Unsat (bc, Set.to_list reasons)

let solve bc atoms level =
  Debug.print @@ lazy "================ Start adt solver ==================";
  let t = add_atoms ~print:Debug.print bc atoms level in
  match cal_bc t level with
  | Ok () -> (
      match phase2 t level with
      | Ok () -> phase3 t level
      | Error reasons -> mk_unsat t reasons)
  | Error reasons -> mk_unsat t reasons
