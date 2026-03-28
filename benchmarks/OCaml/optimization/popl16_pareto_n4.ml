
external f1 : unit -> int = "unknown"
external f2 : unit -> int = "unknown"
external f3 : unit -> int = "unknown"
external f4 : unit -> int = "unknown"

[@@@rtype"
f1:: unit -> {fr: int | p1(fr)}
"]
[@@@rtype"
f2:: unit -> {fr: int | p2(fr)}
"]
[@@@rtype"
f3:: unit -> {fr: int | p3(fr)}
"]
[@@@rtype"
f4:: unit -> {fr: int | p4(fr)}
"]

let rec pareto y : int =
  if y < 10 then y
  else pareto (f1 () + 2 * f2 () + 3 * f3 () + 4 * f4 ())


[@@@rtype"
pareto:: (n:{n:int | pre(n)}) -> {ret:int | false}
"]
[@@@constraints"
pre(10);
"]

[@@@infer_optimized_type"
pareto:max(p1), max(p2), max(p3), max(p4)
"]