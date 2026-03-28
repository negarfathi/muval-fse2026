type nat = Zero | Succ of nat

type list = | Nil | Cons of nat * list

let rec map (f:nat->nat) (l:list) =
  match l with 
  | Nil -> Nil 
  | Cons(a, l') -> Cons((f a), (map f l'))

[@@@infer_optimized_type"
map(map[:0][:0] <_ map[:0][:1], map[:0][:1] <_ map[:1], map[:1] <_ map[:2])
"]