type rlist = RNil | RCons of int * rlist ref

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let rec rtake n l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if n = 0 then l := RNil
    else rtake (n - 1) xs

let rec minus n m =
  if n <= m then 0
  else n - m

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let main n l1 l2 t1 t2 =
  if n >= n && l1 = l2 then
    begin
      rappend l1 t1;
      rtake n l1;
      
      let r = rlen l2 in
      rtake n l2;
      rtake (minus n r) t2;
      rappend l2 t2;
      assert( l1 = l2 )
    end

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  rtake :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rtake[0:0](mem,n,l,mem')}
  minus :: (n:int) -> (m:int) -> {r:int | minus[0:0](n,m,r) && r >= 0}
  rlen :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlen[0:0](mem,l,r) && r >= 0}
  main :: (n:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
          (t1:rlist ref) -> (t2:rlist ref) ->
    {E a,b,c,d,rest. mem=a*b*c*d*rest && rlist(a,l1) && rlist(b,l2) &&
                     rlist(c,t1) && rlist(d,t2)}
      u:unit
    {true}
"]
