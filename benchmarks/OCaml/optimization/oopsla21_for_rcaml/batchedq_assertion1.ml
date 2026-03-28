(* module type Batchedq = sig
   type t
   val is_empty: t -> bool
   val cons: int -> t -> t
   val rev: t -> t
   val nil: t
   end

   val tail: Batchedq.t -> Batchedq.t -> (Batchedq.t * Batchedq.t)

   let tail (f: Batchedq.t) (r: Batchedq.t) =
   match f, r with
   | _ when (Batchedq.nil, (r0: Batchedq.t)) -> raise Empty
   | _ when (Batchedq.cons (x: int) (f1: Batchedq.t), (r1: Batchedq.t)) ->
    if Batchedq.is_empty f1 then Batchedq.rev r1, f1 else f1, r1


   let preds = [|"mem"; "hd"|]
   let post (f: Batchedq.t) (r: Batchedq.t) (f': Batchedq.t) (r': Batchedq.t) =
   fun (u: int) ->
   (iff (mem f' u || hd f u || mem r' u) (mem f u || mem r u))  *)

type t = Nil | Cons of int * t 

let tail is_empty rev f r =
  match f with 
  | Nil -> assert false 
  | Cons (x, f1) -> if is_empty f1 then rev r, f1 else f1, r

[@@@smtlib2"
(define-fun-rec mem ((x Int) (l t)) Bool (
     (ite ((_ is Cons) l) (ite (= (Cons#0 l) x) true (mem x (Cons#1 l))) false)
))
"]

[@@@rtype"
tail::(is_empty:(x:int -> {r:bool | p_is_empty(x, r)})) -> (rev:(x:t -> {r:t| p_rev(x, r)})) -> f:t -> r:t -> {post : (t, t) | _forall (u:int). (mem(post.0, u) || (Cons#0(f) = u) || mem(post.1, u)) <=> (mem(f, u) || mem(r, u))}
"]

[@@@infer_optimized_type"
tail(p_is_empty <_ p_rev)
"]