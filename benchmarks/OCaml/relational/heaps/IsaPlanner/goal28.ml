type rlist = RNil | RCons of int * rlist ref

let rec rmem x l =
  match !l with
  | RNil -> false
  | RCons(y, ys) ->
    x = y || rmem x ys

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let main x l =
  let t = ref (RCons(x,ref RNil)) in
  rappend l t;
  let r = rmem x l in
  assert( r );

[@@@rtype"
  rmem :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,mem)}
      r:bool
    {rmem[0:0](mem,x,l,r)}
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  main :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
