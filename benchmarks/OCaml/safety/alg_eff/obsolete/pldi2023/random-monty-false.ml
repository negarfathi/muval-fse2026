type 'a eff =
| Pick : float -> bool eff

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

let rec length = function
| [] -> 0
| x :: xs -> 1 + length xs

let rec mem e = function
| [] -> false
| x :: xs -> e = x || mem e xs

let rec complement l1 l2 =
  match l1 with
  | [] -> []
  | x :: xs -> if mem x l2 then complement xs l2 else x :: complement xs l2

let hd = function
| [] -> "err"
| x :: _ -> x

let rec map f = function
| [] -> []
| x :: xs -> f x :: map f xs

let rec fold_right f l init =
  match l with
  | [] -> init
  | x :: xs -> f x (fold_right f xs init)

(* from https://github.com/matijapretnar/eff/blob/master/examples/random.eff *)

let rec uniform_pick = function
  | [] -> "err"
  | [x] -> x
  | x :: xs ->
    let n = length xs + 1 in
    let p = 1.0 /. float_of_int n in
    if perform (Pick p) then x else uniform_pick xs

let monty_hall change =
  let doors = ["A"; "B"; "C"] in
  let prize = (uniform_pick doors) in
  let guess = (uniform_pick doors) in
  let show = (uniform_pick (complement doors [prize; guess])) in
  let final = (if change then hd (complement doors [guess; show]) else guess) in
  final = prize

let combine p dist1 dist2 =
  let scale p dist = map (fun (x, q) -> (x, p *. q)) dist in
  let rec add (x, p) = function
    | [] -> [(x, p)]
    | (y, q) :: dist ->
      if x = y then (x, p +. q) :: dist else (y, q) :: add (x, p) dist
  in
  let dist1 = scale p dist1 in
  let dist2 = scale (1.0 -. p) dist2 in
  fold_right add dist1 dist2

(* let distribution = handler
      (* Distribution of only one value. *)
  | v -> [(v, 1.0)]
      (* Combine possible distributions. *)
  | effect (Pick p) k -> combine p (k true) (k false)
;; *)
(* with distribution handle
  monty_hall false
;; *)
let main () =
  match_with (fun () -> monty_hall false) () {
    retc = (fun v -> [(v, 1.0)]);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Pick p -> Some (fun (k: (a, _) continuation) ->
          combine p (continue k true) (continue k false)
        )
  }