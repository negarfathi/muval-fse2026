let rec mult x y =
  if y = 0 then 0
  else x + mult x (y - 1)

let main x y =
  let s1 = mult x y in
  let s2 = mult y x in
  assert(s1 = s2)

[@@@lemma
"mult[0:0](x, y, r) => mult[0:0](x - 1, y, r - y)"]

