
let rec add x y = x + y

let rec times n f x a = if n = 0 then a else times (n-1) f x (f (x+1) a - 1)

(*let rec mult x y = if y = 0 then 0 else x + mult x (y-1)*)
let rec mult x y = [%syn "x : int, y : int, mult : int -> int -> int |- int"]

let main x y =
  assert (times y add x 0 = mult x y)
