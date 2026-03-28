type rlist = RNil | RCons of int * rlist ref
type rzlist = RZNil | RZCons of (int * int) * rzlist ref

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let rec rzappend l ys =
  match !l with
  | RZNil -> l := !ys
  | RZCons(x, xs) -> rzappend xs ys

let rdrop n l =
  let rec aux n t =
    match !t with
    | RNil -> l := RNil
    | RCons(x, xs) ->
      if n = 0 then l := !t
      else aux (n - 1) xs
  in
  aux n l

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let rec rtake n l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if n = 0 then l := RNil
    else rtake (n - 1) xs

let rec rzip l1 l2 =
  match (!l1, !l2) with
  | RNil, xs -> ref RZNil
  | xs, RNil -> ref RZNil
  | RCons(x, xs), RCons(y, ys) ->
    ref (RZCons((x, y), rzip xs ys))

let main l1 l2 l3 t1 t2 t3_a t3_b =
  if l1 = t1 && l2 = t2 && l3 = t3_a && l3 = t3_b then
    begin
      rappend l1 l2;
      let tmp1 = rzip l1 l3 in
      
      let r = rlen t1 in
      rtake r t3_a;
      rdrop r t3_b;
      let tmp2 = rzip t1 t3_a in
      let tmp3 = rzip t2 t3_b in
      rzappend tmp2 tmp3;
      assert( tmp1 = tmp2 )
    end

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  rzappend :: (l:rzlist) -> (ys:rzlist) ->
    {E a,b,rest. mem=a*b*rest && rzlist(a,l) && rzlist(b,ys)}
      u:unit
    {rzappend[0:0](mem,l,ys,mem')}
  rdrop :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdrop[0:0](mem,n,l,mem')}
  rtake :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rtake[0:0](mem,n,l,mem')}
  rlen :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlen[0:0](mem,l,r) && r >= 0}
  rzip :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      r:rlist
    {rzip[0:0](mem,l1,l2,r,mem')}
  main :: (l1:rlist ref) -> (l2:rlist ref) -> (l3:rlist ref) ->
          (t1:rlist ref) -> (t2:rlist ref) -> (t3_a:rlist ref) -> (t3_b:rlist ref) ->
    {E a,b,c,d,e,f,g,rest. mem=a*b*c*d*e*f*g*rest &&
                           rlist(a,l1) && rlist(b,l2) && rlist(c,l3) &&
                           rlist(d,t1) && rlist(e,t2) && rlist(f,t3_a) && rlist(g,t3_b)}
      u:unit
    {true}
"]
