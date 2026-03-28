let rec fib (next : int -> int -> int) n =
  let next1 n1 n2 = next (n1 + n2) n1 in 
  if n < 3 then next 1 0
  else if n = 3 then next 1 1
  else fib next1 (n - 1)

[@@@rtype"
fib:: (next : (n1:int) -> (n2:int) -> {nr:int | pnext(n1, n2, nr)}) -> (n:{n:int | pre(n)}) -> {r : int | post(n, r)}
"]
[@@@constraints"
_forall r:int. r > 0 => pre(r);
_forall n:int r1:int r2:int. post(n - 1, r1) && post(n - 2, r2) => post(n, r1 + r2);
"]
[@@@infer_optimized_type"
fib:max(pnext), max(pre)
"]