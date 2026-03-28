type nat = Zero | Succ of nat 

let rec add m n =
  match m with 
  | Zero -> n 
  | Succ m' -> Succ (add m' n)

[@@@rtype"
add::(x:{x:nat | true }) -> (y:{y:nat | pre(x, y)}) -> { ret : nat | post(x, y, ret) }
"]

[@@@constraints"
_forall x:nat y:nat ret:nat. post(x, y, ret) => ret <> Zero;
"]

[@@@infer_optimized_type"
add:max(pre)
"]