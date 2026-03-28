
external nondet_bool : unit -> bool = "unknown"
external f : int -> int = "unknown"

[@@@rtype"nondet_bool::unit -> bool"]
[@@@rtype"f::(fi:{fi:int | pfi(fi)}) -> {fr:int | pfr(fi, fr)}"]

let rec sum_arg y =
  if nondet_bool () then y 
  else sum_arg (f 1 + f 2 + f 3 + f 4)

[@@@rtype"
sum_arg:: {y:int | pre(y)} -> {ret:int | ret = 0}
"]

[@@@constraints"
pre(0);
_forall i:int. i >= 1 && i <= 4 => pfi(i);
"]

[@@@infer_optimized_type"
sum_arg:max(pfr)
"]