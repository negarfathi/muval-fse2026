type t = Nil | Cons of int * t 

let rec set_add a x =
  match x with 
  | Nil -> Cons(a, x) 
  | Cons (a1, x1) -> if a == a1 then Cons(a1, x1) else Cons (a1, set_add a x1)

(* let preds = [|"mem"; "hd"; "once"|]
   let post (x: int) (l1: Uniquel.t) (l2: Uniquel.t) =
   fun (u: int) ->
    (implies (once l1 u) (once l2 u)) && (iff (mem l2 u) (mem l1 u || u == x)) *)

[@@@smtlib2"
(define-fun-rec mem ((l t) (x Int)) Bool (
     ite ((_ is Cons) l) (ite (= (Cons#0 l) x) true (mem (Cons#1 l) x)) false
))
(define-fun-rec once ((l t) (x Int))  Bool (
     ite ((_ is Cons) l) 
      (ite (= (Cons#0 l) x) 
        (not (once (Cons#1 l) x)) 
        (once (Cons#1 l) x)) 
      false
))
"]

[@@@rtype"
set_add :: (x:{x:int|true}) -> (l1:{l1:t|pl1(x,l1)}) -> {l2:t | _forall u:int.  
  (once(l1,u) => once(l2, u)) && (mem(l2,u) <=> (mem(l1,u) || u = x))
}
"]

[@@@infer_optimized_type"
set_add()
"]