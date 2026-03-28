type 'a eff =
| Dummy
type exn =
| Raise

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
external raise : exn -> 'a = "unknown"

(* let optionalize e = handler
| e#raise _ _ -> None
| val x -> Some x *)
let[@annot_MB "
  (unit -> ({Raise: s} |> int / s2 => s2)) -> int option
"] optionize (body: unit -> int) =
  match_with body () {
    retc = (fun x -> Some x);
    exnc = (fun Raise -> None);
    effc = fun (type a) (e: a eff) ->
      match e with
      | Dummy -> Some (fun (k : (a, _) continuation) ->
          None
        )
  }

let main () =
  optionize (fun () ->
    let div n m =
      if m = 0 then raise Raise else n / m
    in
    div 6 2
  )

[@@@assert "typeof(main) <: unit -> {z: int option | z = Some 3}"]
[@@@assert "typeof(main) <: unit -> {z: int option | z = None}"]