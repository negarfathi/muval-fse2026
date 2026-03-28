
let rec mult_acc x y a =
  if y = 0 then a else mult_acc x (y-1) (a+x)

(*let rec mult x y =
  if y = 0 then 0
  else x + mult x (y-1)*)
let rec mult x y = [%syn "x : int, y : int, mult : int -> int -> int |- int"]

let main x y a =
  assert (mult_acc x y a = a + mult x y)
