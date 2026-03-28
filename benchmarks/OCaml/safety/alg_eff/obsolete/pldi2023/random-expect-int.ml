type 'a eff =
| Pick : int -> bool eff

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


(* from https://github.com/matijapretnar/eff/blob/master/examples/random.eff *)


(* let expectation = handler
  | v -> v
  | effect (Pick p) k ->
    p *. (k true) +. (1.0 -. p) *. (k false)
;; *)
let[@annot_MB "
  (unit -> ({Pick: s} |> int / ss => ss)) -> int
"] expectation body =
  try_with body () {
    effc = fun (type a) (e: a eff) -> match e with
      | Pick p -> Some (fun (k: (a, _) continuation) ->
          (p * (continue k true) + (100 - p) * (continue k false)) / 100
        )
  }

let main () =
  expectation (fun () ->
    if perform (Pick 30) then 200 else 100
  )

[@@@assert "typeof(main) <: unit -> {z: int | z = 130}"]
[@@@assert "typeof(main) <: unit -> {z: int | z = 130 || z = 170 || z = 100 || z = 200}"]
