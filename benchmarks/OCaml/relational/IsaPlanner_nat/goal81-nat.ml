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


let main m n k =
  assert(minus (minus (S m) n) (S k) = minus (minus m n) k)

(* 構造的帰納法による証明
[m = Zの場合を証明]
  左辺 = minus (minus (S Z) n) (S k)
    (n = Zの場合)
      -> minus (minus (S Z) Z) (S k)
      -> minus Z (S k)
      -> Z
    (n = S n'の場合)
      -> minus (minus (S Z) (S n')) (S k)
      -> minus Z (S k))
      -> Z

  右辺 = minus (minus Z n) k)
      -> minus Z k
      -> Z

[m = iを仮定してm = (S i)を証明]
Γ =   [(minus (minus (S i) n) (S k)     = minus (minus i n) k)]
Prove : minus (minus (S (S i)) n) (S k) = minus (minus (S i) n) k

(n = Zの場合）
  左辺 = minus (minus (S (S i)) Z) (S k)
      -> minus (S (S i)) (S k)
      -> minus (S i) k
  右辺 = minus (minus (S i) Z) k
      -> minus (S i) k

(n = S n'の場合)
  左辺 = minus (minus (S (S i)) (S n')) (S k)
      -> minus (minus (S i) n') (S k)
      -> minus (minus i n') k   (<- Applied)
  右辺 = minus (minus (S i) (S n')) k
      -> minus (minus i n') k
*)
