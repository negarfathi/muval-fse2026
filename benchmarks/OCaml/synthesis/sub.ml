
let rec add x y = x + y
(*let rec sub x y = x - y*)
let rec sub x y = [%syn "x : int, y : int |- int"]
let main x y =
  assert (add y (sub x y) = x)
