let rec mult x y =
  if y < 1 then 0
  else x + mult x (y - 1)

let main x y = if x >= 0 && y >= 0 then assert (mult x y <= x * y)

[@@@types
  "mult :: (x:{x:int|x >= 0}) -> (y:{y:int|y >= 0}) -> {z:int | post(x, y, z)}"]
