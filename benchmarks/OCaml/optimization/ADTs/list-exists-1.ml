type nat = Zero | Succ of nat

type list = | Nil | Cons of nat * list

let rec exists f l = 
  match l with 
  | Nil -> false 
  | Cons (a, l') -> if f a then true else exists f l' 

[@@@rtype"
exists::(f:(x:{x:nat|p0(x)})->{y:bool|p1(x,y)}) -> (l:{l:list | _is_Succ(_get_Cons_0(l))}) -> {r:bool|r = false}
"]

[@@@infer_optimized_type"
exists(p1 <_ p0)
"]