type t = Leaf | Node of t * int * t 

let rec insert (x:int) (tree3:t) =
  match tree3 with 
  | Leaf -> Node (tree3, x, tree3)
  | Node (tree1, y, tree2) -> 
    if x < y then Node ((insert y tree1), x, tree2)
    else if y < x then Node (tree1, y, insert x tree2)
    else Node(tree1, y, tree2)

(**
   let preds = [|"mem"; "ance"|]
   let post (x: int) (tree1: Unbset.t) (tree2: Unbset.t) =
   fun (u: int) ->
   (iff (mem tree2 u) (mem tree1 u && u == x))
*)

[@@@smtlib2"
(define-fun-rec mem ((tr t) (x Int)) Bool (
     ite ((_ is Node) tr) 
      (ite (= (Node#1 tr) x) true (or (mem (Node#0 tr) x) (mem (Node#2 tr) x)))
      false
))
"]

(** TODO: defination of ance? *)

[@@@rtype"
insert:: (x:{x:int| true}) -> (tree1:{tree1:t | ptree(x, t)}) -> {tree2: t | _forall u:int. 
  mem(tree2, u) <=> (mem(tree1, u) || u = x)
}
"]

[@@@infer_optimized_type"insert()"]