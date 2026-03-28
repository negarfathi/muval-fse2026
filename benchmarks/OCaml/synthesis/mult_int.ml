(*let rec mult x y = x * y*)
let rec mult x y = [%syn "x : int, y : int |- int"]
let main x y =
	assert(x * y = mult x y)
