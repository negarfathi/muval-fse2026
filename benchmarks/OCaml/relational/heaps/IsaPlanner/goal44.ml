type rlist = RNil | RCons of int * rlist ref
type rzlist = RZNil | RZCons of (int * int) * rzlist ref

let rec rzip l1 l2 =
  match (!l1, !l2) with
  | RNil, xs -> ref RZNil
  | xs, RNil -> ref RZNil
  | RCons(x, xs), RCons(y, ys) ->
    ref (RZCons((x, y), rzip xs ys))

let main x l1 l2 =
  match !l2 with
  | RNil ->
    let tmp = ref (RCons(x, l1)) in
    let l1' = rzip tmp l2 in
    let l2' = ref RZNil in
    assert( l1' = l2' )
  | RCons(y, ys) ->
    let tmp = ref (RCons(x, l1)) in
    let l1' = rzip tmp l2 in
    let l2' = ref (RZCons((x, y), rzip l1 ys)) in
    assert( l1' = l2' )

[@@@rtype"
  rzip :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      r:rlist
    {rzip[0:0](mem,l1,l2,r,mem')}
  main :: (x:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
