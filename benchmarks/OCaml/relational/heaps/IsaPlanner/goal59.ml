type rlist = RNil | RCons of int * rlist ref
type rzlist = RZNil | RZCons of (int * int) * rzlist ref

let rdrop n l =
  let rec aux n t =
    match !t with
    | RNil -> l := RNil
    | RCons(x, xs) ->
      if n = 0 then l := !t
      else aux (n - 1) xs
  in
  aux n l

let rzdrop n l =
  let rec aux n t =
    match !t with
    | RZNil -> l := RZNil
    | RZCons(x, xs) ->
      if n = 0 then l := !t
      else aux (n - 1) xs
  in
  aux n l

let rec rzip l1 l2 =
  match (!l1, !l2) with
  | RNil, xs -> ref RZNil
  | xs, RNil -> ref RZNil
  | RCons(x, xs), RCons(y, ys) ->
    ref (RZCons((x, y), rzip xs ys))

let main n l1 l2 =
  if n >= 0 then
    begin
      let tmp1 = rzip l1 l2 in rzdrop n tmp1;
      rdrop n l1; rdrop n l2; let tmp2 = rzip l1 l2 in
      assert( tmp1 = tmp2 )
    end

[@@@rtype"
  rdrop :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdrop[0:0](mem,n,l,mem')}
  rzdrop :: (n:int) -> (l:zrlist ref) ->
    {E a,rest. mem=a*rest && rzlist(a,l)}
      u:unit
    {rzdrop[0:0](mem,n,l,mem')}
  rzip :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      r:rlist
    {rzip[0:0](mem,l1,l2,r,mem')}
  main :: (n:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
