type nat = Zero | Succ of nat 

let rec minus m n =
  match n with 
  | Zero -> m 
  | Succ n' -> 
    match m with 
    | Zero -> assert false 
    | Succ m' -> minus m' n'
let rec div m n =
  match n with 
  | Zero -> assert false 
  | _ ->
    match m with 
    | Zero -> Zero 
    | _ -> Succ (div (minus m n) n)

[@@@infer_optimized_type"
minus(minus[:0] <_ minus[:1], minus[:1] <_ minus[:2])
div(div[:0] <_ div[:1], div[:1] <_ div[:2])
"]

