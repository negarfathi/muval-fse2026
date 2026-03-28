type 'a eff =
| Select : int list(*ctxinfo*) -> bool eff

type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = {
  retc: 'a -> 'b;
  exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option
}
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

type iilist = Nil_II | Cons_II of int * int * iilist

let rec ( @ ) l1 l2 = match l1 with [] -> l2 | hd :: tl -> hd :: (tl @ l2)
let rec filter f = function
  | [] -> []
  | x :: xs -> if f x then x :: filter f xs else filter f xs
let rec forall_ii f = function
  | Nil_II -> true
  | Cons_II (x1, x2, xs) -> f (x1, x2) && forall_ii f xs

let abs x: int = if x >= 0 then x else -x


(* from https://github.com/matijapretnar/eff/blob/master/examples/amb.eff *)

type result = Failure | Success of iilist


let rec select_from l =
  match l with
  | [] -> None
  | x :: xs -> if perform (Select l) then Some x else select_from xs

let no_attack (x, y) (x', y') =
  x <> x' && y <> y' && abs (x - x') <> abs (y - y')

let available x qs =
  filter (fun y -> forall_ii (no_attack (x, y)) qs) [1;2;3;4;5;6;7;8]


(* let amb = handler
  |  effect Select k ->
    (match k true with
    | Success y -> Success y
    | Failure -> k false)
;; *)
(* with amb handle
  let rec place x qs =
    if x = 9 then Success qs else
      match select_from (available x qs) with
      | Some y -> place (x+1) ((x, y) :: qs)
      | None -> Failure
  in place 1 []
;; *)
let main () =
  let amb body =
    try_with body () {
      effc = fun (type a) (e: a eff) -> match e with
        | Select _ctx -> Some (fun (k: (a, _) continuation) ->
            match continue k true with
            | Success y -> Success y
            | Failure -> continue k false
          )
    }
  in
  amb (fun () ->
    let rec place x qs =
      if x = 9 then Success qs else
        match select_from (available x qs) with
        | Some y -> place (x + 1) (Cons_II (x, y, qs))
        | None -> Failure
    in place 1 Nil_II
  )
(* [(8, 4); (7, 2); (6, 7); (5, 3); (4, 6); (3, 8); (2, 5); (1, 1)] *)

[@@@assert "typeof(main) <: unit -> {z: result | _get_Success_0(z) = Nil_II }"]
