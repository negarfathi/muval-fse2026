external f : unit -> int = "unknown"

[@@@rtype"
f:: unit -> {fr: int | pfr(fr)}
"]

let rec sum y : int =
  if y < 10 then y
  else 
    match f () with  
    | x1 -> sum (x1) 


[@@@rtype"
sum::(n:{y:int | pre(y)}) -> {ret:int | post(n, ret)}
"]

[@@@constraints"
pre(10);
_forall n:int r:int. post(n, r) => false;
"]

[@@@infer_optimized_type"
sum:max(pfr)
"]