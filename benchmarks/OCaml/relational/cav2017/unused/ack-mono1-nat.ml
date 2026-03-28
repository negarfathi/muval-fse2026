type nat = Z | S of nat

let rec gt m n =
  match m with
  | Z -> false
  | S m' ->
    match n with
    | Z -> true
    | S n' -> gt m' n'

let rec ackermann m n =
  match m with
  | Z -> S n
  | S m' ->
    match n with
    | Z -> ackermann m' (S Z)
    | S n' -> ackermann m' (ackermann m n')

let main m1 m2 n =
  if gt m1 m2 then assert (gt (ackermann m1 n) (ackermann m2 n))
