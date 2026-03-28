type rlist = RNil | RCons of int * rlist ref

let rec rmem x l =
  match !l with
  | RNil -> false
  | RCons(y, ys) ->
    x = y || rmem x ys

let rec rins1 i l =
  match !l with
  | RNil -> l := RCons(i, ref RNil)
  | RCons(x,y) ->
    if i = x then ()
    else rins1 i y

let main x l =
  rins1 x l;
  let r = rmem x l in
  assert( r )

[@@@rtype"
  rmem :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,mem)}
      r:bool
    {rmem[0:0](mem,x,l,r)}
  rins1 :: (i:int) -> (l:rlist ref) ->p
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rins1[0:0](mem,i,l,mem')}
  main :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
