let rec sum n =
  if n < 0 then n + sum (n + 1)
  else if n = 0 then 0
  else n + sum (n - 1)

let rec sum_down_from n m =
  if m = n then n
  else m + sum_down_from n (m - 1)

let main n =
  let s1 = sum n in
  if n < 0 then
    let s2 = sum_down_from n 0 in
    assert(s1 = s2)
  else ()
[@@@types
"sum :: (x: int) -> {y: int | sum(x, y)}
 sum_down_from :: (x: int) -> (y: int) -> {z: int | sum_down_from(x, y, z)}
"]
