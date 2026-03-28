(*unsolved*)
let rec mult x y = if y = 0 then 0 else x + mult x (y - 1)

(*let rec div x y = if x < 0 then -1 else 1 + div (x-y) y*)
let rec div x y = [%syn "x : int, y : int, div : int -> int -> int |- int"]

let main x y =
  if y > 0 then
    let s = mult x y in
    assert (div s y = x)
  else ()
