type rlist = RNil | RCons of int * rlist ref

let rec rbutlast l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if !xs = RNil then l := RNil
    else rbutlast xs

let rec minus n m =
  if n <= m then 0
  else n - m

let rec rtake n l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if n = 0 then l := RNil
    else rtake (n - 1) xs

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let main l1 l2 =
  if l1 = l2 then
    begin
      rbutlast l1;
      let r = rlen l2 in
      rtake (minus r (1+0)) l2;
      assert( l1 = l2 );
    end

[@@@rtype"
  rbutlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rbutlast[0:0](mem,l,mem')}
  minus :: (n:int) -> (m:int) -> {r:int | minus[0:0](n,m,r) && r >= 0}
  rlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlast[0:0](mem,l,r)}
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  main :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
