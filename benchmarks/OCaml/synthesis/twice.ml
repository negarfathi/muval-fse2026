(*unsolved*)
(*let rec twice f x = f (f x)*)
let rec twice f x = [%syn "x : int, f : int -> int, twice : int -> int |- int"]

let rec main f x =
  if x <= f x then
    assert (x <= twice f x)
  else ()
