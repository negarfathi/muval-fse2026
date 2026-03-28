type list = Nil | Cons of int * list
type rlist = RNil | RCons of int * rlist ref

let rev l =
  let rec aux l acc = 
    match l with
    | Nil -> acc
    | Cons(x,xs) -> aux xs (Cons(x,acc))
  in
  aux l Nil

let rrev l =
  let rec aux t acc =
    match !t with
    | RNil -> l := !acc
    | RCons(x,xs) -> t := RCons(x,acc); aux xs t
  in
  aux l (ref RNil)

let rec eq2 l rl =
  match l, !rl with
  | Nil, RNil -> true
  | Cons(x1,xs1), RCons(x2,xs2) -> x1 = x2 && eq2 xs1 xs2
  | _ -> false

let main l rl =
  if eq2 l rl then
    begin
      rrev rl;
      assert( eq2 (rev l) rl )
    end

[@@@rtype"
  rev :: (n:int) -> (l:list) -> unit
  rrev :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rrev[0:0](mem,l,mem')}
  eq2 :: (l:list) -> (rl:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:bool
    {eq2[0:0](mem,l,rl)}
  main :: (l:list) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
