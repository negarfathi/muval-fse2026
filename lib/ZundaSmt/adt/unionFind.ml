(* This code is based on the MLton library set/disjoint.fun, which has the
   following copyright notice.
*)
(* Copyright (C) 1999-2005 Henry Cejtin, Matthew Fluet, Suresh
 *    Jagannathan, and Stephen Weeks.
 *
 * MLton is released under a BSD-style license.
 * See the file MLton-LICENSE for details.
 *)

open Core
open Common.Ext
open Ast.LogicOld

(*
   {v
           Root
             |
           Inner
        / .. | .. \
     Inner Inner Inner
      /|\   /|\   /|\
      ...   ...   ...
   v}

   We construct the `inverted' tree in the ML representation.
   The direction of the edges is UPWARDS.
   Starting with any ['a t] we can step directly to its parent.
   But we can't (and don't need to) start from the root and step to its children.
*)

(*
   [rank] is an upper bound on the depth of any node in the up-tree.

   Imagine an unlucky sequence of operations in which you create N
   individual [t]-values and then union them together in such a way
   that you always pick the root of each tree to union together, so that
   no path compression takes place.  If you don't take care to somehow
   balance the resulting up-tree, it is possible that you end up with one
   big long chain of N links, and then calling [representative] on the
   deepest node takes Theta(N) time.  With the balancing scheme of never
   increasing the rank of a node unnecessarily, it would take O(log N).
*)
type 'a root = {
  mutable value : 'a;
  mutable rank : int;
  mutable preds : Term.t Set.Poly.t;
  mutable his : (int, 'a * int * Term.t Set.Poly.t) Hashtbl.Poly.t;
}

type 'a t = {
  label : string;
  mutable node : 'a node;
  mutable reason : Atom.t Set.Poly.t;
  mutable his : (int, 'a node * Atom.t Set.Poly.t) Hashtbl.Poly.t;
}

and 'a node =
  | Inner of 'a t
  (* [Inner x] is a node whose parent is [x]. *)
  | Root of 'a root

let str_of_reasons reasons =
  String.bracket @@ String.concat_map_set ~sep:"; " reasons ~f:Atom.str_of

let invariant _ t =
  let rec loop t depth =
    match t.node with
    | Inner t -> loop t (depth + 1)
    | Root r -> assert (depth <= r.rank)
  in
  loop t 0

let create v label =
  let rhis = Hashtbl.Poly.create () in
  Hashtbl.Poly.add_exn rhis ~key:0 ~data:(v, 0, Set.Poly.empty);
  let node = Root { value = v; rank = 0; his = rhis; preds = Set.Poly.empty } in
  let his = Hashtbl.Poly.create () in
  Hashtbl.Poly.add_exn his ~key:0 ~data:(node, Set.Poly.empty);
  { node; his; reason = Set.Poly.empty; label }

let is_root t = match t.node with Root _ -> true | _ -> false
let is_inner t = match t.node with Inner _ -> true | _ -> false

(* invariants:
   [inner.node] = [inner_node] = [Inner t].
   [descendants] are the proper descendants of [inner] we've visited.
*)
let rec compress t ~inner_node ~inner ~descendants =
  match t.node with
  | Root r ->
      (* t is the root of the tree.
         Re-point all descendants directly to it by setting them to [Inner t].
         Note: we don't re-point [inner] as it already points there. *)
      ignore
      @@ List.fold_left descendants ~init:inner.reason ~f:(fun ret t1 ->
             (* print_endline @@ sprintf "compress:%s -> %s" t1.label t.label; *)
             let ret = Set.union ret t1.reason in
             (* print_endline @@ str_of_reasons ret; *)
             t1.node <- inner_node;
             t1.reason <- ret;
             ret);
      (t, r)
  | Inner t' as node ->
      (* print_endline @@ sprintf "%s -> %s" t.label t'.label; *)
      (* print_endline @@ "compress:" ^ t.label; *)
      compress t' ~inner_node:node ~inner:t ~descendants:(inner :: descendants)

let representative t =
  match t.node with
  | Root r -> (t, r)
  | Inner t' as node -> compress t' ~inner_node:node ~inner:t ~descendants:[]

let root t =
  match t.node with
  | Root r ->
      (* avoid tuple allocation in the fast path *)
      r
  | _ -> snd (representative t)

let preds_is_empty t =
  let r = root t in
  Set.length r.preds = 0

let update_rank (r : 'a root) rank level =
  let rhis = r.his in
  r.rank <- rank;
  Hashtbl.set rhis ~key:level ~data:(r.value, r.rank, r.preds)

let update_value (r : 'a root) value level =
  let rhis = r.his in
  r.value <- value;
  Hashtbl.set rhis ~key:level ~data:(r.value, r.rank, r.preds)

let update_preds t preds level =
  let r = root t in
  let rhis = r.his in
  r.preds <- preds;
  Hashtbl.set rhis ~key:level ~data:(r.value, r.rank, r.preds)

let get_preds t = (root t).preds
let rank t = (root t).rank
let get t = (root t).value
let set ?(level = 0) t v = update_value (root t) v level
let same_class t1 t2 = phys_equal (root t1) (root t2)

let get_reason t =
  ignore @@ root t;
  t.reason

let set_reason t level reason =
  let his = t.his in
  t.reason <- reason;
  Hashtbl.set his ~key:level ~data:(t.node, reason)

let link_to t1 t2 level =
  let his = t1.his in
  t1.node <- Inner t2;
  Hashtbl.set his ~key:level ~data:(Inner t2, t1.reason)

let backtrack_root (r : 'a root) level =
  let rhis = r.his in
  let rhis' = Hashtbl.filter_keys rhis ~f:(fun l -> l <= level) in
  if Hashtbl.length rhis' = Hashtbl.length rhis then ()
  else
    let rlist =
      List.sort ~compare:(fun (l1, _) (l2, _) -> Int.compare l2 l1)
      @@ Hashtbl.to_alist @@ rhis'
    in
    let _, (value, rank, preds) = List.hd_exn rlist in
    r.value <- value;
    r.rank <- rank;
    r.preds <- preds;
    r.his <- rhis'

let backtrack t level =
  assert (level >= 0);
  let his = t.his in
  let his' = Hashtbl.filter_keys his ~f:(fun l -> l <= level) in
  (if Hashtbl.length his = Hashtbl.length his' then ()
   else
     let hlist =
       List.sort ~compare:(fun (l1, _) (l2, _) -> Int.compare l2 l1)
       @@ Hashtbl.to_alist @@ his'
     in
     let _, (node, reason) = List.hd_exn hlist in
     t.node <- node;
     t.reason <- reason;
     t.his <- his');
  let r = snd @@ representative t in
  backtrack_root r level

let union ?(level = 0) t1 t2 reason =
  let rt1, rt2 = (get_reason t1, get_reason t2) in
  let re1, r1 = representative t1 in
  let re2, r2 = representative t2 in
  let p1, p2 = (get_preds t1, get_preds t2) in
  if phys_equal r1 r2 then ()
  else
    let n1 = r1.rank in
    let n2 = r2.rank in
    if n1 < n2 then (
      link_to re1 re2 level;
      set_reason re1 level (Set.union rt2 @@ Set.union t1.reason reason);
      set_reason t1 level (Set.union rt2 reason);
      ignore @@ root t1;
      update_preds re2 (Set.union p1 p2) level)
    else (
      link_to re2 re1 level;
      set_reason re2 level (Set.union rt1 @@ Set.union t2.reason reason);
      set_reason t2 level (Set.union rt1 reason);
      ignore @@ root t2;
      update_preds re1 (Set.union p1 p2) level;
      if n1 = n2 then update_rank r1 (r1.rank + 1) level)

let is_compressed t =
  invariant ignore t;
  match t.node with
  | Root _ -> true
  | Inner t -> ( match t.node with Root _ -> true | Inner _ -> false)

module Private = struct
  let is_compressed = is_compressed
  let rank = rank
end
