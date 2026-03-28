open Core
open Common
open Ast
open Ast.LogicOld

module Make (Cfg : Config.ConfigType) = struct
  let config = Cfg.config

  module Debug =
    Debug.Make ((val Debug.Config.(if config.verbose then enable else disable)))

  module RfunProver = RfunProver.Make (Cfg)

  (* tvar > -coe * a - coe * b + coe /\ tvar > -coe * a + coe * b + coe /\ tvar > coe * a - coe * b + coe /\ tvar > coe * a + coe * b + coe *)
  let rec mk_havoc_rep args tvar coe term =
    match args with
    | [] -> Formula.gt tvar term
    | (arg_tvar, arg_sort) :: tail ->
        let arg = Term.mk_var arg_tvar arg_sort in
        Formula.mk_and
          (mk_havoc_rep tail tvar coe
             (T_int.mk_add term (T_int.mk_mul (T_int.from_int (-coe)) arg)))
          (mk_havoc_rep tail tvar coe
             (T_int.mk_add term (T_int.mk_mul (T_int.from_int coe) arg)))

  let mk_havoc args tvar coe = mk_havoc_rep args tvar coe @@ T_int.from_int coe

  let solve_onlyforall_with_coe ~id timeout coe muclp =
    let module Qelim = MuCLP.Qelim.Make (struct
      let config = config.qelim
    end) in
    let muclp =
      MuCLP.Util.get_greatest_approx @@ fst
      @@ Qelim.elim_exists (muclp, (*ToDo*) (Map.Poly.empty, Map.Poly.empty))
    in
    match
      fst @@ RfunProver.solve_onlynu_onlyforall ~id false timeout true muclp
    with
    | MuCLP.Problem.Invalid -> MuCLP.Problem.Invalid
    | _ -> (
        let tvar_rec = Ident.Tvar "rec_" in
        let preds = MuCLP.Pred.elim_mu_with_rec muclp.preds tvar_rec in
        let term_rec = Term.mk_var tvar_rec T_int.SInt in
        let query =
          MuCLP.Pred.replace_app_add muclp.query term_rec T_int.SInt
        in
        let query =
          if Formula.is_forall query then
            let bounds, body, info = Formula.let_forall query in
            Formula.mk_forall_if_bounded
              ((tvar_rec, T_int.SInt) :: bounds)
              ~info
            @@ Formula.mk_imply (mk_havoc bounds term_rec coe) body
          else
            Formula.mk_forall_if_bounded [ (tvar_rec, T_int.SInt) ]
            @@ Formula.mk_imply (mk_havoc [] term_rec coe) query
        in
        let muclp = MuCLP.Problem.make preds query in
        Debug.print
        @@ lazy (sprintf "Converted muCLP: %s\n" @@ MuCLP.Problem.str_of muclp);
        match
          fst @@ RfunProver.solve_onlynu_onlyforall ~id false timeout true muclp
        with
        | MuCLP.Problem.Valid -> MuCLP.Problem.Valid
        | _ -> MuCLP.Problem.Unknown)

  let solve_onlyforall ~id timeout = solve_onlyforall_with_coe ~id timeout 10

  let solve_onlyexists ~id _ _ =
    ignore id;
    failwith "not implemented"

  let solve ~id muclp =
    let timeout = 10 in
    if MuCLP.Problem.has_only_forall muclp && MuCLP.Problem.has_only_nu muclp
    then fst @@ RfunProver.solve_onlynu_onlyforall ~id false timeout true muclp
    else if
      MuCLP.Problem.has_only_exists muclp && MuCLP.Problem.has_only_mu muclp
    then fst @@ RfunProver.solve_onlymu_onlyexists ~id false timeout true muclp
    else if MuCLP.Problem.has_only_forall muclp then
      solve_onlyforall ~id timeout muclp
    else if MuCLP.Problem.has_only_exists muclp then
      solve_onlyexists ~id timeout muclp
    else (
      printf "not implemented\n";
      assert false)

  let solve_formula ~id fml =
    Debug.print @@ lazy (sprintf "Input Formula: %s" @@ Formula.str_of fml);
    let fml = Ast.Evaluator.simplify @@ Formula.univ_clos fml in
    Debug.print @@ lazy (sprintf "Input Formula: %s" @@ Formula.str_of fml);
    let muclp = MuCLP.Util.of_formula fml in
    Debug.print @@ lazy (sprintf "Input muCLP: %s" @@ MuCLP.Problem.str_of muclp);
    solve ~id muclp
end
