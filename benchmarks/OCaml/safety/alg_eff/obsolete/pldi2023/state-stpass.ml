type 'a eff =
| Get : int eff
| Get2 : int eff
| Get3 : int eff
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

(* from https://github.com/ocaml-multicore/effects-examples/blob/master/state.ml *)


let main () =
  let body () =
    let n = perform Get in
    perform (Set 42);
    let m = perform Get2 in
    perform (Set2 21);
    let l = perform Get3 in
    [n; m; l]
  in
  match_with body () {
    retc = (fun res -> (fun x -> (x, res)));
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Get -> Some (fun (k: (a, _) continuation) ->
          fun (x:int) -> continue k x x
        )
      | Get2 -> Some (fun (k: (a, _) continuation) ->
          fun x -> continue k x x
        )
      | Get3 -> Some (fun (k: (a, _) continuation) ->
          fun x -> continue k x x
        )
      | Set y -> Some (fun (k: (a, _) continuation) ->
          fun _x -> continue k () y
        )
      | Set2 y -> Some (fun (k: (a, _) continuation) ->
          fun _x -> continue k () y
        )
  } 0

[@@@assert "typeof(main) <: unit -> {z: int | z = 21} * {z: int list | z = ::(0, ::(42, ::(21, [])))}"]