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
pre(Cons(0, Cons(1, Nil)));
"]

[@@@infer_optimized_type"
last:min(post)
"]