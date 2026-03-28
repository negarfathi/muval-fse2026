let rec mymod x y =
  if y < 0 then mymod x (-y)
  else if x < 0 then mymod (x + y) y
  else if x < y then x
  else mymod (x - y) y

let rec mc91 x =
  if x > 100 then x - 10
  else mc91 (mc91 (x + 11))

let main x =
  assert(mc91 (mymod x 102) = 91)

[@@@types
"mc91 :: (x: int) -> {y: int | mc91(x, y)}
 mymod :: (x: int) -> (y: int) -> {z: int | mymod(x, y, z)}
"]
