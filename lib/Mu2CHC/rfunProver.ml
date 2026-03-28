open Core
open Common
open Common.Ext
open Common.Combinator
open Ast
open Ast.LogicOld

module Make (Cfg : Config.ConfigType) = struct
  let config = Cfg.config

  module Debug =
    Debug.Make ((val Debug.Config.(if config.verbose then enable else disable)))

  (* ... (query!0 10 (- 2))))) -> [1001, -2] *)
  (* let get_example (answer: Expr.expr) =
     let answer_str = Expr.to_string answer in
     let reg = Str.regexp "query!0 \\(\\( ?[0-9]+\\| ?(- [0-9]+)\\)*\\))*$" in
     let _ = Str.search_forward reg answer_str 0 in
     let args = String.split_on_char ' '
      @@ Str.global_replace
        (Str.regexp "(- \\([0-9]+\\))") "-\\1"
      @@ Str.matched_group 1 answer_str in
     List.map (fun arg_str ->
        int_of_string arg_str
      ) args *)

  (*TODO:mk_dtenv and fenv *)
  let dtenv = Set.Poly.empty
  let fenv = Map.Poly.empty

  let rec get_status_from_hoice_output result =
    match result with
    | [] -> failwith "no result"
    | "sat" :: _ -> MuCLP.Problem.Valid
    | "unsat" :: _ -> MuCLP.Problem.Invalid
    | "timeout" :: _ -> MuCLP.Problem.Timeout
    | msg :: tail ->
        if Str.string_match (Str.regexp "^(error \\\"$") msg 0 then
          let rec read_error errors = function
            | [] ->
                failwith
                @@ sprintf "can't read error from %s"
                @@ String.concat ~sep:"\n" result
            | "\")" :: tail -> (errors, tail)
            | error :: tail -> read_error (error :: errors) tail
          in
          let errors, tail = read_error [] tail in
          try
            let _ = get_status_from_hoice_output tail in
            raise @@ Z3.Error (String.concat ~sep:"\n" errors)
          with Z3.Error error ->
            raise @@ Z3.Error (String.concat ~sep:"\n" errors ^ "\n\n" ^ error)
        else if Str.string_match (Str.regexp "^; |===| Warning:") msg 0 then
          let rec read_warning = function
            | [] ->
                failwith
                @@ sprintf "can't read warning from %s"
                @@ String.concat ~sep:"\n" result
            | "; |===|" :: tail -> tail
            | _ :: tail -> read_warning tail
          in
          let tail = read_warning tail in
          get_status_from_hoice_output tail
        else failwith @@ sprintf "unknown result: %s" msg

  let hoice solver ctx query_funname query_bounds is_need_example timeout
      is_print_for_debug =
    (* set params *)
    let params = Z3.Params.mk_params ctx in
    Z3.Params.add_bool params
      (Z3.Symbol.mk_string ctx "print_fixedpoint_extensions")
      false;
    Z3.Fixedpoint.set_parameters solver params;
    (* make (assert (forall ((A Int)) (not (Entry_ A)))) *)
    (* (forall () query_app) if bounds = [] *)
    let arg_names =
      List.mapi ~f:(fun idx _ -> "X" ^ string_of_int idx) query_bounds
    in
    let query_assert_str =
      sprintf "(assert (forall (%s) (not (%s))))"
        (String.concat_map_list ~sep:" " ~f:(fun (var_name, (_, sort)) ->
             sprintf "(%s %s)" var_name @@ Z3.Sort.to_string
             @@ Z3Smt.Z3interface.of_sort ctx dtenv sort)
        @@ List.zip_exn arg_names query_bounds)
      @@ String.concat ~sep:" " (query_funname :: arg_names)
    in
    (* make smt string *)
    let reg_assert = Str.regexp "^(assert \\(.*\\)$" in
    let reg_forall = Str.regexp "^(forall " in
    let prefix = ref "" in
    let inputs =
      List.map ~f:(fun line ->
          if Str.string_match reg_assert line 0 then
            let matched_str = Str.matched_group 1 line in
            let line' = !prefix in
            line'
            ^
            if not @@ Str.string_match reg_forall matched_str 0 then (
              prefix := ")\n";
              "(assert (forall () " ^ matched_str)
            else (
              prefix := "";
              line)
          else line)
      @@ String.split_on_chars ~on:[ '\n' ]
      @@ Z3.Fixedpoint.to_string solver
    in
    let reg_anno = Str.regexp "(! \\| :weight.*[0-9])" in
    let inputs =
      List.map ~f:(fun s -> Str.global_replace reg_anno "" s) inputs
    in
    let inputs = inputs @ [ !prefix; query_assert_str; "(check-sat)" ] in
    let inputs =
      if is_need_example then
        ("(set-option :produce-proofs true)" :: inputs) @ [ "(get-proof)" ]
      else inputs
    in
    let inputs = inputs @ [ "(exit)" ] in
    if config.verbose && is_print_for_debug then (
      Debug.print @@ lazy (sprintf "Horn Clause (hoice):");
      Debug.print @@ lazy (sprintf "%s" @@ String.concat ~sep:"\n" inputs);
      Out_channel.flush stderr);
    let args =
      if timeout = 0 then [] else [ "--timeout"; string_of_int timeout ]
    in
    try Util.Command.sync_command "./hoice" (args @ [ "--z3"; "./z3" ]) inputs
    with _ -> Util.Command.sync_command "hoice" args inputs

  let remove_toplevel_exists fml =
    if Formula.is_exists fml then
      let bounds, fml, _ = Formula.let_exists fml in
      (fml, bounds)
    else (fml, [])

  let solve_with_z3 solver query_fun is_print_for_debug =
    try
      let z3result = Z3.Fixedpoint.query_r solver [ query_fun ] in
      if is_print_for_debug then (
        Debug.print
        @@ lazy (sprintf "Z3: %s" (Z3.Solver.string_of_status z3result));
        Debug.print @@ lazy "");
      match z3result with
      | Z3.Solver.SATISFIABLE -> (MuCLP.Problem.Valid, None)
      | Z3.Solver.UNSATISFIABLE -> (MuCLP.Problem.Invalid, None)
      | Z3.Solver.UNKNOWN -> (MuCLP.Problem.Unknown, None)
    with Z3.Error reason ->
      if is_print_for_debug then (
        Debug.print @@ lazy (sprintf "Z3: %s" reason);
        Debug.print @@ lazy "");
      (* timeout *)
      if Stdlib.(reason = "spacer canceled" || reason = "canceled") then
        (MuCLP.Problem.Timeout, None)
      else (
        Debug.print @@ lazy (sprintf "Z3 Error: %s" reason);
        Out_channel.flush stderr;
        (MuCLP.Problem.Unknown, None))

  let solve_onlymu_onlyexists ~id is_need_example timeout is_print_for_debug
      muclp =
    assert (MuCLP.Problem.has_only_exists muclp);
    assert (MuCLP.Problem.has_only_mu muclp);
    let muclp = MuCLP.Problem.move_quantifiers_to_front muclp in
    let options =
      if timeout = 0 then []
      else [ ("timeout", string_of_int (timeout * 1000)) ]
    in
    let ctx = Z3.mk_context options in
    (* make environment for preds *)
    let penv =
      List.map muclp.preds ~f:(fun pred ->
          let symbol =
            match pred.name with
            | Ident.Pvar name -> Z3.Symbol.mk_string ctx name
          in
          let arg_sorts =
            List.map ~f:(snd >> Z3Smt.Z3interface.of_sort ctx dtenv) pred.args
          in
          let func_decl =
            Z3.FuncDecl.mk_func_decl ctx symbol arg_sorts
              (Z3.Boolean.mk_sort ctx)
          in
          (pred.name, func_decl))
    in
    (* make derivations from preds *)
    let derivations =
      List.map muclp.preds ~f:(fun pred ->
          (* remove exists if body is of the form [exists x, y. P] *)
          let body, bounds = remove_toplevel_exists pred.body in
          Z3Smt.Z3interface.of_formula ~id ctx (List.rev pred.args) penv fenv
            dtenv
          @@ Formula.mk_forall_if_bounded bounds ~info:Dummy
          @@ Formula.mk_imply body @@ Formula.mk_atom
          @@ Atom.pvar_app_of_senv pred.name pred.args)
    in
    (* make a derivation and a rel from the query point *)
    let bounds, query =
      if Formula.is_exists muclp.query then
        let bounds, body, _ = Formula.let_exists muclp.query in
        (bounds, body)
      else ([], muclp.query)
    in
    let query_funname = "Entry_" in
    let query_fun =
      Z3.FuncDecl.mk_func_decl ctx
        (Z3.Symbol.mk_string ctx query_funname)
        (List.map ~f:(snd >> Z3Smt.Z3interface.of_sort ctx dtenv) bounds)
        (Z3.Boolean.mk_sort ctx)
    in
    let env = List.rev bounds in
    let query =
      Z3Smt.Z3interface.of_formula ~id ctx env penv fenv dtenv query
    in
    let query_app =
      Z3.Expr.mk_app ctx query_fun
      @@ List.rev
      @@ List.mapi ~f:(fun i ->
             snd
             >> Z3Smt.Z3interface.of_sort ctx dtenv
             >> Z3.Quantifier.mk_bound ctx i)
      @@ List.rev bounds
    in
    let derivations =
      Z3.Boolean.mk_implies ctx query query_app :: derivations
    in
    (* make solver *)
    let solver = Z3.Fixedpoint.mk_fixedpoint ctx in
    (* register preds (or relations) *)
    List.iter ~f:(snd >> Z3.Fixedpoint.register_relation solver) penv;
    Z3.Fixedpoint.register_relation solver query_fun;
    (* register derivations *)
    List.iter ~f:(fun c -> Z3.Fixedpoint.add_rule solver c None) derivations;
    (* query *)
    if is_need_example then (
      let result =
        hoice solver ctx query_funname bounds true timeout is_print_for_debug
      in
      if is_print_for_debug then
        Debug.print
        @@ lazy (sprintf "Hoice: %s\n" (String.concat ~sep:"\n" result));
      (*try*)
      let status = get_status_from_hoice_output result in
      (MuCLP.Problem.flip_solution status, None)
      (* TODO: get example *)
      (*with
        | Status.Error str ->
        Debug.print @@ sprintf "Error: Hoice: %s\n" str;
        MuCLP.Problem.Unknown, None*))
    else
      (* use hoice first *)
      try
        let result =
          hoice solver ctx query_funname bounds false timeout is_print_for_debug
        in
        let status = get_status_from_hoice_output result in
        match status with
        | MuCLP.Problem.Timeout ->
            (* use z3 *)
            (* let config = !Global.config in
               if config.verbose then
               (Debug.print @@ sprintf "Horn Clause (z3):";
               Debug.print @@ sprintf "%s" @@ Z3.Fixedpoint.to_string solver;
               Debug.print @@ sprintf "(query Entry_)";
               Debug.print @@ sprintf "(exit)";
               flush stderr); *)
            solve_with_z3 solver query_fun is_print_for_debug
        | _ ->
            if is_print_for_debug then
              Debug.print
              @@ lazy (sprintf "Hoice: %s" (String.concat ~sep:"\n" result));
            (MuCLP.Problem.flip_solution status, None)
      with
      | Util.Command.Shell_error error ->
          if is_print_for_debug then
            Debug.print @@ lazy (sprintf "Shell Error in hoice: %s\n" error);
          solve_with_z3 solver query_fun is_print_for_debug
      | Z3.Error e ->
          if is_print_for_debug then
            Debug.print @@ lazy (sprintf "Error by HoIce: %s\n" e);
          solve_with_z3 solver query_fun is_print_for_debug

  let solve_onlynu_onlyforall ~id is_need_example timeout is_print_for_debug
      muclp =
    let result, ce =
      solve_onlymu_onlyexists ~id is_need_example timeout is_print_for_debug
      @@ MuCLP.Util.get_dual muclp
    in
    (MuCLP.Problem.flip_solution result, ce)

  let solve_nobounds _ =
    (* let query = (MuCLP.Problem.query_of muclp) in
       let preds = MuCLP.Pred.elim_mu_with_rec (MuCLP.Problem.preds_of muclp) in *)
    printf "not implemented";
    assert false (* TODO *)

  (* let solve_onlymu_onlyforall muclp is_need_example = *)

  let solve_general _ =
    printf "not implemented";
    assert false (* TODO *)

  let solve ~id is_need_example is_print_for_debug muclp =
    let timeout = 0 in
    if MuCLP.Problem.has_only_exists muclp && MuCLP.Problem.has_only_mu muclp
    then
      solve_onlymu_onlyexists ~id is_need_example timeout is_print_for_debug
        muclp
    else if
      MuCLP.Problem.has_only_forall muclp && MuCLP.Problem.has_only_nu muclp
    then
      solve_onlynu_onlyforall ~id is_need_example timeout is_print_for_debug
        muclp
      (* else if MuCLP.Problem.has_only_forall muclp && MuCLP.Problem.has_only_mu muclp then
         solve_onlymu_onlyforall muclp is_need_example *)
    else if MuCLP.Problem.has_no_quantifier muclp then
      (solve_nobounds muclp, Some [])
    else solve_general muclp

  let solve_formula ~id fml =
    Debug.print @@ lazy (sprintf "Input Formula: %s" @@ Formula.str_of fml);
    let fml = Evaluator.simplify @@ Formula.univ_clos fml in
    Debug.print @@ lazy (sprintf "Input Formula: %s" @@ Formula.str_of fml);
    let muclp =
      MuCLP.Problem.move_quantifiers_to_front @@ MuCLP.Util.of_formula fml
    in
    Debug.print @@ lazy (sprintf "Input muCLP: %s" @@ MuCLP.Problem.str_of muclp);
    fst @@ solve ~id false true muclp
end
