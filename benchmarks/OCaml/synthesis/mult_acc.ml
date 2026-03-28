let rec mult x y = if y=0 then 0 else x + mult x (y-1)

(*let rec mult_acc x y a = if y=0 then a else mult_acc x (y-1) (a+x)*)
let rec mult_acc x y a = [%syn "x:int, y:int, a:int, mult_acc : int->int->int->int |- int"]

let main x y a =
  assert (a + mult x y = mult_acc x y a)
