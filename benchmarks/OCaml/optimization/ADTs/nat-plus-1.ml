type nat = Zero | Succ of nat 

let rec plus n1 n2 =
  match n1 with 
  | Zero -> n2 
  | Succ (n1') -> plus n1' (Succ n2)

[@@@infer_optimized_type"
plus(plus[:0] <_ plus[:1], plus[:1] <_ plus[:2])
"]