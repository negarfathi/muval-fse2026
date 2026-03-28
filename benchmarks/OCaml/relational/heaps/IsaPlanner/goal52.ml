type rlist = RNil | RCons of int * rlist ref

let rec rappend l ys =
  match !l with
  | RNil -> l := !ys
  | RCons(x, xs) -> rappend xs ys

let rec rcount n l =
  match !l with
  | RNil -> 0
  | RCons(x,xs) ->
    if n = x then 1 + rcount n xs
    else rcount n xs

(* Not an in-place reversal *)
let rec rrev l =
  match !l with
  | RNil -> ()
  | RCons(x, xs) ->
    rrev xs;
    let tmp = ref (RCons(x, ref RNil)) in
    rappend xs tmp;
    l := !xs

let main n l =
  let r1 = rcount n l in
  rrev l;
  let r2 = rcount n l in
  assert (r1 = r2)

[@@@rtype"
  rappend :: (l:rlist ref) -> (ys:rlist ref) ->
    {E a,b,rest. mem=a*b*rest && rlist(a,l) && rlist(b,ys)}
      u:int
    {rappend[0:0](mem,l,ys,mem')}
  rcount :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rcount[0:0](mem,n,l,r) && r >= 0}
  rrev :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rrev[0:0](mem,l,mem')}
  main :: (n:int) -> (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
