type nat = Zero | Succ of nat

type list = | Nil | Cons of nat * list
let rec nth l i =
  match l with 
  | Nil -> assert false 
  | Cons (hd, tl) -> if i = 0 then hd else nth l (i - 1)


[@@@rtype"
nth:: (l:{l:list| true}) -> (i:{i:int | pre(l, i)}) -> {r:nat | post(l, i, r)}
"]

[@@@constraints"
_forall l:list i:int r:nat. post(l, i, r) => true;
"]

[@@@infer_optimized_type"
nth:max(pre)
"]
