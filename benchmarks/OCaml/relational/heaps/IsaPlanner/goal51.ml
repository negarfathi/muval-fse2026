type rlist = RNil | RCons of int * rlist ref

let rec rbutlast l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if !xs = RNil then l := RNil
    else rbutlast xs

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let main x l1 l2 =
  if l1 = l2 then
    begin
      let tmp = ref (RCons(x, ref RNil)) in
      rappend l1 tmp;
      rbutlast l1;
      assert( l1 = l2 );
    end

[@@@rtype"
  rbutlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rbutlast[0:0](mem,l,mem')}
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  main :: (x:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
