let rec mult x y = if y = 0 then 0 else x + mult x (y-1)

(*let rec square_acc x a = if a = x then 0 else x + square_acc x (a + 1)*)
let rec square_acc x a = [%syn "x : int, a : int, square : int -> int -> int |- int"]

let main x =
  assert (mult x x = square_acc x 0)
