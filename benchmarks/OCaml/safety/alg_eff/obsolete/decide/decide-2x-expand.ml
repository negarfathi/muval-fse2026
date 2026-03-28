type 'a eff =
| Decide : unit -> bool eff
| Decide2 : unit -> bool eff
| Decide3 : unit -> bool eff
external perform : 'a eff -> 'a = "unknown"

type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

let max_ a b : int = if a >= b then a else b

let main () =
  try_with (fun () ->
    if perform (Decide ()) then
      let y = if perform (Decide2 ()) then 1 else 2 in
      10 - y
    else
      let y = if perform (Decide3 ()) then 1 else 2 in
      20 - y
    ) () {
    effc = fun (type a) (e: a eff) -> match e with
      | Decide _ -> Some (fun (k: (a, _) continuation) ->
          max_ (continue k true) (continue k false)
        )
      | Decide2 _ -> Some (fun (k: (a, _) continuation) ->
          max_ (continue k true) (continue k false)
        )
      | Decide3 _ -> Some (fun (k: (a, _) continuation) ->
          max_ (continue k true) (continue k false)
        )
  }

[@@@assert "typeof(main) <: unit -> {z: int | z = 19}"]
[@@@assert "typeof(main) <: unit -> {z: int | z = 8 || z = 9 || z = 18 || z = 19}"]
