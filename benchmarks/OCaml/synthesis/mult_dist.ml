
let rec mult x y = if y = 0 then 0 else x + mult x (y-1)
(* let rec mult_dist x y z =
	if z = 0 then 0 else x + y + mult_dist x y (z-1) *)
let rec mult_dist x y z = [%syn "x : int, y : int, z : int, mult_dist : int -> int -> int -> int |- int"]
let main x y z =
	assert (mult x z + mult y z = mult_dist x y z)
