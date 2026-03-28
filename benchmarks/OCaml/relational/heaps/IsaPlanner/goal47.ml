type rtree = RLeaf | RNode of rtree ref * int * rtree ref

let rec rmirror t =
  match !t with
  | RLeaf -> ()
  | RNode(l, n, r) ->
    rmirror l;
    rmirror r;
    t := RNode(r, n, l)

let nmax x y =
  if x < y then y else x

let rec rheight t =
  match !t with
  | RLeaf -> 0
  | RNode(l, n, r) ->
    1 + nmax (rheight l) (rheight r)

let main t =
  let r1 = rheight t in
  rmirror t;
  let r2 = rheight t in
  assert( r1 = r2 )

[@@@rtype"
  rmirror :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {rmirror[0:0](mem,l,mem')}
  nmax :: (x:int) -> (y:int) -> int
  rheight :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      r:int
    {rheight[0:0](mem,l,r) && r >= 0}
  main :: (l:rlist ref) ->
    {E a,rest. mem=a*rest && rlist(a,l)}
      u:unit
    {true}
"]
