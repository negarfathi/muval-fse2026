type 'a eff =
| Shift : ((int -> int) -> int) -> int eff

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

(* let reset =
  let rec reset_handler () = handler
    | effect (Shift f) k -> with reset_handler () handle (f k)
  in
  reset_handler ()
;; *)
(* with reset handle
  perform (Shift (fun k -> k (k (k 7)))) * 2 + 1
;; *)
let main () =
  let rec reset body =
    try_with body () {
      effc = fun (type a) (e: a eff) -> match e with
        | Shift f -> Some (fun (k: (a, _) continuation) ->
            reset (fun () -> f (continue k))
          )
    }
  in
reset (fun () -> perform (Shift (fun k -> k (k (k 7)))) * 2 + 1)
