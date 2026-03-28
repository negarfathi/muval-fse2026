let rec randpos (x:int) =
  let n = Random.int 0 in
  if n > 0 then n else randpos x

let rec sum_fun f n =
  if n = 0 then f 0
  else f n + sum_fun f (n - 1)

let main n = assert (sum_fun randpos n > 0)

[@@@types
"sum_fun ::
(f : (a : int) -> {b: int | p(a, b)}) ->
(x : int) -> {r: int | sum_fun[0:0](f, x, r)}
"]
