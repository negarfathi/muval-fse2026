
(*let rec mult x y = if y = 0 then 0 else x + mult x (y-1)*)
let rec mult x y = [%syn "x:int, y:int, mult : int->int-> int |- int"]

let main x y = assert (mult x y = mult y x)
