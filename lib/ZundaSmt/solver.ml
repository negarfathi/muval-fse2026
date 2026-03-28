open Core
open Common
open Common.Ext
open Common.Util
open Combinator
open Ast
open Ast.Normalizer
open Ast.LogicOld

module type SolverType = sig
  val solve :
    ?print_sol:bool -> SMT.Problem.t -> SMT.Problem.solution Or_error.t

  val inc_solve : ?print_sol:bool -> SMT.Problem.t -> SMT.Problem.incsol
end

module Make (Config : Config.ConfigType) : SolverType = struct
  let config = Config.config

  type theory_solvers = { adt : Adt.Solver.t; lia : Lia.Solver.t }

  module Debug =
    Debug.Make ((val Debug.Config.(if config.verbose then enable else disable)))

  let sat_solver =
    let open Or_error.Monad_infix in
    ExtFile.unwrap config.sat_solver >>= fun cfg ->
    Ok
      (module SATSolver.Solver.Make (struct
        let config = cfg
      end) : SATSolver.Solver.SolverType)

  let mk_theory_solvers () =
    { adt = Adt.Solver.mk_solver (); lia = Lia.Solver.mk_solver () }

  let str_of_env env =
    List.fold_left (Set.to_list env) ~init:"" ~f:(fun res (a, n) ->
        res ^ n ^ ": " ^ Atom.str_of ~priority:0 a ^ "\n")

  let str_of_atoms atoms =
    String.brace @@ String.concat_map_list ~sep:",\n" atoms ~f:Atom.str_of

  let set_name_of_atom env atom =
    let atom = Normalizer.normalize_atom atom in
    if Set.exists env ~f:(fun (a, _) -> Stdlib.(a = atom)) then env
    else if Set.exists env ~f:(fun (a, _) -> Stdlib.(Some a = Atom.negate atom))
    then env
    else
      let name = Ident.mk_fresh_pvar () |> Ident.name_of_pvar in
      Set.add env (atom, name)

  let set_name_of_patom env atom =
    if Set.exists env ~f:(fun (a, _) -> Stdlib.(a = atom)) then env
    else
      let name = Ident.mk_fresh_pvar () |> Ident.name_of_pvar in
      Set.add env (atom, name)

  let rec set_name env phi =
    let open Formula in
    (* Debug.print @@ lazy (sprintf "set formula %s" (str_of phi)); *)
    match phi with
    | Atom (Atom.True _, _) -> env
    | Atom (Atom.False _, _) -> env
    | Atom ((App (Predicate.Var (_, _), _, _) as atom), _) ->
        set_name_of_patom env atom
    | Atom ((App (Predicate.Psym _, [ _ ], _) as atom), _) ->
        set_name_of_patom env atom
    | Atom (atom, _) -> set_name_of_atom env atom
    | BinaryOp (And, phi1, phi2, _) -> set_name (set_name env phi1) phi2
    | BinaryOp (Or, phi1, phi2, _) -> set_name (set_name env phi1) phi2
    | UnaryOp (Not, Atom (Atom.True _, _), _) -> env
    | UnaryOp (Not, Atom (Atom.False _, _), _) -> env
    | UnaryOp (Not, UnaryOp (Not, phi1, _), _) -> set_name env phi1
    | UnaryOp (Not, phi1, _) -> set_name env phi1
    | Bind (_, _, phi, _) -> set_name env phi
    | _ -> failwith @@ sprintf "formula %s can't be " @@ str_of phi

  let rec name_of_atom env atom =
    let atom = Normalizer.normalize_atom atom in
    match Set.find env ~f:(fun (a, _) -> Stdlib.(a = atom)) with
    | Some (_, n) -> (n, true)
    | None -> (
        match
          Set.find env ~f:(fun (a, _) -> Stdlib.(Some a = Atom.negate atom))
        with
        | Some (_, n) -> (n, false)
        | None -> pvar_of_pvar_eq env atom)

  and pvar_of_pvar_eq env = function
    | Atom.App
        ( Predicate.Psym T_bool.Eq,
          [ Term.FunApp (T_bool.Formula (Formula.Atom (a1, _)), [], _); t2 ],
          _ )
      when T_bool.is_true t2 ->
        name_of_atom env a1
    | Atom.App
        ( Predicate.Psym T_bool.Eq,
          [ Term.FunApp (T_bool.Formula (Formula.Atom (a1, _)), [], _); t2 ],
          _ )
      when T_bool.is_false t2 ->
        let name, assign = name_of_atom env a1 in
        (name, not assign)
    | a ->
        Debug.print @@ lazy (sprintf "unknown atom: %s" @@ Atom.str_of a);
        ("", false)

  let atom_of_name env name =
    match Set.find env ~f:(snd >> Stdlib.( = ) name) with
    | Some (a, _) -> Some a
    | None -> None

  let prop_atom_of env = function
    | Atom.True _ -> PropLogic.Formula.mk_true ()
    | Atom.False _ -> PropLogic.Formula.mk_true ()
    | atom ->
        let name, sign = name_of_atom env atom in
        if sign then PropLogic.Formula.mk_atom name
        else PropLogic.Formula.(mk_neg @@ mk_atom name)

  (* let rec prop_formula_of env phi =
     let open Formula in
     match phi with
     | Atom (Atom.True _, _) -> PropLogic.Formula.mk_true ()
     | Atom (Atom.False _, _) -> PropLogic.Formula.mk_false ()
     | Atom (atom, _) -> prop_atom_of env atom
     | BinaryOp (And, phi1, phi2, _) -> PropLogic.Formula.mk_and (prop_formula_of env phi1) (prop_formula_of env phi2)
     | BinaryOp (Or, phi1, phi2, _) -> PropLogic.Formula.mk_or (prop_formula_of env phi1) (prop_formula_of env phi2)
     | UnaryOp (Not, Atom (Atom.True _, _), _) -> PropLogic.Formula.mk_false ()
     | UnaryOp (Not, Atom (Atom.False _, _), _) -> PropLogic.Formula.mk_true ()
     | UnaryOp (Not, UnaryOp (Not, phi1, _), _) -> prop_formula_of env phi1
     | UnaryOp (Not, phi1, _) -> PropLogic.Formula.mk_neg (prop_formula_of env phi1)
     | _ -> failwith @@ sprintf "formula %s can't be translated to prop_formula" @@ str_of phi *)

  (*上のコードと同じ、foldを適用するバージョン*)
  let prop_formula_of env phi =
    Formula.fold phi
      ~f:
        (object
           method fatom atom = prop_atom_of env atom
           method fand p1 p2 = PropLogic.Formula.mk_and p1 p2
           method for_ p1 p2 = PropLogic.Formula.mk_or p1 p2

           method fimply p1 p2 =
             PropLogic.Formula.mk_or (PropLogic.Formula.mk_neg p1) p2

           method fiff p1 p2 =
             PropLogic.Formula.mk_and
               (PropLogic.Formula.mk_or (PropLogic.Formula.mk_neg p1) p2)
               (PropLogic.Formula.mk_or (PropLogic.Formula.mk_neg p2) p1)

           method fxor p1 p2 =
             PropLogic.Formula.mk_or
               (PropLogic.Formula.mk_and (PropLogic.Formula.mk_neg p1) p2)
               (PropLogic.Formula.mk_and (PropLogic.Formula.mk_neg p2) p1)

           method fnot p1 = PropLogic.Formula.mk_neg p1

           method fbind _ _ _ =
             failwith
             @@ sprintf "formula %s can't be translated to prop_formula"
             @@ Formula.str_of phi

           method fletrec _ _ =
             failwith
             @@ sprintf "formula %s can't be translated to prop_formula"
             @@ Formula.str_of phi

           method flet _ _ _ _ =
             failwith @@ sprintf "'LetFormula' is not supported yet"
        end)

  let cnf_of env phi =
    let open PropLogic.Formula in
    Debug.print @@ lazy "==========>Change to prop formula.";
    let prop_formula = prop_formula_of env phi in
    Debug.print @@ lazy (sprintf "prop formula:%s" @@ str_of prop_formula);
    prop_formula |> nnf_of |> tseitinize

  (* let cnf_of_assigns env assigns=
     List.fold_left assigns ~init:(Set.Poly.empty, Set.Poly.empty)
     ~f:(fun (neg, pos) (name, sign) ->
        match atom_of_name env name with
        | Some atom ->
          if Atom.is_pvar_app atom then (neg, pos)
          else if sign then (Set.add neg name, pos)
          else (neg, Set.add pos name)
        | None -> (neg, pos))
     |> Set.Poly.singleton *)

  let atoms_of_assings env assigns =
    List.fold_left assigns
      ~init:([], ([], []))
      ~f:(fun (iret, (pa, na)) (name, is_pos) ->
        match atom_of_name env name with
        | Some atom ->
            if Atom.is_pvar_app atom then
              (* Debug.print @@ lazy (sprintf "atom [%s] is pvar app" (Atom.str_of atom)); *)
              if is_pos then (iret, (atom :: pa, na))
              else (iret, (pa, atom :: na))
            else if is_pos then (atom :: iret, (pa, na))
            else
              ( (Normalizer.normalize_atom
                @@
                match Atom.negate atom with
                | None -> failwith "[atoms_of_assings]"
                | Some neg_atom -> neg_atom)
                :: iret,
                (pa, na) )
        | None -> (iret, (pa, na)))

  let term_is_sbool term =
    let sort = Term.sort_of term in
    Stdlib.(sort = T_bool.SBool)

  let term_is_num term =
    let sort = Term.sort_of term in
    Stdlib.(sort = T_int.SInt) || Stdlib.(sort = T_real.SReal)

  let model_of_assigns assigns env =
    List.fold_left assigns ~init:[] ~f:(fun ret (name, sign) ->
        match atom_of_name env name with
        | Some atom ->
            if Atom.is_pvar_app atom || T_dt.is_is_cons atom then
              let pvar, _, _, _ = Atom.let_pvar_app atom in
              ( (Ident.pvar_to_tvar pvar, T_bool.SBool),
                Some (Term.of_value (get_dtenv ()) (Value.Bool sign)) )
              :: ret
            else ret
        | None -> ret)

  let rec remove_eq phi =
    let formula_of_sbool_term term =
      match term with
      | Term.FunApp (T_bool.Formula phi, [], _) -> remove_eq phi
      | Term.Var (tvar, T_bool.SBool, _) ->
          Formula.mk_atom @@ Atom.mk_pvar_app (Ident.tvar_to_pvar tvar) [] []
      | _ -> failwith "not sbool term"
    in
    let no_eq_formula_of_atom = function
      | Atom.App (Predicate.Psym T_bool.Neq, [ t1; t2 ], _) as atom ->
          if term_is_sbool t1 then
            Formula.or_of
              [
                Formula.mk_and
                  (Formula.mk_neg @@ formula_of_sbool_term t1)
                  (formula_of_sbool_term t2);
                Formula.mk_and (formula_of_sbool_term t1)
                  (Formula.mk_neg @@ formula_of_sbool_term t2);
              ]
          else if term_is_num t1 then
            Formula.or_of [ Formula.gt t1 t2; Formula.lt t1 t2 ]
          else Formula.mk_atom atom
      | Atom.App (Predicate.Psym T_bool.Eq, [ t1; t2 ], _) as atom ->
          if term_is_sbool t1 then
            Formula.and_of
              [
                Formula.mk_or
                  (Formula.mk_neg @@ formula_of_sbool_term t1)
                  (formula_of_sbool_term t2);
                Formula.mk_or (formula_of_sbool_term t1)
                  (Formula.mk_neg @@ formula_of_sbool_term t2);
              ]
          else if term_is_num t1 then
            Formula.and_of [ Formula.geq t1 t2; Formula.leq t1 t2 ]
          else Formula.mk_atom atom
      | Atom.App (_, _, _) as atom -> Formula.mk_atom atom
      | atom -> Formula.mk_atom atom
    in
    let open Formula in
    match phi with
    | Atom (atom, _) -> no_eq_formula_of_atom atom
    | UnaryOp (Not, phi1, info) -> UnaryOp (Not, remove_eq phi1, info)
    | BinaryOp (op, phi1, phi2, info) ->
        BinaryOp (op, remove_eq phi1, remove_eq phi2, info)
    | Bind (binder, senv, phi, info) -> Bind (binder, senv, remove_eq phi, info)
    | _ -> failwith (sprintf "Can't remove eq from formula:%s" @@ str_of phi)

  let preprocessor ?(rmeq = false) phi =
    Debug.print @@ lazy "==========<\tinit\t>==========";
    Debug.print @@ lazy ("input: \n" ^ Formula.str_of phi);
    let phi = Formula.elim_ite phi in
    Debug.print @@ lazy ("if removed: \n" ^ Formula.str_of phi);
    let phi = normalize phi in
    Debug.print @@ lazy ("normalized: \n" ^ Formula.str_of phi);
    if rmeq then (
      let phi = remove_eq phi in
      Debug.print @@ lazy ("uneq removed: \n" ^ Formula.str_of phi);
      let phi = Evaluator.simplify phi in
      Debug.print @@ lazy ("simplified: \n" ^ Formula.str_of phi);
      let phi = remove_eq phi in
      Debug.print @@ lazy ("uneq removed: \n" ^ Formula.str_of phi);
      phi)
    else phi

  let rec check_sat ?(print_sol = true) ?(env = Set.Poly.empty) phi =
    let _ = apply_adt in
    let _ = apply_lia in
    let rec inner_solve env inc_solve cnf ts level =
      let prbm =
        SAT.Problem.make @@ Set.to_list
        @@ Set.Poly.map cnf ~f:(fun (neg, pos) ->
               (Set.to_list neg, Set.to_list pos))
      in
      Debug.print @@ lazy "================ Start SAT solver ==================";
      Debug.print @@ lazy ("sat problem:\n" ^ SAT.Problem.str_of prbm);
      Debug.print @@ lazy (sprintf "size : %d" (Set.length cnf));
      match inc_solve prbm with
      | SAT.Problem.IncSat (solution, inc_solve') ->
          Debug.print @@ lazy (SAT.Problem.str_of_assign solution);
          let atoms, pvars = atoms_of_assings env solution in
          Debug.print
          @@ lazy (sprintf "assigned atoms:\n%s" @@ str_of_atoms atoms);
          if List.length atoms > 0 then
            apply_lia inner_solve inc_solve' ts print_sol env pvars level atoms
          else
            Ok
              (SMT.Problem.IncSat
                 (model_of_assigns solution env, check_sat ~print_sol ~env))
      | SAT.Problem.IncUnsat ->
          Ok (SMT.Problem.IncUnsat (check_sat ~print_sol ~env))
      | SAT.Problem.IncUnknown ->
          Ok (SMT.Problem.IncUnknown (check_sat ~print_sol ~env))
    in
    let phi' = preprocessor phi in
    if Formula.is_atom phi' && Stdlib.(phi' = Formula.mk_false ()) then (
      if print_sol then
        print_endline (SMT.Problem.str_of_solution @@ SMT.Problem.Unsat);
      SMT.Problem.IncUnsat (check_sat ~env ~print_sol))
    else
      let ret =
        let _ = Debug.print @@ lazy "===========>create prop env." in
        let env' = set_name env phi' in
        Debug.print @@ lazy (str_of_env env');
        let open Or_error.Monad_infix in
        sat_solver >>= fun sat_solver ->
        let (module SatSolver : SATSolver.Solver.SolverType) = sat_solver in
        let inc_solve = SatSolver.incremental_solve ~print_sol:config.verbose in
        inner_solve env' inc_solve (cnf_of env' phi') (mk_theory_solvers ()) 0
      in
      match ret with
      | Ok sol -> sol
      | _ -> SMT.Problem.IncUnknown (check_sat ~env ~print_sol)

  and apply_adt inner_solve inc_solve ts print_sol env pvars level atoms =
    let adt = ts.adt in
    let adt = Adt.Solver.set_pvar_atoms ~print:Debug.print adt pvars 1 in
    match Adt.Solver.solve adt atoms 1 with
    | Adt.Solver.Sat (_, model) ->
        Debug.print @@ lazy "adt sat";
        Ok (SMT.Problem.IncSat (model, check_sat ~print_sol ~env))
    | Adt.Solver.Unsat (adt, reason) ->
        Debug.print @@ lazy "adt unsat";
        let adt' = Adt.Solver.backtrack adt level in
        inner_solve env inc_solve
          (cnf_of env @@ Evaluator.simplify @@ Formula.mk_neg @@ Formula.and_of
          @@ List.map reason ~f:Formula.mk_atom)
          { ts with adt = adt' } level
    | Adt.Solver.Split (adt', phi') ->
        Debug.print @@ lazy ("adt split:" ^ Formula.str_of phi');
        let env' = set_name env phi' in
        inner_solve env' inc_solve (cnf_of env' phi') { ts with adt = adt' }
          (level + 1)

  and apply_lia inner_solve inc_solve ts print_sol env _pvars level atoms =
    let lia = ts.lia in
    match Lia.Solver.solve lia atoms with
    | Lia.Solver.Sat model ->
        Debug.print @@ lazy "lia sat";
        Ok (SMT.Problem.IncSat (model, check_sat ~print_sol ~env))
    | Lia.Solver.Unsat reason ->
        Debug.print @@ lazy "lia unsat";
        inner_solve env inc_solve
          (cnf_of env @@ Evaluator.simplify @@ Formula.mk_neg @@ Formula.and_of
          @@ List.map reason ~f:Formula.mk_atom)
          ts level
    | _ -> assert false

  let print_solution sol =
    let open SMT.Problem in
    let sol' =
      match sol with
      | IncUnsat _ -> Unsat
      | IncUnknown _ -> Unknown
      | IncSat (model, _) -> Sat model
    in
    print_endline @@ SMT.Problem.str_of_solution sol'

  let solve ?(print_sol = true) phi =
    let open SMT.Problem in
    let z3_env = Z3Smt.Z3interface.z3_dtenv_of_formula (Z3.mk_context []) phi in
    Debug.print @@ lazy (Z3Smt.Z3interface.str_of_z3_env z3_env);
    let ret = check_sat phi ~print_sol in
    if print_sol then print_solution ret;
    match ret with
    | IncUnsat _ -> Ok Unsat
    | IncUnknown _ -> Ok Unknown
    | IncSat (model, _) -> Ok (Sat model)

  let inc_solve ?(print_sol = true) phi =
    let ret = check_sat phi ~print_sol in
    if print_sol then print_solution ret;
    ret
end
