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

let main () =
  try_with (fun () ->
    let x = (if (perform
      [@annot_arm "
        (ctx:{z:int|z=0})
        -> ((b:bool)
          -> {z:int|(b=true=>z=10)&&(b=false=>z=20)}
        ) -> {z:int|z=20}
      "]
    ) (Decide 0(*Dummy*)) then 10 else 20) in
    let y = (if (perform
      [@annot_arm "
        (ctx:{z:int|z=10||z=20})
        -> ((b:bool)
          -> {z:int|
                  (ctx=10=>((b=true=>z=10)&&(b=false=>z=5)))
                  &&(ctx=20=>((b=true=>z=20)&&(b=false=>z=15)))}
        ) -> {z:int|
                  (ctx=10=>z=10)
                  &&(ctx=20=>z=20)}
      "]
      (* [@annot_arm "
        (ctx:{z:int|z=10||z=20})
        -> ((b:bool)
          -> {z:int|(b=true=>z=ctx)&&(b=false=>z=ctx-5)}
        ) -> {z:int|z=ctx}
      "] *)
      (* [@annot_arm "
        (ctx:{z:int|z=10||z=20})
        -> ((b:bool)
          -> {z:int|(b=true=>z=x-0)&&(b=false=>z=x-5)}
        ) -> {z:int|z=x}
      "] *)
    ) (Decide x(*Dummy*)) then 0 else 5) in
    x - y
  ) () {
    effc = fun (type a) (e: a eff) -> match e with
      | Decide _ctx -> Some (fun (k: (a, _) continuation) ->
          max (continue k true) (continue k false)
        )
  }

[@@@assert "typeof(main) <: unit -> {z: int | z = 20}"]
(* sat : OK *)
[@@@assert "typeof(main) <: unit -> {z: int | z = 15}"]
(* unsat : OK *)

(* 2.5s *)