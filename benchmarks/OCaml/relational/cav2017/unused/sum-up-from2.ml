let rec sum n =
  if n <= 0 then 0
  else n + sum (n - 1)

let rec sum_up_from i n =
  if i = n + 1 then 0
  else i + sum_up_from (i + 1) n

let main i n =
  assert(sum_up_from 0 n = sum n)

[@@@types
"sum :: (x: int) -> {y: int | sum(x, y)}
 sum_up_from :: (x: int) -> (y: int) -> {z: int | sum_up_from(x, y, z)}
"]

[@@@lemma
"sum_up_from(i, n, r) && sum(n, s1) && sum(i - 1, s2), i >= 0 && s1 - s2 <> r => false"]
