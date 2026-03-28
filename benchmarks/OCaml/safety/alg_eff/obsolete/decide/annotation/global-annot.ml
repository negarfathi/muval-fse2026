type[@boxed] 'a eff =
| Decide : int(*ctxinfo*) -> bool eff

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

let max a b : int = if a >= b then a else b

[@@@rtype "Decide_arm ::
  (ctx:{z:int|z=0||z=10||z=20})
  -> ((y:bool)
    -> {z:int|(ctx=0 =>((y=true=>z=10)&&(y=false=>z=20)))
            &&(ctx=10=>((y=true=>z=10)&&(y=false=>z=5)))
            &&(ctx=20=>((y=true=>z=20)&&(y=false=>z=15)))}
  ) -> {z:int|(ctx=0 =>z=20)
            &&(ctx=10=>z=10)
            &&(ctx=20=>z=20)}
"]
(* [@@@rtype "Decide_arm ::
  (ctx:{z:int|z=0||z=10||z=20})
  -> ((y:bool)
    -> {z:int|(ctx=0 =>((y=true=>z=10)&&(y=false=>z=20)))
            &&((ctx=10||ctx=20)=>((y=true=>z=ctx)&&(y=false=>z=ctx-5)))}
  ) -> {z:int|(ctx=0 =>z=20)
            &&((ctx=10||ctx=20)=>z=ctx)}
"] *)

let main () =
  try_with (fun () ->
    let x = (if perform (Decide 0(*Dummy*)) then 10 else 20) in
    let y = (if perform (Decide x(*Dummy*)) then 0 else 5) in
    x - y
  ) () {
    effc = fun (type a) (e: a eff) -> match e with
      | Decide _ctx -> Some (fun (k: (a, _) continuation) ->
          max (continue k true) (continue k false)
        )
  }

[@@@assert "typeof(main) <: unit -> {z: int | z = 20}"]
(*  *)
[@@@assert "typeof(main) <: unit -> {z: int | z = 15}"]
(*  *)

(* timeout 3min *)