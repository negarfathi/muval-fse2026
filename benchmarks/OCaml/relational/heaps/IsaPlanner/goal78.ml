type rlist = RNil | RCons of int * rlist ref

let rec rcount n l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) ->
    if n = x then 1 + rcount n xs
    else rcount n xs

let main n m l =
  let r1 = rcount n l in
  let tmp1 = ref (RCons(m,ref RNil)) in
  let r2 = rcount n tmp1 in
  let tmp2 = ref (RCons(m,l)) in
  let r3 = rcount n tmp2 in
  assert( r1 + r2 = r3 )

[@@@rtype"
  rcount :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rcount[0:0](mem,n,l,r) && r >= 0}
  main :: (n:int) -> (h:int) -> (l:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l)}
      u:unit
    {true}
"]
