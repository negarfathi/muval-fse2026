let rec mult x y = if y = 0 then 0 else x + mult x (y-1)
(*let rec double x = if x = 0 then 0 else double (x-1) + 2*)
let rec double x = [%syn "x : int, double : int -> int |- int"]
let main x =
  assert (mult 2 x = double x)

