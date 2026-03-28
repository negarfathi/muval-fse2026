type list = Nil | Cons of int * list
type int_option = None | Some of int
type exc = Not_found

let rec find p l ok exc =
  match l with
  | Nil -> exc Not_found
  | Cons(x,l) -> if p x then ok x else find p l ok exc

let rec find_opt p l =
  match l with
  | Nil -> None
  | Cons(x,l) -> if p x then Some x else find_opt p l

let kok (p:int -> bool) (l:list) r x = assert (r = Some x)
let kex (p:int -> bool) (l:list) r Not_found = assert (r = None)
let main p l =
  let r = find_opt p l in
  find p l (kok p l r) (kex p l r)

[@@@types
"find :: (p: int -> bool) -> (l: list) ->
         (ok: {x: int | find_ok(p, l, x)} -> unit) ->
         (exc: {e: exc | find_ex(p, l, e)} -> unit) -> unit
 find_opt :: (p: int -> bool) -> (l: list) ->
             {r: int_option | find_opt[0:2](p, l, r)}
 kok :: (p: (x: {x: int | kok[0:0][0:0](x)}) ->
            {y: bool | kok[0:0][0:1](x, y)}) ->
        (l: {l: list | kok[0:1](p, l)}) ->
        (r: {r: int_option | kok[0:2](p, l, r)}) ->
        (x: {x: int | kok[0:3](p, l, r, x)}) ->
        {s: unit | kok[0:4](p, l, r, x, s)}
 kex :: (p: (x: {x: int | kex[0:0][0:0](x)}) ->
            {y: bool | kex[0:0][0:1](x, y)}) ->
        (l: {l: list | kex[0:1](p, l)}) ->
        (r: {r: int_option | kex[0:2](p, l, r)}) ->
        (e: {e: exc | kex[0:3](p, l, r, e)}) ->
        {s: unit | kex[0:4](p, l, r, e, s)}
 main :: (p: int -> bool) -> (l: list) -> unit"]
