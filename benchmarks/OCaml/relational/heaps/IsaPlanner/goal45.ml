type rlist = RNil | RCons of int * rlist ref
type rzlist = RZNil | RZCons of (int * int) * rzlist ref

let rec rzip l1 l2 =
  match (!l1, !l2) with
  | RNil, xs -> ref RZNil
  | xs, RNil -> ref RZNil
  | RCons(x, xs), RCons(y, ys) ->
    ref (RZCons((x, y), rzip xs ys))

let main x y l1 l2 =
  if l1 = l2 then
    let tmp1 = ref (RCons(x, l1)) in
    let tmp2 = ref (RCons(y, l2)) in
    let t1 = rzip tmp1 tmp2 in
    let tmp = rzip l1 l2 in
    let t2 = ref (RZCons((x,y),tmp)) in
    assert( t1 = t2 )

[@@@rtype"
  rzip :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      r:rlist
    {rzip[0:0](mem,l1,l2,r,mem')}
  main :: (x:int) -> (y:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
