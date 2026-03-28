(*let rec mono x = x*)
let rec mono x = [%syn "x : int, mono : int -> int |- int"]

let main x y =
	if x > y then assert (mono x > mono y)
	else ()
