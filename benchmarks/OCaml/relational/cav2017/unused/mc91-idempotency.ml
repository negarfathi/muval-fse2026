let rec mc91 x =
  if x > 100 then x - 10
  else mc91 (mc91 (x + 11))

let main x =
  if x <= 101 then
    assert(mc91 x = (mc91 (mc91 x)))
  else ()

[@@@types
"mc91 :: (x: int) -> {y: int | mc91(x, y)}"]

