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
  let body () =
    let rec set_until0 n =
      if n <= 0 then () else (perform (Set n); set_until0 (n - 1))
    in
    set_until0 2 ; perform (Get ())
  in
  match_with body () {
    retc = (fun v -> fun s -> v);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Set n -> Some (fun (k: (a, _) continuation) ->
          fun (_s: int) -> continue k () n
        )
      | Get _u -> Some (fun (k: (a, _) continuation) ->
          fun s -> continue k s s
        )
  } 0

[@@@assert "typeof(main) <: unit -> {z: int | z >= 0 && z <= 2}"]