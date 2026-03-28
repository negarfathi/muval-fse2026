let rec sum x = if x = 0 then 0 else x + sum (x - 1)

[@@@rtype"
sum::(x:{x:int | p(x) }) -> { ret : int | false }
"]

[@@@infer_optimized_type"
sum:max(p)
"]
