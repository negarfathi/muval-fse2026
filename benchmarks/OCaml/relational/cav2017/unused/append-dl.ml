type int_list = Nil | Cons of int * int_list

let rec append xs ys =
  match xs with
  | Nil -> ys
  | Cons(x, l) -> Cons(x, append l ys)

[@@@types
"append :: (t1: list) -> (t2: list) -> {t3: list | append(t1, t2, t3)}"]

[@@@hccs
"dl(x1, x2, y1, y2, z1, z2) :- x2 = y1 && z1 = x1 && z2 = y2.
 ?- append(xs, x2, x1) && append(ys, y2, y1)
 && append(r, r2, r1) && append(xs, ys, r')
 && dl(x1, x2, y1, y2, r1, r2) && r <> r'."]

