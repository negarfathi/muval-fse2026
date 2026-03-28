type 'a eff =
| Set : int -> unit eff
| Get : unit -> int eff
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

let main () =
  match_with (fun () ->
    perform (Set 1);
    perform (Get ())
  ) () {
    retc = (fun v -> fun s -> v);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Set n -> Some (fun (k: (a, _) continuation) ->
          fun (_s: int) -> continue k () n
        )
      | Get _ -> Some (fun (k: (a, _) continuation) ->
          fun s -> continue k s s
        )
  } 0

[@@@assert "typeof(main) <: unit -> {z: int | z = 1}"]
[@@@assert "typeof(main) <: unit -> {z: int | z = 0}"]