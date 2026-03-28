let succ x = x + 1

(*let rec pred x = x - 1*)
let rec pred x = [%syn "x : int |- int"]

let main x = assert (pred (succ x) = x)
