type list = Nil | Cons of int * list

let rec mem a = function 
  | Nil -> false 
  | Cons(x, l) -> if x = a then true else mem a l

[@@@rtype"
mem::(a:int) -> (l:list) -> {r:bool | pmem(a, l, r)}
"]

let rec map (f: int -> int) = function
  | Nil -> Nil
  | Cons(x, l) -> Cons(f x, map f l)

[@@@rtype"
map::(f: int -> int) -> (l:list) -> {r:list | pmap(f, l, r)}
"]

let main x f l = mem x (map f l)

[@@@rtype"
main::(x:int) -> (f:(a:int) -> {b:int| pfr(x, a, b)}) -> (l:{l:list | _is_Cons(l)}) -> {ret:bool | ret = true}
"]

[@@@infer_optimized_type"
main:max(pfr)
"]