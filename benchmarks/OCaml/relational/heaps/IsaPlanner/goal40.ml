type rlist = RNil | RCons of int * rlist ref

let rec rtake n l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if n = 0 then l := RNil
    else rtake (n - 1) xs

let main l =
  rtake 0 l;
  let tmp = ref RNil in
  assert( l = tmp )

[@@@rtype"
  rtake :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rtake[0:0](mem,n,l,mem')}
  main :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
