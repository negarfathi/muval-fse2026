type tree = Leaf | Node of int * tree * tree

let rec bisimilar xs ys =
  match xs, ys with
  | Leaf, Leaf -> true
  | Node(x, xl, xr), Node(y, yl, yr) ->
    x = y && bisimilar xl yr && bisimilar xr yl
  | _ -> false

let rec invert (xs : tree) : tree = [%syn "xs : tree, invert : tree -> tree |- tree"]
(*
let rev invert xs =
   match xs with
   | Leaf -> Leaf
   | Node(x, xl, xr) -> Node(x, invert xr, invert xl)
*)

let main xs =
  assert (bisimilar xs (invert xs))
