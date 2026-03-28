
external f1 : unit -> int = "unknown"

[@@@rtype"
f1:: unit -> {fr: int | p1(fr)}
"]

let rec pareto y : int =
  if y < 10 then y
  else pareto (f1 ())


[@@@rtype"
pareto:: (n:{n:int | pre(n)}) -> {ret:int | false}
"]
[@@@constraints"
pre(10);
"]

[@@@infer_optimized_type"
pareto:max(p1)
"]