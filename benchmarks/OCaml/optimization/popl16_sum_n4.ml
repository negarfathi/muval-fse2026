external f : unit -> int * int * int * int = "unknown"

[@@@rtype"
f:: unit -> {fr: int * int * int * int| pfr(fr)}
"]

let rec sum y : int =
  if y < 10 then y
  else 
    match f () with  
    | x1, x2, x3, x4 -> sum (x1 + 2 * x2 + 3 * x3 + 4 * x4)


[@@@rtype"
sum::(n:{y:int | pre(y)}) -> {ret:int | false}
"]

[@@@constraints"
pre(10);
"]

[@@@infer_optimized_type"
sum:max(pfr)
"]