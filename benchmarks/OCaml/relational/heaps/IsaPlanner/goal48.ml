type rlist = RNil | RCons of int * rlist ref

let rec rbutlast l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if !xs = RNil then l := RNil
    else rbutlast xs

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

let main l1 l2 l3 =
  if l1 = l2 && l2 = l3 && l1 <> ref RNil then
    begin
      rbutlast l1;
      let last = rlast l2 in
      let tmp = ref (RCons(last, ref RNil)) in
      rappend l1 tmp;
      assert( l1 = l3 )
    end

[@@@rtype"
  rbutlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rbutlast[0:0](mem,l,mem')}
  rlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlast[0:0](mem,l,r)}
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  main :: (l1:rlist ref) -> (l2:rlist ref) -> (l3:rlist ref) ->
    {E a,b,c,rest. mem=a*b*c*rest && rlist(a,l1) && rlist(b,l2) && rlist(c,l3)}
      u:unit
    {true}
"]
