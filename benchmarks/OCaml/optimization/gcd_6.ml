let rec gcd x y =
  if x = y then x 
  else if x > y then gcd (x - y) y
  else gcd x (y - x)

[@@@rtype"
gcd:: (x:int) -> (y:{y:int | pre(x,y)}) -> {r:int | post(x,y,r)}
"]

[@@@constraints"
pre(3, 6);
"]

[@@@infer_optimized_type"
gcd:min(post)
"]