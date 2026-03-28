type rlist = RNil | RCons of int * rlist ref

let rec rtake n l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    if n = 0 then l := RNil
    else rtake (n - 1) xs

let rec rlen l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) -> 1 + rlen xs

let main n l =
  if n >= 0 then
    begin
      rtake n l;
      assert(rlen l <= n)
    end

[@@@rtype
  "rtake :: (n:int) -> (l:{l':rlist|rlist(l')}) -> unit
   rlen :: (l:{l':rlist|rlist(l')}) -> int
   main :: (n:int) -> (l:{l':rlist| rlist(l')}) -> unit"]
