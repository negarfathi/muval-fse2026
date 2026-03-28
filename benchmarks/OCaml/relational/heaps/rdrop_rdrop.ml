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

let main n l1 =
  let () = print_string "aaa" in
  (fun l2 ->
  if n >= 0 && l1 = l2 then
    begin
      rdrop n l1;
      rdrop n l2;
      assert( l1 = l2 )
    end)

[@@@rtype
  "rdrop :: (n:int) -> (h:heap) |> (l:{l':rlist|rlist(h,l')}) -> {u:unit| Q(h,n,l)}
   main :: (n:int) -> (l1:rlist) ->
           (h:heap) |> (l2:{l2':rlist| E h1,h2,rest. heq(h,h1 * h2 * rest) && rlist(h1,l1) && rlist(h2,l2')}) ->
           unit"]

[@@@rtype
  "rdrop :: (n:int) -> (h:heap) |> (l:{l':rlist|rlist(h,l')}) -> {u:unit| Q(h,n,l)}
   main :: (n:int) ->
           (h:heap) |> (l1:{l1':rlist| E h1,rest1. heq(h,h1 * rest1) && rlist(h1,l1')}) -> 
           (l2:{l2':rlist| E h1,h2,rest2. heq(h,h1 * h2 * rest2) && rlist(h1,l1) && rlist(h2,l2')}) ->
           unit"]
