type 'a eff =
| Decide : bool eff
| Decide2 : bool eff

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

(* with choose_all2 handle
with choose_all handle
  let x = (if perform Decide then 10 else 20) in
  let y = (if perform Decide2 then 0 else 5) in
    x - y;; *)
let main () =
  let choose_all (body: unit -> int) =
    match_with body () {
      retc = (fun x -> [x]);
      exnc = raise;
      effc = fun (type a) (e: a eff) -> match e with
        | Decide -> Some (fun (k: (a, _) continuation) ->
            continue k true @ continue k false
          )
        | Decide2 -> Some (fun (k: (a, _) continuation) -> (* forwarding *)
            continue k (perform Decide2)
          )
    }
  in
  let choose_all2 (body: unit -> int list) =
    match_with body () {
      retc = (fun x -> [x]);
      exnc = raise;
      effc = fun (type a) (e: a eff) -> match e with
        | Decide2 -> Some (fun (k: (a, _) continuation) ->
            continue k true @ continue k false
          )
    }
  in
  choose_all2 (fun () ->
    choose_all (fun () ->
      let x = (if perform Decide then 10 else 20) in
      let y = (if perform Decide2 then 0 else 5) in
      x - y
    )
  )
(* [[10; 20]; [10; 15]; [5; 20]; [5; 15]] *)