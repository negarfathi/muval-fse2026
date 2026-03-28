type 'a eff =
| Pick : int -> int eff
type exn =
| Fail
type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = {
  retc: 'a -> 'b;
  exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option
}
external raise : exn -> 'a = "unknown"
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

let rec ( @ ) l1 l2 = match l1 with [] -> l2 | hd :: tl -> hd :: (tl @ l2)

(* from https://github.com/ocaml-multicore/effects-examples/blob/master/multishot/queens.ml *)

let rec safe queen diag xs =
  match xs with
  | [] -> true
  | q :: qs -> queen <> q && queen <> q + diag && queen <> q - diag &&
               safe queen (diag + 1) qs

let rec find_solution n col : int list =
  if col = 0 then []
  else begin
    let sol = find_solution n (col - 1) in
    let queen = perform (Pick n) in
    if safe queen 1 sol then queen::sol else raise Fail
  end

let queens_count n =
  match_with (find_solution n) n {
    retc = (fun _ -> 1);
    exnc = (fun Fail -> 0);
    effc = fun (type b) (e : b eff) ->
      match e with
      | Pick n -> Some (fun (k : (b, _) continuation) ->
        let rec loop (i: int) acc =
          if i = n then (continue k i + acc)
          else loop (i+1) (continue k i + acc)
        in loop 1 0)
  }

(*
  n | queen_count n
  -----------------
  1 |       1
  2 |       0
  3 |       0
  4 |       2
  5 |      10
  6 |       4
  7 |      40
  8 |      92
  9 |     352
*)

[@@@assert "typeof(queens_count) <: (n: {z: int | z = 4}) -> {z: int | z = 4}"]
