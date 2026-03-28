external nondet_bool : unit -> bool = "unknown"
external f : unit -> int * int = "unknown"

[@@@rtype"nondet_bool::unit -> bool"]
[@@@rtype"
f::(u:unit) -> {fr: int * int | pfr(fr)}
"]

let rec accumulator y =
  if nondet_bool () then y
  else
    match f () with
    | x1, y1 -> accumulator (y + x1 + y1)


[@@@rtype"
accumulator:: (n:{n:int | pre(n)}) -> {r: int | r > 0}
"]

[@@@constraints"
_forall n:int. n > 0 => pre(n);
"]


[@@@infer_optimized_type"accumulator:max(pfr)"]