let rec gcd x y =
  if x = y then x 
  else if x > y then gcd (x - y) y
  else gcd x (y - x)

[@@@rtype"
gcd:: (x:int) -> (y:{y:int | pre(x,y)}) -> {r:int | post(x,y,r)}
"]

[@@@constraints"
_forall x:int y:int r:int. post(x, y, r) => r mod 2 = 0;
"]

[@@@infer_optimized_type"
gcd:max(pre)
"]