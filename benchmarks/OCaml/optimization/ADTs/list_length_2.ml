type list = Nil | Cons of int * list

let rec length l =
  match l with
    Nil -> 0
  | Cons (_, tl) -> 1 + length tl

[@@@rtype"
length::(l:{l:list | pre(l)}) -> {ret:int | post(l, ret)}
"]

[@@@constraints"
pre(Cons(0, Cons(0, Nil)));
"]

[@@@infer_optimized_type"
length:min(post)
"]