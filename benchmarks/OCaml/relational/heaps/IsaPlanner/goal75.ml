type rlist = RNil | RCons of int * rlist ref

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let rec rrev l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    rrev xs;
    let tmp = ref (RCons(x, ref RNil)) in
    rappend xs tmp;
    l := !xs

let rec rfilter p l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if p x
    then begin rfilter p xs; l := RCons(x,xs)  end
    else begin rfilter p xs; l := !xs          end

let main p l1 l2 =
  if l1 = l2 then
    begin
      rfilter p l1; rrev l1;
      rrev l2; rfilter p l2;
      assert( l1 = l2 )
    end

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  rrev :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rrev[0:0](mem,l,mem')}
  rfilter :: (p: (n:int) -> {r:bool | r = (p' n)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rfilter[0:0](mem,l,mem')}
  main :: (p: (n:int) -> {r:bool | r = (p' n)}) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b*rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
