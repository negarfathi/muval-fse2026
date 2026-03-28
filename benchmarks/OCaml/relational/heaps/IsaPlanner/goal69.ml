type rlist = RNil | RCons of int * rlist ref

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let rec rdelete x l =
  match !l with
  | RNil -> ()
  | RCons(y, ys) ->
    if x = y
    then (rdelete x ys; l := !ys)
    else rdelete x ys

let main x l =
  let r1 = rlen l in
  rdelete x l;
  let r2 = rlen l in
  assert( r2 <= r1 )

[@@@rtype"
  rlen :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlen[0:0](mem,l,r) && r >= 0}
  rdelete :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdelete[0:0](mem,x,l,mem')}
  main :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
