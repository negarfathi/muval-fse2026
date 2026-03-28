type nat = Zero | Succ of nat

type tree = | Leaf | Node of nat * tree * tree

let rec append compare t n =
  match t with 
  | Leaf -> Node (n, Leaf, Leaf)
  | Node (n1, tl, tr) -> 
    if compare n n1 then 
      Node (n1, append compare tl n, tr)
    else 
      Node (n1, tl, append compare tr n)

[@@@infer_optimized_type"
append(
  append[:0][:0] <_ append[:0][:1], 
  append[:0][:1] <_ append[:0][:2], 
  append[:0][:2] <_ append[:1], 
  append[:1] <_ append[:2], 
  append[:2] <_ append[:3])
"]