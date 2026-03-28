type rlist = RNil | RCons of int * rlist ref

let rec minus n m =
  if n <= m then 0
  else n - m

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let rdrop n l =
  let rec aux n t =
    match !t with
    | RNil -> l := RNil
    | RCons(x, xs) ->
      if n = 0 then l := !t
      else aux (n - 1) xs
  in
  aux n l

let main n l =
  if n >= 0 then
    begin
      let r1 = rlen l in
      rdrop n l;
      let r2 = rlen l in
      assert( r2 = minus r1 n )
    end

[@@@rtype"
  minus :: (n:int) -> (m:int) -> {r:int | minus[0:0](n,m,r) && r >= 0}
  rlen :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlen[0:0](mem,l,r) && r >= 0}
  rdrop :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdrop[0:0](mem,n,l,mem')}
  main :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
