type list = Nil | Cons of int * list
type exc = Not_found

let eq x y = x = y

let rec mem x l =
  match l with
  | Nil -> false
  | Cons(y, ys) -> x = y || mem x ys

let rec find g(*ghost*) p l ok exc =
  match l with
  | Nil -> exc Not_found
  | Cons(x, xs) -> if p x then ok x else find g p xs ok exc

let kok l x y = assert(mem x l)
let kex l x Not_found = assert (not(mem x l))

let main l x =
  find x (eq x) l (kok l x) (kex l x)

[@@@types
"find :: (g: int) ->
         (p: (x: int) -> {y: bool | f(g, x, y)}) ->
         (l: list) ->
         (ok: {x:int | find_ok(g, p, l, x)} -> unit) ->
         (exc: {x:exc | find_ex(g, p, l, x)} -> unit) -> unit
 kok :: (l: {l: list | kok[0:0](l)}) ->
        (x: {x: int | kok[0:1](l, x)}) ->
        (y: {y: int | kok[0:2](l, x, y)}) ->
        {r: unit | kok[0:3](l, x, y, r)}
 kex :: (l: {l: list | kex[0:0](l)}) ->
        (x: {x: int | kex[0:1](l, x)}) ->
        (y: {y: exc | kex[0:2](l, x, y)}) ->
        {r: unit | kex[0:3](l, x, y, r)}"]
