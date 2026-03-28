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

let rec rmap f l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    rmap f xs;
    l := RCons(f x,xs)

let main f n l1 l2 =
  if n >= 0 && l1 = l2 then
    begin
      rmap f l1;  rdrop n l1;
      rdrop n l2; rmap f l2;
      assert( l1 = l2 )
    end

[@@@rtype"
  rdrop :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rdrop[0:0](mem,n,l,mem')}
  rmap :: (f: (n:int) -> {r:int | r = (f' n)}) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rmap[0:0](mem,l,mem')}
  main :: (f: (n:int) -> {r:int | r = (f' n)}) ->
          (n:int) -> (l1:rlist ref) -> (l2:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l1) && rlist(b,l2)}
      u:unit
    {true}
"]
