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

let main l1 l2 t1 t2 =
  if l1 = l2 && t1 = t2 then
    if t1 = ref RNil then
      begin
        rappend l1 t1; rbutlast l1;
        rbutlast l2;
        assert( l1 = l2 );
      end
    else
      begin
        rappend l1 t1; rbutlast l1;
        rbutlast l2; rappend l1 l2;
        assert( l1 = l2 );
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
  main :: (l1:rlist ref) -> (l2:rlist ref) -> (t1:rlist ref) -> (t2:rlist ref) ->
    {E a,b,c,d,rest. mem=a*b*c*d*rest && rlist(a,l1) && rlist(b,l2) &&
                     rlist(c,t1) && rlist(d,t2)}
      u:unit
    {true}
"]
