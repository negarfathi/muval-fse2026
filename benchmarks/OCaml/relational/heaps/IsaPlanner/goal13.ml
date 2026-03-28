type rlist = RNil | RCons of int * rlist ref

let rdrop n l =
  let rec aux n t =
    match !t with
    | RNil -> l := RNil
    | RCons(x, xs) ->
      if n = 0 then l := !t
      else aux (n - 1) xs
  in
  aux n l

let main n x l1 l2 =
  if n >= 0 && l1 = l2 then
    begin
      let tmp = ref (RCons(x,l1)) in 
      rdrop (n+1) tmp;
      rdrop n l2;
      assert( tmp = l2 )
    end

[@@@rtype"
  rdrop :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdrop[0:0](mem,n,l,mem')}
  main :: (n:int) -> (x:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
