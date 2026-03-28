type slist = SNil | SCons of int * slist
type hlist = HNil | HCons of int * hlist ref

let rec stake n l =
  match l with
  | SNil -> SNil
  | SCons(x, xs) ->
    if n = 0 then SNil
    else SCons(x, stake (n - 1) xs)

let rec htake n l =
  match !l with
  | HNil -> ()
  | HCons(x, xs) ->
    if n = 0 then l := HNil
    else htake (n - 1) xs

let rec eq_sh sl rl =
  match sl, !rl with
  | SNil, HNil -> true
  | SCons(x1,xs1), HCons(x2,xs2) -> x1 = x2 && eq_sh xs1 xs2
  | _ -> false

let main n sl hl =
  if eq_sh sl hl then
    begin
      let sl' = stake n sl in
      htake n hl;
      assert(eq_sh sl' hl)
    end
