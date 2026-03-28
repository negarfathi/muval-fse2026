
type list = Nil | Cons of int * list

let rec double x = [%syn "x : int |- int"]
let rec is_double xs ys =
  match xs, ys with
  | Nil, Nil -> true
  | Cons(x, xs), Cons(y, ys) -> x + x = y && is_double xs ys
  | _ -> false

let main xs =
  assert (is_double xs (double xs))

