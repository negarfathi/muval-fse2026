type 'a eff =
| Collect : int -> unit eff
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

let main init =
  let body () =
    let rec collect_from n =
      if n = 0 then () else (
        perform (Collect n); collect_from (n - 1))
    in
    collect_from 2
  in
  match_with body () {
    retc = (fun v -> fun s -> s);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Collect n -> Some (fun (k: (a, _) continuation) ->
          fun (s: int) -> continue k () (s + n)
        )
  } init

[@@@assert "typeof(main) <: (init: int) -> {z: int | z >= init}"]