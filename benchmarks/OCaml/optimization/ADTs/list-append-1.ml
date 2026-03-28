type nat = Zero | Succ of nat

type list = | Nil | Cons of nat * list

let rec append l1 l2 =
  match l1 with 
  | Nil -> l2 
  | Cons(hd, tl) -> Cons(hd, append tl l2)

[@@@infer_optimized_type"
append(append[:0] <_ append[:1], append[:1] <_ append[:2])
"]
