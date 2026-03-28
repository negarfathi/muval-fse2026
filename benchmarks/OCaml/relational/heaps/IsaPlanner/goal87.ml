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

let rec rrev l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    rrev xs;
    let tmp = ref (RCons(x, ref RNil)) in
    rappend xs tmp;
    l := !xs

let rec rzrev l =
  match !l with
  | RZNil -> ()
  | RZCons(x, xs) ->
    rzrev xs;
    let tmp = ref (RZCons(x, ref RZNil)) in
    rzappend xs tmp;
    l := !xs

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let rec rzip l1 l2 =
  match (!l1, !l2) with
  | RNil, xs -> ref RZNil
  | xs, RNil -> ref RZNil
  | RCons(x, xs), RCons(y, ys) ->
    ref (RZCons((x, y), rzip xs ys))

let main l1 l2 t1 t2 =
  if l1 = t1 && l2 = t2 then
    let r1 = rlen l1 in
    let r2 = rlen l2 in
    if r1 = r2 then
      begin
        rrev l1; rrev l2; let tmp1 = rzip l1 l2 in
        let tmp2 = rzip t1 t2 in rzrev tmp2;
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
  main :: (l1:rlist ref) -> (l2:rlist ref) -> (t1:rlist ref) -> (t2:rlist ref) ->
    {E a,b,c,d,rest. mem=a*b*c*d*rest && rlist(a,l1) && rlist(b,l2) &&
                     rlist(c,t1) && rlist(d,t2)}
      u:unit
    {true}
"]
