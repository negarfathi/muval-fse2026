type rlist = RNil | RCons of int * rlist ref

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let rec rcount n l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) ->
    if n = x then 1 + rcount n xs
    else rcount n xs

let main n l1 l2 =
  let r1 = rcount n l1 in
  rappend l1 l2;
  let r2 = rcount n l2 in
  assert (r1 <= r2)

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:int
    {rappend[0:0](mem,l,ys,mem')}
  rcount :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rcount[0:0](mem,n,l,r) && r >= 0}
  main :: (n:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
