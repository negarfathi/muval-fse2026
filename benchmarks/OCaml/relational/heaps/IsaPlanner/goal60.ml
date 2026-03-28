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

let main l1 l2 =
  if !l2 = RNil then
    begin
      let r1 = rlast l1 in
      rappend l1 l2;
      let r2 = rlast l1 in
      assert( r1 = r2 )
    end

[@@@rtype"
  rlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlast[0:0](mem,l,r) && r >= 0}
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  main :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
