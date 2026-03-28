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

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let main n l1 l2 =
  if n >= 0 && rlen l1 = rlen l2 then
    begin
      rdrop n l1;
      let r1 = rlen l1 in
      let r2 = rlen l2 in
      assert(r1 >= r2 - n)
    end

[@@@rtype
  "rdrop :: (n:int) -> (h:heap) |>
            (l:{l':rlist| E a,rest. heq(h,a * rest) && rlist(a,l')}) ->
            {u:unit| rdrop[0:0](h,n,l,u)}
   rlen :: (h:heap) |> (l:{l':rlist| E a,rest. heq(h,a * rest) && rlist(a,l')}) ->
           {n:int| rlen[0:0](h,l,n)}
   main :: (n:int) -> (l1:rlist) -> (h:heap) |> 
           (l2:{l2':rlist| E a,b,rest. heq(h,a * b * rest) && rlist(a,l1) && rlist(b,l2')}) ->
           unit"]
