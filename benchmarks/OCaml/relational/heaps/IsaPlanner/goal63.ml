type rlist = RNil | RCons of int * rlist ref

let rec rlast l =
  match !l with
  | RNil -> 0
  | RCons(x, xs) ->
    if !xs = RNil then x
    else rlast xs

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let main x l =
  if !l <> RNil then
    let tmp = ref (RCons(x,l)) in
    let r1 = rlast tmp in
    let r2 = rlast l in
    assert( r1 = r2 )

[@@@rtype"
  rlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlast[0:0](mem,l,r) && r >= 0}
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  main :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
