type nat = 
  | Zero 
  | Succ of nat 

let rec pow2 (mult:nat -> nat) (x:nat) = mult (mult Zero) = Zero


[@@@infer "pow2"]