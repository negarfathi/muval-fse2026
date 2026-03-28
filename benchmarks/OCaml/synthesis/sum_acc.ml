let rec sum x = if x=0 then 0 else x + sum (x-1)

(*let rec sum_acc x a = if x = 0 then a else sum_acc (x-1) (a + x)*)
let rec sum_acc x a = [%syn "x : int, a : int, sum_acc : int -> int -> int |- int"]

let main x a =
  assert (a + sum x = sum_acc x a)
