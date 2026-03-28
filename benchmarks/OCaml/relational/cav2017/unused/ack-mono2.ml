let rec ackermann m n =
  if m = 0 then
    n + 1
  else if n = 0 then
    ackermann (m - 1) 1
  else
    ackermann (m - 1) (ackermann m (n - 1))

let main m1 m2 n =
  if m1 > m2 then assert (ackermann n m1 > ackermann n m2)
