type[@boxed] 'a eff =
| Select : bool eff

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


(* from https://github.com/matijapretnar/eff/blob/master/examples/amb.eff *)

let amb_find l =
  try_with (fun () ->
    if perform (Select) then false else true) () {
  effc = fun (type a) (e: a eff) -> match e with
    | Select -> Some (fun (k: (a, _) continuation) ->
        if continue k true then true else continue k false
      )
}

[@@@assert "typeof(amb_find) <: int list -> {z: bool | z = true}"]
