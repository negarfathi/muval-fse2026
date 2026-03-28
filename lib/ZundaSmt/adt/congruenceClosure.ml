open Core
open Common
open Common.Ext
open Ast.LogicOld
open EquivalenceClosure

module Debug =
  Debug.Make ((val Debug.Config.(if false then enable else disable)))

type t = EquivalenceClosure.t

let congruent cc t1 t2 =
  Debug.print
  @@ lazy (sprintf "congruent (%s, %s)" (Term.str_of t1) (Term.str_of t2));
  let s1, s2 = (succs_of cc t1, succs_of cc t2) in
  let l1, l2 = (label_of_term t1, label_of_term t2) in
  Debug.print
  @@ lazy
       (sprintf "%s's succs:\t%s" (String.paren l1)
       @@ String.bracket
       @@ String.concat_map_list ~sep:"; " s1 ~f:Term.str_of);
  Debug.print
  @@ lazy
       (sprintf "%s's succs:\t%s" (String.paren l2)
       @@ String.bracket
       @@ String.concat_map_list ~sep:"; " s2 ~f:Term.str_of);
  Stdlib.(l1 = l2)
  && List.length s1 = List.length s2
  && List.for_all2_exn s1 s2 ~f:(same_class cc)

let cal_cong_reason cc t1 t2 =
  assert (congruent cc t1 t2);
  let succs1, succs2 = (succs_of cc t1, succs_of cc t2) in
  List.fold2_exn succs1 succs2 ~init:Set.Poly.empty ~f:(fun ret t11 t21 ->
      Set.union ret @@ Set.union (get_reason cc t11) (get_reason cc t21))

let merge ~print cc t1 t2 level reason =
  if same_class cc t1 t2 then []
  else
    let p1, p2 = (preds_of cc t1, preds_of cc t2) in
    Debug.print
    @@ lazy (sprintf "merge (%s, %s)" (Term.str_of t1) (Term.str_of t2));
    Debug.print
    @@ lazy
         (sprintf "%s's preds:\t%s" (String.paren @@ Term.str_of t1)
         @@ String.bracket
         @@ String.concat_map_set ~sep:"; " p1 ~f:Term.str_of);
    Debug.print
    @@ lazy
         (sprintf "%s's preds:\t%s" (String.paren @@ Term.str_of t2)
         @@ String.bracket
         @@ String.concat_map_set ~sep:"; " p2 ~f:Term.str_of);
    union ~print cc t1 t2 reason ~level;
    Debug.print
    @@ lazy (sprintf "all classes after merge:\n%s" @@ all_classes_str_of cc);
    let preds = Set.union p1 p2 in
    Set.fold preds ~init:[] ~f:(fun ret u1 ->
        Set.fold preds ~init:ret ~f:(fun ret u2 ->
            if (not (same_class cc u1 u2)) && congruent cc u1 u2 then
              (u1, u2, cal_cong_reason cc u1 u2) :: ret
            else ret))

(* let cal_cc cc level =
   let rec aux q =
    match Queue.dequeue q with
    | None -> ()
    | Some (t1, t2) ->
      let nexts = merge cc t1 t2 level in
      Queue.enqueue_all q nexts;
      aux q
   in
   let eqs = get_eqs cc level in
   let deqs = get_deqs cc in
   let q = Queue.of_list @@ List.map eqs ~f:(fun (t1, t2,_) -> t1, t2) in
   aux q;
   List.iter deqs ~f:(fun (t1, t2, _) -> if same_class cc t1 t2 then failwith "confit") *)
