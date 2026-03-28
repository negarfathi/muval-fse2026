type 'a eff =
| Get : int eff
| Get2 : int eff
| Set : int -> unit eff
| Set2 : int -> unit eff

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

let max_ a b : int = if a >= b then a else b
let ignore _ = ()

(* from https://github.com/matijapretnar/eff/blob/master/examples/modulus.eff *)

(* let state initial = handler
  | effect Get k -> (fun m -> k m m)
  | effect (Set n) k -> (fun m -> k () n)
  | x -> (fun _ -> x)
  | finally g -> g initial
;; *)
(* let unhandled_ref_mu f a =
  perform (Set 0);
  let b i =
    let current = perform Get in
    let new_i = max current i in
    perform (Set new_i);
    a i
  in
  ignore (f b); perform Get
;; *)
(* let ref_mu f a =
  with state 0 handle
    unhandled_ref_mu f a
;; *)
(* let f a = 0 * a 10 *)
(* mu f (fun i -> 30 + i * i) *)

let main () =
  let f a = 0 * a 10 in
  let sequence = (fun i -> 30 + i * i) in
  match_with (fun () ->
    perform (Set 0);
    let b i =
      let current = perform Get in
      let new_i = max_ current i in
      perform (Set2 new_i);
      sequence i
    in
    ignore (f b); perform Get2
  ) () {
    retc = (fun x -> (fun n -> n));
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Set n -> Some (fun (k: (a, _) continuation) ->
          fun (_s: int) -> continue k () n
        )
      | Set2 n -> Some (fun (k: (a, _) continuation) ->
          fun (_s: int) -> continue k () n
        )
      | Get -> Some (fun (k: (a, _) continuation) ->
          fun s -> continue k s s
        )
      | Get2 -> Some (fun (k: (a, _) continuation) ->
          fun s -> continue k s s
        )
  } 0

(* [@@@assert "typeof(main) <: unit -> {z: int | z = 10}"] *)