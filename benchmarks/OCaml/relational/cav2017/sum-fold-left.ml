type list = Nil | Cons of int * list

let rec sum_list l =
  match l with
  | Nil -> 0
  | Cons(x, xs) -> x + sum_list xs

let rec fold_left f s l =
  match l with
  | Nil -> s
  | Cons(x, xs) ->
     fold_left f (f s x) xs

let plus x y = x + y

let main l =
  let s1 = sum_list l in
  let s2 = fold_left plus 0 l in
  assert(s1 = s2)

[@@@types
"fold_left :: (f: (a: int) -> (b: int) -> {c: int | p(a, b, c)}) ->
              (x: int) -> (y: list) ->
              {z: int | fold_left[0:0](x, y, z)}"]
