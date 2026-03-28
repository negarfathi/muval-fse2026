type nat = Zero | Succ of nat

type tree = | Leaf | Node of nat * tree * tree

let rec gt n1 n2 =
  match n1 with 
  | Zero -> false 
  | Succ n1' -> 
    match n2 with 
    | Zero -> true 
    | Succ n2' -> gt n1' n2'
let rec append t n =
  match t with 
  | Leaf -> Node (n, Leaf, Leaf)
  | Node (n1, tl, tr) -> 
    if gt n n1 then 
      Node (n1, append tl n, tr)
    else 
      Node (n1, tl, append tr n)

[@@@space_constrs"
gt[:2].upb_nc = 2
gt[:2].upb_nd = 2
gt[:2].upb_depth = 2
append[:1].upb_nc = 2
append[:1].upb_nd = 2
append[:1].upb_depth = 2"]
[@@@infer_optimized_type"
gt(gt[:0] <_ gt[:1], gt[:1] <_ gt[:2])
append(append[:0] <_ append[:1], append[:1] <_ append[:2])"]
