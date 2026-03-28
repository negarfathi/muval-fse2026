let rec mult_acc x y a =
  if y = 0 then a
  else mult_acc x (y - 1) (a + x)

let main x y a =
  let s1 = mult_acc x y a in
  let s2 = mult_acc x y (a - x) in
  assert(s1 = x + s2)
