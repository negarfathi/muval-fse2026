open Core
open Common
open Ast.LogicOld
open EquivalenceClosure

module Debug =
  Debug.Make ((val Debug.Config.(if false then enable else disable)))

type t = EquivalenceClosure.t

let inject uc t1 t2 =
  if T_dt.is_cons t1 && T_dt.is_cons t2 then (
    Debug.print
    @@ lazy (sprintf "inject %s, %s" (Term.str_of t1) (Term.str_of t2));
    let l1, l2 = (label_of_term t1, label_of_term t2) in
    let s1, s2 = (succs_of uc t1, succs_of uc t2) in
    if
      same_class uc t1 t2 && Stdlib.(l1 = l2) && List.length s1 = List.length s2
    then
      let next_reason = Set.union (get_reason uc t1) (get_reason uc t2) in
      List.fold2_exn s1 s2 ~init:[] ~f:(fun ret u1 u2 ->
          if same_class uc u1 u2 then ret
          else (
            Debug.print
            @@ lazy
                 (sprintf "apply inject : %s = %s" (Term.str_of u1)
                    (Term.str_of u2));
            (u1, u2, next_reason) :: ret))
    else [])
  else []

let clash uc t1 t2 =
  if T_dt.is_cons t1 && T_dt.is_cons t2 then
    let l1, l2 = (label_of_term t1, label_of_term t2) in
    same_class uc t1 t2 && Stdlib.(l1 <> l2)
  else false
