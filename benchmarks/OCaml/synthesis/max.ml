(*let rec max x y = if x > y then x else y*)
let rec max x y = [%syn "x : int, y:int |- int"]

let main x y =
  if x > y then
    assert (max x y = x)
  else 
  	assert (max x y = y)
