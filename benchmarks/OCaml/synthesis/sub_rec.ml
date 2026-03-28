let rec add x y = if x = 0 then y else 1 + add (x-1) y
(*let rec sub x y = if y = 0 then x else sub (x-1) (y-1)*)
let rec sub x y = [%syn "x : int, y : int, sub : int -> int -> int |- int"]
let main x y =
  assert (add y (sub x y) = x)
