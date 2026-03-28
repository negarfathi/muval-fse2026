type rlist = RNil | RCons of int * rlist ref

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

let rec rsorted l =
  match !l with
  | RNil -> true
  | RCons(x,xs) ->
    match !xs with
    | RNil -> true
    | RCons(y,ys) ->
      x <= y && rsorted xs

let rec rsort l =
  match !l with
  | RNil -> l
  | RCons(x,xs) ->
    let r = rsort xs in
    rins l r;
    r

let main l =
  rsort l;
  assert( rsorted l )

[@@@rtype"
  rins :: (i:rlist ref) -> (l:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,i) && rlist(b,l)}
      u:unit
    {rins[0:0](mem,i,l,mem')}
  rsorted :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:bool
    {rsorted[0:0](mem,l,r)}
  rsort :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rsort[0:0](mem,l,mem')}
  main :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
