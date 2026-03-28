type nat = Zero | Succ of nat 

let rec add m n =
  match m with 
  | Zero -> n 
  | Succ m' -> Succ (add m' n)

let rec mult m n =
  match m with 
  | Zero -> Zero 
  | Succ Zero -> n 
  | Succ m' -> mult m' (add n n)

let rec power m n =
  match n with 
  | Zero -> Succ (Zero)
  | Succ n' -> mult m (power m n)

[@@@infer_optimized_type"
add(add[:0] <_ add[:1], add[:1] <_ add[:2])
mult(mult[:0] <_ mult[:1], mult[:1] <_ mult[:2])
power(power[:0] <_ power[:1], power[:1] <_ power[:2])
"]