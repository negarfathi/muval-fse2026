type rlist = RNil | RCons of int * rlist ref

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let rec rins i l =
  match !i with
  | RNil -> assert false
  | RCons(v,_) ->
    match !l with
    | RNil -> l := RCons(v,i); i := RNil
    | RCons(x,xs) ->
      if v < x
      then (l := RCons(v,i); i := RCons(x,xs))
      else rins i xs

let main x l =
  let r1 = rlen l in
  rins x l;
  let r2 = rlen l in
  assert( r2 = 1 + r1 )

[@@@rtype"
  rlen :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlen[0:0](mem,l,r) && r >= 0}
  rins :: (i:rlist ref) -> (l:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,i) && rlist(b,l)}
      u:unit
    {rins[0:0](mem,i,l,mem')}
  main :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
