type list = Nil | Cons of int * list
type exc = Not_found

let rec find p l ok exc =
  match l with
  | Nil -> exc Not_found
  | Cons(x,l) -> if p x then ok x else find p l ok exc

let main p l ok exc =
  if l = Nil then
    find p l ok exc
  else ()

[@@@types
"find :: (t1: (tx: int) -> {ty: bool | ty = (p tx)}) ->
         (t2: list) ->
         (o: {r:int | find_arg(t2, r)} -> unit) ->
         (e: exc -> unit) -> unit
 main :: (t1: (tx: int) -> {ty: bool | ty = (p tx)}) ->
         (t2: list) ->
         (o: (r:{r:int | false}) -> unit) ->
         (e: exc -> unit) ->
         unit"]
