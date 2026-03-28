let rec sum_up_from n m =
  if n = m then n
  else n + sum_up_from (n + 1) m

let rec sum_down_from n m =
  if m = n then n
  else m + sum_down_from n (m - 1)

let main x y =
  let s1 = sum_down_from 0 y in
  let s2 = sum_down_from 0 (x - 1) in
  assert(sum_up_from x y = s1 - s2)
