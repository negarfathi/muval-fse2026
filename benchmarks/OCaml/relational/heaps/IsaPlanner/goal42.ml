type rlist = RNil | RCons of int * rlist ref

let rec rtake n l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if n = 0 then l := RNil
    else rtake (n - 1) xs

let main n x l1 l2 =
  if n >= 0 && l1 = l2 then
    begin
      let tmp1 = ref (RCons(x,l1)) in
      rtake (n+1) tmp1;
      rtake n l2;
      let tmp2 = ref (RCons(x,l2)) in
      assert( tmp1 = tmp2 )
    end

[@@@rtype"
  rtake :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rtake[0:0](mem,n,l,mem')}
  main :: (n:int) -> (x:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
