let rec sum_acc n a =
  if n = 0 then a
  else sum_acc (n - 1) (a + n)

let main n a b =
  let s1 = sum_acc n a in
  let s2 = sum_acc n (a - b) in
  assert(s1 = s2 + b)
