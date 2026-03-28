type nat = Zero | Succ of nat

type list = | Nil | Cons of nat * list
let hd l =
  match l with 
  | Nil -> assert false 
  | Cons (a, b) -> a


[@@@rtype"
hd:: (l:{l:list| pre(l)}) -> {r:nat | post(l, r)}
"]

[@@@constraints"
_forall l:list r:nat. post(l, r) => true;
"]

[@@@infer_optimized_type"
hd:max(pre)
"]
