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


type nat = Zero | Succ of nat

let rec plus n m =
  match n with
  | Zero -> m
  | Succ n1 -> Succ (plus n1 m)

let rec minus n m =
  match n with
  | Zero -> Zero
  | Succ n1 ->
    match m with
    | Zero -> n
    | Succ m1 -> minus n1 m1

let main n m =
  assert (n = minus (plus n m) m)
