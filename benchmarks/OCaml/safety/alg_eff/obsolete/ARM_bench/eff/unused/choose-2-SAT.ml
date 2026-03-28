type[@boxed] 'a eff =
| Decide : bool eff

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

let[@annot_MB "
  ctx -> (unit -> ({Decide: s1} |> int / s => s)) -> int list
"] choose_all _ctx (body: unit -> int) =
  match_with body () {
    retc = (fun x -> [x]);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Decide -> Some (fun (k: (a, _) continuation) ->
          continue k true @ continue k false
        )
  }


let main a =
  choose_all a(*dummy*) (fun () ->
    let b = if perform Decide then 1 else 2 in
    a - b
  )

let test a = main a = [a - 1; a - 2]
[@@@assert "typeof(test) <: int -> {z: bool | z = true}"]