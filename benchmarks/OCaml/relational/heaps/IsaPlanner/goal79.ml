type rlist = RNil | RCons of int * rlist ref

let rec rins i l =
  match !i with
  | RNil -> assert false
  | RCons(v,_) ->
    match !l with
    | RNil -> l := RCons(v,i); i := RNil
    | RCons(x,xs) ->
      if v < x
      then (l := RCons(v,i); i := RCons(x,xs))
      else rins i xs

let rec rsorted l =
  match !l with
  | RNil -> true
  | RCons(x,xs) ->
    match !xs with
    | RNil -> true
    | RCons(y,ys) ->
      x <= y && rsorted xs

let main i l =
  match !i with
  | RNil -> ()
  | RCons(x,xs) ->
    if rsorted l then
      begin
        rins i l;
        assert( rsorted l )
      end

[@@@rtype"
  rins :: (i:rlist ref) -> (l:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,i) && rlist(b,l)}
      u:unit
    {rins[0:0](mem,i,l,mem')}
  rsorted :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:bool
    {rsorted[0:0](mem,l,r)}
  main :: (i:rlist ref) -> (l:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,i) && rlist(b,l)}
      u:unit
    {true}
"]
