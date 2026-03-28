type nat = Zero | Succ of nat 

let rec minus m n =
  match n with 
  | Zero -> m 
  | Succ n' -> 
    match m with 
    | Zero -> assert false 
    | Succ m' -> minus m' n'

[@@@infer_optimized_type"
minus(minus[:0] <_ minus[:1], minus[:1] <_ minus[:2])
"]