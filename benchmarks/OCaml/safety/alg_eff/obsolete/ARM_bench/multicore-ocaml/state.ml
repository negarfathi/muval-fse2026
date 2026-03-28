type[@boxed] 'a eff =
| Get : int(*ctxinfo*) -> int eff
| Set : int -> unit eff

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


(* from https://github.com/ocaml-multicore/effects-examples/blob/master/state.ml *)

let[@annot_MB "
  int -> (unit -> ({
    Get: int -> (int  -> int->int*int) -> int->int*int,
    Set: int -> (unit -> int->int*int) -> int->int*int
  } |> int / int->int*int => int->int*int)) -> int * int
"] run_state init (main : unit -> int) =
  match_with main () {
    retc = (fun res x -> (x, res));
    exnc = raise;
    effc = fun (type b) (e : b eff) ->
      match e with
      | Get _ctx -> Some (fun (k : (b, _) continuation) ->
          fun (x : int) -> continue k x x)
      | Set y -> Some (fun k ->
          fun (_x : int) -> continue k () y)
  } init


(*****************)

(* from https://github.com/daanx/effect-bench/blob/main/src/mstate.ml *)

let main init =
  run_state init (fun () ->
    let rec counter c =
      let i = perform (Get c(*Dummy*)) in
      if i = 0 then c
      else (perform (Set (i - 1)); counter (c + 1))
    in
    counter 0
  )

[@@@assert "typeof(main) <: (init: {z: int | z >= 0}) -> {z: int | z = init} * {z: int | z = 0}"]
(* unsat 60s : NG *)

(* [@@@assert "typeof(main) <: (init: {z: int | z >= 0}) -> {z: int | z = init} * {z: int | z >= 0}"] *)
(* unsat 60s : NG *)

(* [@@@assert "typeof(main) <: (init: {z: int | z >= 0}) -> {z: int | true} * {z: int | z = 0}"] *)
(* unsat 100s : NG *)

(* [@@@assert "typeof(main) <: (init: {z: int | z >= 0}) -> {z: int | z >= 0} * {z: int | z >= 0}"] *)
(* sat 60s : OK *)

(* [@@@assert "typeof(main) <: (init: {z: int | z >= 0}) -> {z: int | z = init} * {z: int | false}"] *)
(* unsat : OK *)