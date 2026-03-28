type 'a eff =
| Choose : int * int -> int eff
external perform : 'a eff -> 'a = "unknown"

type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

let max_ a b : int = if a >= b then a else b

let main () =
  let body () =
    let x = perform (Choose (10, 20)) in
    let y = perform (Choose (1, 2)) in
    x - y
  in
  try_with body () {
    effc = fun (type a) (e: a eff) -> match e with
      | Choose (a, b) -> Some (fun (k: (a, _) continuation) ->
        max_ (continue k a) (continue k b)
        )
  }

[@@@assert "typeof(main) <: unit -> {z: int | z = 19}"]
[@@@assert "typeof(main) <: unit -> {z: int | z = 8 || z = 9 || z = 18 || z = 19}"]
