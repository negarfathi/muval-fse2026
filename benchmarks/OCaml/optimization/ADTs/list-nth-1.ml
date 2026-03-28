type nat = Zero | Succ of nat

type list = | Nil | Cons of nat * list

let rec nth n l =
  match n with 
  | Zero -> assert false 
  | Succ (n') -> 
    match l with 
    | Nil -> assert false 
    | Cons (a, l') -> if n' = Zero then a else nth n' l'

[@@@rtype"
nth::(n:{n:nat|p0(n)}) -> (l:{l:list|p1(n, l)}) -> {r:nat|_is_Succ(r)}
"]

[@@@infer_optimized_type"
nth(p0 <_ p1)
"]