type list = Nil | Cons of int * list
type int_option = None | Some of int

let rec find p l =
  match l with
  | Nil -> None
  | Cons(x,l) -> if p x then Some x else find p l

let main p l =
  if l = Nil then
    assert(find p l = None)
  else ()

[@@@types
"find :: (t1: (tx: int) -> {ty: bool | ty = (p tx)}) -> (t2: list) -> {t3: int_option | find(t2, t3)}
 main :: (t1: (tx: int) -> {ty: bool | ty = (p tx)}) -> (t2: list) -> unit"]

