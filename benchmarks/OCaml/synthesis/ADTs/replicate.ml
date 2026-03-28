type list = Nil | Cons of int * list

let rec length xs =
  match xs with
  | Nil -> 0
  | Cons (_, xs) -> length xs + 1
let rec replicate (n : int) (x : int) : list = [%syn "n : int, x : int, replicate : int -> int -> list |- list"]

let main n x =
  assert (length (replicate n x) = n)
