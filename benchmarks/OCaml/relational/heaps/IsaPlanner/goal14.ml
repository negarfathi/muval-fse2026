type rlist = RNil | RCons of int * rlist ref

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let rec rfilter p l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if p x
    then begin rfilter p xs; l := RCons(x,xs)  end
    else begin rfilter p xs; l := !xs          end

let main p xs1 ys1 xs2 ys2 =
  if xs1 = xs2 && ys1 = ys2 then
    begin
      rappend xs1 ys1; rfilter p xs1;
      rfilter p xs2; rfilter p ys2; rappend xs2 ys2;
      assert( xs1 = xs2 )
    end

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:unit
    {rappend[0:0](mem,l,ys,mem')}
  rfilter :: (p: (n:int) -> {r:bool | r = (p' n)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rfilter[0:0](mem,l,mem')}
  main :: (p: (n:int) -> {r:bool | r = (p' n)}) ->
          (xs1:rlist ref) -> (ys1:rlist ref) ->
          (xs2:rlist ref) -> (ys2:rlist ref) ->
    {E a,b,c,d,rest. mem=a*b*c*d*rest && rlist(a,xs1) && rlist(b,xs2) &&
                     rlist(c,ys1) && rlist(d,ys2)}
      u:unit
    {true}
"]
