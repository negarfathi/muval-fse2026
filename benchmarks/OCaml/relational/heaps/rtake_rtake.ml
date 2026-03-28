type rlist = RNil | RCons of int * rlist ref

let rec rtake n l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if n = 0 then l := RNil
    else rtake (n - 1) xs

let main n l1 l2 =
  if n >= 0 && l1 = l2 then
    begin
      rtake n l1;
      rtake n l2;
      assert( l1 = l2 )
    end
    
[@@@rtype
  "rtake :: (n:int) -> (l:{l':rlist|rlist(l')}) -> unit
   main :: (n:int) -> (l1:rlist) -> 
           (l2:{l2':rlist| rlist(l1) && rlist(l2') && separate(l1,l2')}) ->
           unit"]
