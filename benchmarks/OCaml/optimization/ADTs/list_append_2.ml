type nat = Zero | Succ of nat

type list = | Nil | Cons of nat * list

let rec append l1 l2 =
  match l1 with 
  | Nil -> l2 
  | Cons(hd, tl) -> Cons(hd, append tl l2)

[@@@rtype"
append:: (l1:list) -> (l2:{l2:list | pre(l1, l2)}) -> {l3:list | post(l1, l2, l3)}
"]

[@@@constraints"
pre(Nil, Nil);
"]

[@@@infer_optimized_type"
append:min(post)
"]
