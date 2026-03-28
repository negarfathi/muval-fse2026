type nat = Zero | Succ of nat 
let rec gt n1 n2 =
  match n1 with 
  | Zero -> false 
  | Succ n1' -> 
    match n2 with 
    | Zero -> true 
    | Succ n2' -> gt n1' n2'

[@@@infer_optimized_type"
gt(gt[:2] <_ gt[:1], gt[:1] <_ gt[:0])
"]