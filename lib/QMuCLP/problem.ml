open Core
open Common
open Common.Ext
open Ast
open Ast.LogicOld

(* ToDo *)
module Debug = Debug.Make ((val Debug.Config.disable))

type kind = LB | UB

type query = {
  bounds : sort_env_list;
  left : Formula.t option;
  kind : kind;
  name : Ident.tvar;
  args : Term.t list;
  bound : Term.t;
}

type t = { preds : Pred.t list; query : query }
type solution = Valid | Invalid | Unknown | Timeout

let make preds query = { preds; query }
let flip_solution = function Valid -> Invalid | Invalid -> Valid | x -> x

let term_of_query query =
  Term.mk_fvar_app query.name
    (List.map query.args ~f:(Fn.const T_real.SReal))
    T_real.SReal query.args

(*let formula_of_query query =
  match query.kind with
  | LB -> Formula.leq query.bound (term_of_query query)
  | UB -> Formula.leq (term_of_query query) query.bound*)

let formula_of_query query =
  let right =
    (match query.kind with LB -> Formula.leq | UB -> Formula.geq)
      query.bound (term_of_query query)
  in
  let body =
    match query.left with
    | None -> right
    | Some left -> Formula.mk_imply left right
  in
  if List.is_empty query.bounds then body else Formula.forall query.bounds body

let str_of_solution = function
  | Valid -> "valid"
  | Invalid -> "invalid"
  | Unknown -> "unknown"
  | Timeout -> "timeout"

let str_of qmuclp =
  sprintf "%s\ns.t.\n%s"
    (Formula.str_of @@ formula_of_query qmuclp.query)
    (Pred.str_of_list qmuclp.preds)

let has_only_mu qmuclp =
  List.for_all ~f:(fun pred -> Stdlib.( = ) pred.kind Predicate.Mu) qmuclp.preds

let has_only_nu qmuclp =
  List.for_all ~f:(fun pred -> Stdlib.( = ) pred.kind Predicate.Nu) qmuclp.preds

let size_of qmuclp = List.length qmuclp.preds

let simplify_query query =
  { query with bound = Evaluator.simplify_term query.bound }

let simplify qmuclp =
  {
    preds = List.map ~f:Pred.simplify qmuclp.preds;
    query = simplify_query qmuclp.query;
  }
