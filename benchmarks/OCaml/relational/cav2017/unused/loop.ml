let rec loop x = loop x

let rec mult x y z =
  if y = 0 then 0
  else x + mult x (y - 1) z

let rec mult_acc x y a =
  if y = 0 then a
  else mult_acc x (y - 1) (a + x)

let main n m a =
  assert(mult n m (loop m) + a = mult_acc n m a)

[@@@types
"loop :: (x: int) -> {y: int | loop(x, y)}
 mult :: (x: int) -> (y: int) -> {z: int | mult(x, y, z)}
 mult_acc :: (x: int) -> (y: int) -> (a: int) -> {z: int | mult_acc(x, y, a, z)}
"]
