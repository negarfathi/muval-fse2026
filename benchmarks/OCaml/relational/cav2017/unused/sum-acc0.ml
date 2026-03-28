let rec sum n =
  if n = 0 then 0
  else n + sum (n - 1)

let rec sum_acc n a =
  if n = 0 then a
  else sum_acc (n - 1) (a + n)

let main n a =
  let s1 = sum n in
  let s2 = sum_acc n 0 in
  assert(s1 = s2)

(*
[@@@lemma
"sum_acc[0:0](x, a, r) => sum_acc[0:0](x, a - x - 1, r - x - 1)"
]
 *)
