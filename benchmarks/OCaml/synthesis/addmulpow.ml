(*unsolved*)
let rec add x y = if x = 0 then y else add (x-1) (y+1)

(*let rec mult x y = if x = 0 then 0 else y + mult (x-1) y*)
let rec mult x y = [%syn "x : int, y : int, mult : int -> int -> int |- int"]

let rec pow x y = if x = 0 then 1 else y * pow (x-1) y

let main x y =
  if x > 1 && y > 1 then
  let s = add x y in
  let u = mult x y in
  let t = pow x y in
  assert (s <= u && u <= t)
  else ()

