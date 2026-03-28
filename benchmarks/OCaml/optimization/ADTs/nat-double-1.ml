type nat = 
  | Zero 
  | Succ of nat 

let rec double x = match x with | Zero -> Zero | Succ x1 -> Succ (Succ (double x1))

[@@@infer_optimized_type"
double(double[:0] <_ double[:1])
"]
