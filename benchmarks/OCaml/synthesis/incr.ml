(*let rec incr x = x + 1*)
let rec incr x = [%syn "x :int |- int"]

let main x =
	assert (incr x > x)
