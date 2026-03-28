type nat = Zero | Succ of nat

type list = | Nil | Cons of nat * list
let tl l =
  match l with 
  | Nil -> assert false 
  | Cons (a, b) -> b


[@@@rtype"
tl:: (l:{l:list| pre(l)}) -> {r:list | post(l, r)}
"]

[@@@constraints"
_forall l:list r:list. post(l, r) => true;
"]

[@@@infer_optimized_type"
tl:max(pre)
"]
