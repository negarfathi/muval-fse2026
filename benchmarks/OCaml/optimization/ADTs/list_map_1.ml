type list = | Nil | Cons of int * list
let rec map f l =
  match l with 
  | Nil -> Nil
  | Cons (a, b) -> Cons (f a, map f b)


[@@@rtype"
map:: (f:(x:int) -> {y:int | pf(x, y)}) -> (l:{l:list| true}) -> {r:list | post(l, r)}
"]

[@@@constraints"
_forall l:list r:list. _is_Cons(r) && post(l, r) => _get_Cons_0(r) = 0;
"]

[@@@infer_optimized_type"
map:max(pf)
"]
