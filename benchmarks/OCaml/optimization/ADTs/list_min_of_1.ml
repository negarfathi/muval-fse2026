type list = | Nil | Cons of int * list

let min (x:int) (y:int) = if x < y then x else y
let rec min_of l =
  match l with 
  | Nil -> assert false
  | Cons (a, Nil) -> a
  | Cons (a, tl) -> min a (min_of l)

[@@@rtype"
min_of::(l:{l:list | pre(l)}) -> {ret:int | false}
"]

[@@@infer_optimized_type"
min_of:max(pre)
"]