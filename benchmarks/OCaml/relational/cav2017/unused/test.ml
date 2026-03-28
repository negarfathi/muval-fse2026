type list = Nil | Cons of int * list
type int_option = None | Some of int
type exc = Not_found

let rec foo f g x =
  if x = 0 then g x && f x
  else foo f g x

let rec loop x = loop x
let ffalse x = false

let main x = assert(foo loop ffalse x)

[@@@types
"foo :: (t1: (tx: int) -> {ty: bool | f(tx, ty)}) ->
        (t2: (tx: int) -> {ty: bool | f(tx, ty)}) -> (t3: int) ->
             {t4: bool | foo(t3)}
 loop :: (t1 :int) -> {t2: bool | loop(t1, t2)}
 ffalse :: (t1 :int) -> {t2: bool | ffalse(t1, t2)}
"]
