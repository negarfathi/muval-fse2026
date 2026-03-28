let add x y = x + y

let rec mult x y =
  if y = 0 then 0
  else x + mult x (y - 1)

let rec repeat m(*ghost*) f e n =
  if n = 0 then e
  else repeat m f (f e) (n - 1)

let main n m a =
  let s1 = repeat n (add n) a m in
  let s2 = mult n m in
  assert(s2 + a = s1)

[@@@types
"repeat :: (x: int) ->
           (f: (y1:int) -> {z:int | p1(x, y1, z)}) ->
           (w: int) -> (v: int) ->
           {u:int | repeat_(x, w, v, u)}
"]
