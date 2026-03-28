type list = Nil | Cons of int * list

let rec reverse (xs : list) : list = [%syn "xs : list, reverse : list -> list |- list"]

let main xs =
  if xs <> Nil then assert (reverse (reverse xs) = xs && reverse xs <> xs)
