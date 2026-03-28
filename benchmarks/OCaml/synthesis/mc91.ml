let rec mc91 x = [%syn "x : int, mc91 : int -> int |- int"]

let main x =
  if x <= 101 then
    assert(mc91 x = 91)
  else ()
