type t = Nil | Cons of int * t 

let rec mem x l =
  match l with 
  | Nil -> false 
  | Cons (x1, l1) -> if x = x1 then true else mem x l1

[@@@rtype"
mem::(x:int) -> (l:t) -> {sol:bool | p(x,l,sol)}
"]

[@@@infer_optimized_type"mem"]