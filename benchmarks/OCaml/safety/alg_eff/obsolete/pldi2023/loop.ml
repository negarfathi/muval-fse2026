type 'a eff =
| Foo : (unit -> 'a) eff

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

let f () = perform Foo ()

let res: int =
  try_with f () {
    effc = fun (type a) (e : a eff) ->
      match e with
      | Foo -> Some (fun (k : (a, _) continuation) ->
          continue k (fun () -> perform Foo ())
        )
  }

[@@@assert "typeof(res) <: {z: int | false}"]