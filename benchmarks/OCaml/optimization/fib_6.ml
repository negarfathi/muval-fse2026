let rec fib n =
  if n <= 2 then 1
  else fib (n - 1) + fib (n - 2)

[@@@rtype"
fib::(n:{n:int | pre(n)}) -> {r:int | post(n, r)}
"]

[@@@constraints"
_forall n:int. n < 8 => pre(n);
"]

[@@@infer_optimized_type"
fib:min(post)
"]