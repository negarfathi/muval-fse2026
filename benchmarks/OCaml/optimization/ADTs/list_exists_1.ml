type list = | Nil | Cons of int * list

let rec exists f l =
  match l with 
  | Nil -> false
  | Cons (a, b) -> if f a then true else exists f b

[@@@rtype"
exists:: (f:(x:int) -> {y:bool | pf(x, y)}) -> (l:{l:list| pre(l)}) -> {r:bool | post(l, r)}
"]

[@@@constraints"
_forall l:list. _is_Cons(l) => pre(l);
_forall l:list r:bool. post(l, r) => r = false;
"]

[@@@infer_optimized_type"
exists:max(pf)
"]
