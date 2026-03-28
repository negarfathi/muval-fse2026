type rlist = RNil | RCons of int * rlist ref

let rec rcount n l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) ->
    if n = x then 1 + rcount n xs
    else rcount n xs

let main n l =
  let r1 = rcount n l in
  let r2 = rcount n (ref (RCons(n,l))) in
  assert(1 + r1 = r2)

[@@@rtype"
  rcount :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rcount[0:0](mem,n,l,r) && r >= 0}
  main :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
