
(* 
  y = 0;
  i = 0;
  while ( * ) do
    i = i + 1;
    if ( * ) then y = y + f (i);
  done;
  assert (y=0)
*)
external nondet_bool : unit -> bool = "unknown"
external f : int -> int = "unknown"
[@@@rtype"nondet_bool::unit -> bool"]
[@@@rtype"f::(fi:int) -> {fr:int | pfr(fi, fr)}"]

let rec sum_arg i y  =
  if nondet_bool () then y 
  else if nondet_bool () then sum_arg (i + 1) y
  else sum_arg (i + 1) (y + f i) 

[@@@rtype"
sum_arg:: (i:int) -> (y:{y:int | pre(i, y)}) -> {ret:int | ret = 0}
"]

[@@@constraints"
pre(0, 0);
"]

[@@@infer_optimized_type"
sum_arg:max(pfr)
"]