type rlist = RNil | RCons of int * rlist ref

let rec rtakeWhile p l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if p x then rtakeWhile p xs
    else l := RNil

let ftrue x = true

let main l1 l2 =
  if l1 = l2 then
    begin
      rtakeWhile ftrue l1;
      assert( l1 = l2 )
    end

[@@@rtype"
  rtakeWhile :: (p: (n:int) -> {r:bool | r = (p' n r)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rtakeWhile[0:0](mem,l,mem')}
  main :: (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
