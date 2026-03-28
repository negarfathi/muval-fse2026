type rlist = RNil | RCons of int * rlist ref

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let main l1 l2 =
  let r1 = rlen l1 in
  let r2 = rlen l2 in
  rappend l1 l2;
  assert( rlen l1 = r1 + r2 )

[@@@rtype
  "rappend :: (l:rlist) -> (ys:{ys':rlist|rlist(l) && rlist(ys') && separate(l,ys')}) -> unit
   rlen :: (l:{l':rlist|rlist(l')}) -> int
   main :: (n:int) -> (l1:rlist) ->
           (l2:{l2':rlist|rlist(l1) && rlist(l2') && separate(l1,l2)}) -> unit"]
