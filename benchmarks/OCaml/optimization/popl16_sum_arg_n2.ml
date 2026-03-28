
external nondet_bool : unit -> bool = "unknown"
external f : int -> int = "unknown"

[@@@rtype"nondet_bool::unit -> bool"]
[@@@rtype"f::(fi:int) -> {fr:int | pfr(fi, fr)}"]

let rec sum_arg y =
  if nondet_bool () then y 
  else sum_arg (f 1 + f 2)

[@@@rtype"
sum_arg:: {y:int | pre(y)} -> {ret:int | ret = 0}
"]

[@@@constraints"
pre(0);
"]

[@@@infer_optimized_type"
sum_arg:max(pfr)
"]