
external f1 : unit -> int = "unknown"
external f2 : unit -> int = "unknown"

[@@@rtype"
f1:: unit -> {fr: int | p1(fr)}
"]
[@@@rtype"
f2:: unit -> {fr: int | p2(fr)}
"]

let rec pareto y : int =
  if y < 10 then y
  else pareto (f1 () + 2 * f2 () )


[@@@rtype"
pareto:: (n:{n:int | pre(n)}) -> {ret:int | false}
"]
[@@@constraints"
pre(10);
"]

[@@@infer_optimized_type"
pareto:max(p1), max(p2)
"]