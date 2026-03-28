type list = RNil | RCons of int * list ref

let rdrop n l =
  let rec aux n t l =
    match !t with
    | RNil -> l := RNil
    | RCons(x, xs) ->
      if n = 0 then l := !t
      else (aux (n - 1) xs l)
  in
  aux n l l

let main l1 l2 =
  if l1 = l2 then
    begin
      rdrop 0 l1;
      assert( l1 = l2 )
    end

[@@@rtype"
  rdrop :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdrop[0:0](mem,n,l,mem')}
  main :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
