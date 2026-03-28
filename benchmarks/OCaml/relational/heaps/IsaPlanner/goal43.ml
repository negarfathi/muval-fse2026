type rlist = RNil | RCons of int * rlist ref

let rec rtakeWhile p l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if p x then rtakeWhile p xs
    else l := RNil

let rec rdropWhile p l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if p x then rdropWhile p xs
    else xs := RNil

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let main n l1 l2 l3 =
  if l1 = l2 && l2 = l3 then
    begin
      rtakeWhile n l1;
      rdropWhile n l2;
      rappend l1 l2;
      assert( l1 = l3 )
    end

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  rtakeWhile :: (p: (n:int) -> {r:bool | r = (p' n r)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rtakeWhile[0:0](mem,l,mem')}
  rdropWhile :: (p: (n:int) -> {r:bool | r = (p' n r)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdropWhile[0:0](mem,l,mem')}
  main :: (n:int) -> (l1:rlist ref) -> (l2:rlist ref) -> (l3:rlist ref) ->
    {E a,b,c,rest. mem=a*b*c*rest && rlist(a,l1) && rlist(b,l2) && rlist(c,l3)}
      u:unit
    {true}
"]
