type nat = Zero | Succ of nat 

let pow2 mult (x:nat) = mult (mult x)

[@@@rtype"
pow2::(mult:(x:{x:nat|p0(x)})->{y:nat|p1(x,y)}) -> (x:{x:nat| x = Zero}) -> {y:nat| y = Zero}
"]

[@@@infer_optimized_type"
pow2(p1 <_ p0)
"]

