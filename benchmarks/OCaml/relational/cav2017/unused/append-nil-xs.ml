type list = Nil | Cons of int * list

let rec make_list n =
  if n < 0
  then Nil
  else Cons((*Rondom.int *)0, make_list (n - 1))

let rec append xs ys =
  match xs with
  | Nil -> ys
  | Cons(x, xs') ->
    let rs = append xs' ys in
    Cons(x, rs)

let rec nth_aux l n =
  match l with
  | Nil -> 0(*assert false*)
  | Cons(a,l) -> if n = 0 then a else nth_aux l (n-1)

let nth l n =
  if n < 0 then 0(*assert false*) else nth_aux l n

let main n i =
  let xs = make_list n in
  assert (nth (append Nil xs) i = nth xs i)

[@@@types
"make_list :: (t1: int) -> {t2: list | make_list(t1, t2)}
 append :: (t1: list) -> (t2: list) -> {t3: list | append(t1, t2, t3)}
 nth_aux :: (t1: list) -> (t2: int) -> {t3: int | nth_aux(t1, t2, t3)}
 nth :: (t1: list) -> (t2: int) -> {t3: int | nth(t1, t2, t3)}
"]
