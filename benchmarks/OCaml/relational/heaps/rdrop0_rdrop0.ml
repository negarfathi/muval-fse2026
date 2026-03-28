type rlist = RNil | RCons of int * rlist ref

let rdrop0 l =
  let rec aux t =
    l := !t
  in
  aux l

let main l1 l2 =
  if l1 = l2 then
    begin
      rdrop0 l1;
      rdrop0 l2;
      assert( l1 = l2 )
    end

[@@@rtype
  "rdrop0 :: (l:{l':rlist|rlist(l')}) -> unit
   main :: (l1:rlist) -> 
           (l2:{l2':rlist| rlist(l1) && rlist(l2') && separate(l1,l2')}) ->
           unit"]
