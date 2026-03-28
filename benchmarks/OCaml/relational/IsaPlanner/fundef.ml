type list = Nil | Cons of int * list
type zlist = ZNil | ZCons of (int * int) * list

let rec append l ys =
  match l with
  | Nil -> ys
  | Cons(x, xs) ->
    Cons(x, append xs ys)

let rec zappend l ys =
  match l with
  | ZNil -> ys
  | ZCons(x, xs) ->
    ZCons(x, zappend xs ys)

let rec drop n l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) ->
    if n = 0 then Cons(x, xs)
    else drop (n - 1) xs

let rec zdrop n l =
  match l with
  | ZNil -> ZNil
  | ZCons(x, xs) ->
    if n = 0 then ZCons(x, xs)
    else zdrop (n - 1) xs

let rec take n l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) ->
    if n = 0 then Nil
    else Cons(x, take (n - 1) xs)

let rec ztake n l =
  match l with
  | ZNil -> ZNil
  | ZCons(x, xs) ->
    if n = 0 then ZNil
    else ZCons(x, ztake (n - 1) xs)

let rec count n l =
  match l with
  | Nil -> 0
  | Cons(x, xs) ->
    if n = x then 1 + count n xs
    else count n xs

let less x y = x < y

let leq x y = x <= y

(*
let rec less x y =
  if y = 0 then false
  else if x = 0 then true
  else less (x - 1) (y - 1)

let leq x y = 
  x = y || less x y
*)

let succ x = 1 + x

let rec minus n m =
  if n <= m then 0
  else n - m

let rec len l =
  match l with
  | Nil -> 0
  | Cons(x, xs) -> 1 + len xs

let rec ins i l =
  match l with
  | Nil -> Cons(i, Nil)
  | Cons(x, y) ->
    if i < x then Cons(i, Cons(x, y))
    else Cons(x, ins i y)

let rec sort l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) -> ins x (sort xs)

let rec zip l1 l2 =
  match (l1, l2) with
  | Nil, xs -> ZNil
  | xs, Nil -> ZNil
  | Cons(x, xs), Cons(y, ys) ->
    ZCons((x, y), zip xs ys)

let rec last l =
  match l with
  | Nil -> 0
  | Cons(x, xs) ->
    if xs = Nil then x
    else last xs

let rec filter f l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) ->
    if f x then Cons(x, filter f xs)
    else filter f xs

let rec dropWhile p l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) ->
    if p x then dropWhile p xs
    else Cons(x, xs)

let rec takeWhile p l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) ->
    if p x then Cons(x, takeWhile p xs)
    else Nil

let rec butlast l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) ->
    if xs = Nil then Nil
    else Cons(x, butlast xs)

let rec mem x l =
  match l with
  | Nil -> false
  | Cons(y, ys) ->
    x = y || mem x ys


let rec delete x l =
  match l with
  | Nil -> Nil
  | Cons(y, ys) ->
    if x = y then delete x ys
    else Cons(y, delete x ys)

let rec sorted l =
  match l with
  | Nil -> true
  | Cons(x, xs) ->
    match xs with
    | Nil -> true
    | Cons(y, ys) -> (leq x y) && sorted xs

let rec rev l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) -> append (rev xs) (Cons(x, Nil))

let rec zrev l =
  match l with
  | ZNil -> ZNil
  | ZCons(x, xs) -> zappend (zrev xs) (ZCons(x, ZNil))

[@@@types
"append :: (t1: list) -> (t2: list) -> {t3: list | append(t1, t2, t3)}
 zappend :: (t1: zlist) -> (t2: zlist) -> {t3: list | zappend(t1, t2, t3)}
 drop :: (t1: int) -> (t2: list) -> {t3: list | drop(t1, t2, t3)}
 zdrop :: (t1: int) -> (t2: zlist) -> {t3: zlist | zdrop(t1, t2, t3)}
 take :: (t1: int) -> (t2: list) -> {t3: list | take(t1, t2, t3)}
 ztake :: (t1: int) -> (t2: zlist) -> {t3: zlist | ztake(t1, t2, t3)}
 less :: (t1: int) -> (t2: int) -> {t3: bool | less(t1, t2, t3)}
 leq :: (t1: int) -> (t2: int) -> {t3: bool | leq(t1, t2, t3)}
 succ :: (t1: int) -> {t2: int | succ(t1, t2)}
 minus :: (t1: int) -> (t2: int) -> {t3: int | minus(t1, t2, t3)}
 len :: (t1: list) -> {t2: int | len(t1, t2) && t2 >= 0}
 ins :: (t1: int) -> (t2: list) -> {t3: list | ins(t1, t2, t3)}
 sort :: (t1: list) -> {t2: list | sort(t1, t2)}
 last :: (t1: list) -> {t2: int | last(t1, t2) && t2 >= 0}
 butlast :: (t1: list) -> {t2: list | butlast(t1, t2)}
 delete :: (t1: int) -> (t2: list) -> {t3: list | delete(t1, t2, t3)}
 sorted :: (t1: list) -> {t2: bool | sorted(t1, t2)}
 rev :: (t1: list) -> {t2: list | rev(t1, t2)}
 zrev :: (t1: zlist) -> {t2: zlist | zrev(t1, t2)}
 count :: (t1: int) -> (t2: list) -> {t3: int | count(t1, t2, t3) && t3 >= 0}
 zip :: (t1: list) -> (t2: list) -> {t3: zlist | zip(t1, t2, t3)}
 mem :: (t1: int) -> (t2: list) -> {t3: bool | mem(t1, t2, t3)}
 filter :: (t1: int -> bool) -> (t2: list) -> {t3: list | filter(t2, t3)}
"]
