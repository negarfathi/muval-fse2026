let rec sum n =
  if n = 0 then 0
  else n + sum (n - 1)

let apply f x = f x

let main n =
  let s1 = apply sum n in
  let s2 = sum n in
  assert(s1 = s2)

[@@@types
"apply :: (f: (x: int) -> {y: int | p(x, y)}) ->
          (x: int) -> {r: int | apply[0:2](f, x, r)}"]
