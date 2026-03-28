type list = | Nil | Cons of int * list

let rec last l =
  match l with 
  | Nil -> assert false 
  | Cons(hd, Nil) -> hd 
  | Cons(hd, tl) -> last tl

[@@@rtype"
last::(l:{l:list|pre(l)}) -> {ret:int | post(l, ret)}
"]

[@@@constraints"
_forall l:list ret:int. post(l, ret) => _is_Cons(l) && ret = _get_Cons_0(l);
"]

[@@@infer_optimized_type"
last:max(pre)
"]