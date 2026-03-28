type rlist = RNil | RCons of int * rlist ref

let rec rdropWhile p l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if p x then rdropWhile p xs
    else xs := RNil

let ffalse x = false

let main l1 l2 =
  if l1 = l2 then
    begin
      rdropWhile ffalse l1;
      assert( l1 = l2 )
    end

[@@@rtype"
  rdropWhile :: (p: (n:int) -> {r:bool | r = (p' n r)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdropWhile[0:0](mem,l,mem')}
  main :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
