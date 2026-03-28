
type list = Nil | Cons of int * list

let rec length (xs : list) : int = [%syn "xs : list, length : list -> int |- int"]

let main xs =
  assert (length Nil = 0)

