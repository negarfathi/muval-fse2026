type rlist = RNil | RCons of int * rlist ref

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let rdrop n l =
  let rec aux n t =
    match !t with
    | RNil -> l := RNil
    | RCons(x, xs) ->
      if n = 0 then l := !t
      else aux (n - 1) xs
  in
  aux n l

let rec rtake n l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if n = 0 then l := RNil
    else rtake (n - 1) xs

let main n l1 l2 l3 =
  if l1 = l2 && l2 = l3 then
    begin
      rtake n l1;
      rdrop n l2;
      rappend l1 l2;
      assert( l1 = l3 )
    end

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  rdrop :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdrop[0:0](mem,n,l,mem')}
  rtake :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rtake[0:0](mem,n,l,mem')}
  main :: (n:int) -> (l1:rlist ref) -> (l2:rlist ref) -> (l3:rlist ref) ->
    {E a,b,c,rest. mem=a*b*c*rest && rlist(a,l1) && rlist(b,l2) && rlist(c,l3)}
      u:unit
    {true}
"]
