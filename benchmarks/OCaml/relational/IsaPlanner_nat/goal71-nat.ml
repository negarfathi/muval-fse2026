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

let main m n =
  if leq m n then
    assert(leq m (S n))
  else ()

(*** leq m n = true が常に成り立つとして考える ***)

(*** m に関しての構造的帰納法による証明 ***)
(*
[m = Zの場合を証明]
      leq Z (S n)
   -> Z = (S n) || less Z (S n)
   -> false     || less Z (S n)
   -> false     || true
   -> true

[m = iを仮定してm = (S i)を証明]
Induction Hypothesis : leq i (S n) = true
Prove : leq (S i) (S n) = true
      leq (S i) (S n)
   -> (S i) = (S n) || less (S i) (S n)
   -> (S i) = (S n) || less i n
   -> ?（(S i) = (S n) ・・・ leq m iが成り立つことは仮定できるが、そこからこれが真であることは単純な帰納法やUnfoldingでは言えないため、真偽の判定ができない。
         less i n      ・・・ 関数が異なるので帰納法が使えないため、真偽の判定ができない。）
*)


(**** nに関しての構造的帰納法による証明 ***)
(*
[n = Zの場合を証明]
      leq m (S Z)
   -> m = (S Z) || less m (S Z)
   -> false     || less m (S Z)
      (m = Zの場合)
      -> false     || less Z (S Z)
      -> false     || true
      -> true
      (m = S m'の場合)
      -> false     || less (S m') (S Z)
      -> false     || false
      -> false

[m = iを仮定してm = (S i)を証明]
Induction Hypothesis : leq i (S n) = true
Prove : leq (S i) (S n) = true
      leq m (S (S i))
   -> m = (S (S i)) || less m (S (S i))
   -> ?（mに関しての帰納法のときと同様な理由で真偽が判定できない。）
*)
