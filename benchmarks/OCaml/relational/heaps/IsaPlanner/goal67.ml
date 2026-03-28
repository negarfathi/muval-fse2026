type rlist = RNil | RCons of int * rlist ref

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let rec rfilter p l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if p x
    then rfilter p xs
    else (rfilter p xs; l := !xs)

let main p l =
  let r1 = rlen l in
  rfilter p l;
  let r2 = rlen l in
  assert( r2 <= r1 )

[@@@rtype"
  rlen :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlen[0:0](mem,l,r) && r >= 0}
  rfilter :: (p: (n:int) -> {r:bool | r = (p' n)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rfilter[0:0](mem,l,mem')}
  main :: (p: (n:int) -> {r:bool | r = (p' n)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
