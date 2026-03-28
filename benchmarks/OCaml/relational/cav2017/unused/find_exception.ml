type list = Nil | Cons of int * list
exception Not_found

let rec find p l =
  match l with
  | Nil -> raise Not_found
  | Cons(x,l) -> if p x then x else find p l

let rec mem x l =
  match l with
  | Nil -> false
  | Cons(y, ys) ->
    x = y || mem x ys

let main p l =
  let x = find p l in
  assert(mem x l)
