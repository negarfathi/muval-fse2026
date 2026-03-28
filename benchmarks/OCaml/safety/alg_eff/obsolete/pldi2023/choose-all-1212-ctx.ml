type 'a eff =
| Decide : int(*ctxinfo*) -> bool eff
| Decide2 : int(*ctxinfo*) -> bool eff

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

let rec ( @ ) l1 l2 = match l1 with [] -> l2 | hd :: tl -> hd :: (tl @ l2)

(* from https://github.com/matijapretnar/eff/blob/master/examples/choice.eff *)

(* let choose_all = handler
  | effect Decide k -> k true @ k false
  | x -> [x];; *)
(* let choose_all2 = handler
  | effect Decide2 k -> k true @ k false
  | x -> [x];; *)
(* with choose_all handle
with choose_all2 handle
  let x = (if perform Decide then 10 else 20) in
  let y = (if perform Decide2 then 0 else 5) in
    x - y;; *)
let main () =
  match_with (fun () ->
    match_with (fun () ->
      let x = (if perform (Decide 0) then 10 else 20) in
      let y = (if perform (Decide2 x) then 0 else 5) in
      x - y
    ) () {
      retc = (fun x -> [x]);
      exnc = raise;
      effc = fun (type a) (e: a eff) -> match e with
        | Decide2 _ctx -> Some (fun (k: (a, _) continuation) ->
            continue k true @ continue k false
          )
        | Decide _ctx -> Some (fun (k: (a, _) continuation) -> (* forwarding *)
            continue k (perform (Decide _ctx))
          )
    }
  ) () {
    retc = (fun x -> [x]);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Decide _ctx -> Some (fun (k: (a, _) continuation) ->
          continue k true @ continue k false
        )
  }
(* [[10; 5]; [20; 15]] *)
