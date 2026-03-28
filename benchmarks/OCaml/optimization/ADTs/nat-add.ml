type nat = Zero | Succ of nat 

let rec add m n =
  match m with 
  | Zero -> n 
  | Succ m' -> Succ (add m' n)

[@@@rtype"
add::(x:{x:nat | true }) -> (y:{y:nat | p(x, y)}) -> { ret : nat | ret <> Zero }
"]

[@@@infer_optimized_type"
add()
"]