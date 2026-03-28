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
    | RNil ->
      l := RCons(v,i); i := RNil
    | RCons(x,xs) ->
      if v < x
      then (l := RCons(v,i); i := RCons(x,xs))
      else rins i xs

let rec rsort l =
  match !l with
  | RNil -> l
  | RCons(x,xs) ->
    let r = rsort xs in
    rins l r;
    r

let main l =
  let r1 = rlen l in
  let r2 = rlen (rsort l) in
  assert (r2 = r1)

[@@@rtype"
  rlen :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlen[0:0](mem,l,r) && r >= 0}
  rins :: (i:rlist ref) -> (l:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,i) && rlist(b,l)}
      u:unit
    {rins[0:0](mem,i,l,mem')}
  rsort :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rsort[0:0](mem,l,mem')}
  main :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
