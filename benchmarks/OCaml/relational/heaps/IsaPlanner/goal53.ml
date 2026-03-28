type rlist = RNil | RCons of int * rlist ref

let rec rcount n l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) ->
    if n = x then 1 + rcount n xs
    else rcount n xs

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

let rec rsort l =
  match !l with
  | RNil -> l
  | RCons(x,xs) ->
    let r = rsort xs in
    rins l r;
    r

let main x l =
  let r1 = rcount x l in
  let r = rsort l in
  let r2 = rcount x r in
  assert (r2 = r1)

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:int
    {rappend[0:0](mem,l,ys,mem')}
  rcount :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rcount[0:0](mem,n,l,r) && r >= 0}
  rsort :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rsort[0:0](mem,l,mem')}
  main :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
