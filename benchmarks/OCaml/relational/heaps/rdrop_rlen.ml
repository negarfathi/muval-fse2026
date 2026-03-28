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

let main n l =
  if n >= 0 then
    begin
      let r1 = rlen l in
      rdrop n l;
      let r2 = rlen l in
      assert(r2 <= r1)
    end

[@@@rtype
  "rdrop :: (n:int) -> (h:heap) |>
            (l:{l':rlist| E a,rest. heq(h,a * rest) && rlist(a,l')}) ->
            {u:unit| rdrop[0:0](h,n,l,u)}
   rlen :: (h:heap) |> (l:{l':rlist| E a,rest. heq(h,a * rest) && rlist(a,l')}) ->
           {n:int| rlen[0:0](h,l,n)}
   main :: (n:int) -> (h:heap) |> 
           (l:{l':rlist| E a,rest. heq(h,a * rest) && rlist(a,l')}) ->
           unit"]
