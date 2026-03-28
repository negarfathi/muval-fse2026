type 'a eff =
| Decide : unit -> bool eff
| Decide2 : unit -> bool eff
external perform : 'a eff -> 'a = "unknown"

type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

let max_ a b : int = if a >= b then a else b

let main () =
  let body () =
    let x = if perform (Decide ()) then 10 else 20 in
    let y = if perform (Decide2 ()) then 1 else 2 in
    x - y
  in
  try_with body () {
    effc = fun (type a) (e: a eff) -> match e with
      | Decide _ -> Some (fun (k: (a, _) continuation) ->
          let rt = continue k true in
          let rf = continue k false in
          max_ rt rf
        )
      | Decide2 _ -> Some (fun (k: (a, _) continuation) ->
          let rt = continue k true in
          let rf = continue k false in
          max_ rt rf
        )
  }

[@@@assert "typeof(main) <: unit -> {z: int | z = 19}"]
[@@@assert "typeof(main) <: unit -> {z: int | z = 8 || z = 9 || z = 18 || z = 19}"]
