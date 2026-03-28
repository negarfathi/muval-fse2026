open Core
open Ast
open Ast.LogicOld
open Z3Smt

type t = unit
type sol = Sat of model | Unsat of Atom.t list | Unkonwn

let mk_solver () = ()

let solve (_t : t) (atoms : Atom.t list) =
  let pvar_map =
    List.fold_left atoms ~init:Map.Poly.empty ~f:(fun pvar_map atom ->
        Map.Poly.add_exn pvar_map
          ~key:
            (Ident.name_of_tvar @@ Ident.mk_fresh_tvar ~prefix:(Some "Atom") ())
          ~data:atom)
  in
  match
    Z3interface.check_sat_unsat_core ~id:None (LogicOld.get_fenv ())
    @@ Map.Poly.map pvar_map ~f:Formula.mk_atom
  with
  | `Sat model -> Sat model
  | `Unsat reasons -> Unsat (List.map reasons ~f:(Map.Poly.find_exn pvar_map))
  | _ -> Unkonwn
