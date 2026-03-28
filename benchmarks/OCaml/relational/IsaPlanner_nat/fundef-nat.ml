type nat = Z | S of nat
let rec plus m n =
  match m with
  | Z -> n
  | S m' -> S (plus m' n)
let rec minus n m =
  match n with
  | Z -> Z
  | S n' ->
    match m with
    | Z -> n
    | S m' -> minus n' m'
let rec less x y =
  match y with
  | Z -> false
  | S y' ->
    match x with
    | Z -> true
    | S x' -> less x' y'
let leq x y =
  x = y || less x y


type list = Nil | Cons of nat * list
type zlist = ZNil | ZCons of (nat * nat) * list

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
    if n = Z then Cons(x, xs)
    else drop (minus n (S Z)) xs

let rec zdrop n l =
  match l with
  | ZNil -> ZNil
  | ZCons(x, xs) ->
    if n = Z then ZCons(x, xs)
    else zdrop (minus n (S Z)) xs

let rec take n l =
  match l with
  | Nil -> Nil
  | Cons(x, xs) ->
    if n = Z then Nil
    else Cons(x, take (minus n (S Z)) xs)

let rec ztake n l =
  match l with
  | ZNil -> ZNil
  | ZCons(x, xs) ->
    if n = Z then ZNil
    else ZCons(x, ztake (minus n (S Z)) xs)

let rec count n l =
  match l with
  | Nil -> Z
  | Cons(x, xs) ->
    if n = x then plus (S Z) (count n xs)
    else count n xs

let leq x y = leq x y

(*
let rec less x y =
  if y = 0 then false
  else if x = 0 then true
  else less (x - 1) (y - 1)

let leq x y = 
  x = y || less x y
*)

let succ x = plus (S Z) x

let minus n m =
  if leq n m then Z
  else minus n m

let rec len l =
  match l with
  | Nil -> Z
  | Cons(x, xs) -> plus (S Z) (len xs)

let rec ins i l =
  match l with
  | Nil -> Cons(i, Nil)
  | Cons(x, y) ->
    if less i x then Cons(i, Cons(x, y))
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
  | Nil -> Z
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
 drop :: (t1: nat) -> (t2: list) -> {t3: list | drop(t1, t2, t3)}
 zdrop :: (t1: nat) -> (t2: zlist) -> {t3: zlist | zdrop(t1, t2, t3)}
 take :: (t1: nat) -> (t2: list) -> {t3: list | take(t1, t2, t3)}
 ztake :: (t1: nat) -> (t2: zlist) -> {t3: zlist | ztake(t1, t2, t3)}
 less :: (t1: nat) -> (t2: nat) -> {t3: bool | less(t1, t2, t3)}
 leq :: (t1: nat) -> (t2: nat) -> {t3: bool | leq(t1, t2, t3)}
 succ :: (t1: nat) -> {t2: nat | succ(t1, t2)}
 minus :: (t1: nat) -> (t2: nat) -> {t3: nat | minus(t1, t2, t3)}
 len :: (t1: list) -> {t2: nat | len(t1, t2) && t2 >= 0}
 ins :: (t1: nat) -> (t2: list) -> {t3: list | ins(t1, t2, t3)}
 sort :: (t1: list) -> {t2: list | sort(t1, t2)}
 last :: (t1: list) -> {t2: nat | last(t1, t2) && t2 >= 0}
 butlast :: (t1: list) -> {t2: list | butlast(t1, t2)}
 delete :: (t1: nat) -> (t2: list) -> {t3: list | delete(t1, t2, t3)}
 sorted :: (t1: list) -> {t2: bool | sorted(t1, t2)}
 rev :: (t1: list) -> {t2: list | rev(t1, t2)}
 zrev :: (t1: zlist) -> {t2: zlist | zrev(t1, t2)}
 count :: (t1: nat) -> (t2: list) -> {t3: nat | count(t1, t2, t3) && t3 >= 0}
 zip :: (t1: list) -> (t2: list) -> {t3: zlist | zip(t1, t2, t3)}
 mem :: (t1: nat) -> (t2: list) -> {t3: bool | mem(t1, t2, t3)}
 filter :: (t1: nat -> bool) -> (t2: list) -> {t3: list | filter(t2, t3)}
"]
