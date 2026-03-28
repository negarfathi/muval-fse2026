type nat = Zero | Succ of nat 

let add2 n = Succ (Succ (n))

[@@@rtype"
add2::(x:{x:nat | true }) -> { ret : nat | p(x, ret) }
"]

(* TODO:add2[:1].upb_nc = 2*)
[@@@infer_optimized_type"
add2()
"]