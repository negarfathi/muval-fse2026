type rlist = RNil | RCons of int * rlist ref

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let rec minus n m =
  if n <= m then 0
  else n - m

let rec rbutlast l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if !xs = RNil then l := RNil
    else rbutlast xs

let main l =
  let r1 = rlen l in
  rbutlast l;
  let r2 = rlen l in
  assert( r2 = minus r1 1 )

[@@@rtype"
  rlen :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlen[0:0](mem,l,r) && r >= 0}
  minus :: (n:int) -> (m:int) -> {r:int | minus[0:0](n,m,r) && r >= 0}
  rbutlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rbutlast[0:0](mem,l,mem')}
  main :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
