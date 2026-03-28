
let main a =
  let rec sum x = if x = 0 then 0 else x + sum (x - 1) in 
  sum a

[@@@rtype"
main::(a:{x:int | p(a) }) -> { ret : int | false }
"]
[@@@infer_optimized_type"
main:max(p)
"]
