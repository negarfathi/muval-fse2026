type rlist = RNil | RCons of int * rlist ref

let rec rmem x l =
  match !l with
  | RNil -> false
  | RCons(y, ys) ->
    x = y || rmem x ys

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

let main x i l =
  match !i with
  | RNil -> ()
  | RCons(y,ys) ->
    if x <> y then
      begin
        let r1 = rmem x l in
        rins i l;
        let r2 = rmem x l in
        assert( r1 = r2 )
      end

[@@@rtype"
  rmem :: (x:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,mem)}
      r:bool
    {rmem[0:0](mem,x,l,r)}
  rins :: (i:rlist ref) -> (l:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,i) && rlist(b,l)}
      u:unit
    {rins[0:0](mem,i,l,mem')}
  main :: (x:int) -> (i:rlist ref) -> (l:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l)}
      u:unit
    {true}
"]
