type rlist = RNil | RCons of int * rlist ref

let rec rlast l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) ->
    if !xs = RNil then x
    else rlast xs

let main x l =
  if !l = RNil then
    let t = ref (RCons(x,l)) in
    assert(rlast t = x)

[@@@rtype"
  rlast :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rlast[0:0](mem,l,r)}
  main :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
