type nat = Zero | Succ of nat 

let two (n:nat) = Succ (Succ (Zero))

[@@@rtype"
two::(x:{x:nat | true }) -> { ret : nat | p(x, ret) }
"]

[@@@infer_optimized_type"
two()
"]