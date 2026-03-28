type list = Nil | Cons of int * list

let rec length l =
  match l with
    Nil -> 0
  | Cons (_, tl) -> 1 + length tl

[@@@rtype"
length::(l:{l:list | pre(l)}) -> {ret:int | post(l, ret)}
"]

[@@@constraints"
_forall l:list ret:int. post(l, ret) => ret = 0;
"]

[@@@infer_optimized_type"
length:max(pre)
"]