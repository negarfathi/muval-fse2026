type 'a eff =
| Yield : unit eff
| Spawn : (unit -> unit) -> unit eff
| Get_next : (unit -> unit) option eff
| Add_to_queue : (unit -> unit) -> unit eff

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

let rec iter f = function
| [] -> ()
| x :: xs -> f x; iter f xs

(* from https://github.com/matijapretnar/eff/blob/master/examples/threads.eff *)


(* let round_robin =
  let enqueue t =
    perform (Add_to_queue t)
  in
  let dequeue () =
    match perform Get_next with
    | None -> ()
    | Some t -> t ()
  in
  let rec rr_handler () = handler
    | effect Yield k -> enqueue k; dequeue ()
    | effect (Spawn t) k -> enqueue k; with rr_handler () handle t ()
    | () -> dequeue ()
  in
  rr_handler ()
;; *)
let round_robin body =
  let enqueue t =
    perform (Add_to_queue t)
  in
  let dequeue () =
    match perform Get_next with
    | None -> ()
    | Some t -> t ()
  in
  let rec rr_handler body =
    match_with body () {
      retc = (fun _ -> dequeue ());
      exnc = raise;
      effc = fun (type a) (e: a eff) -> match e with
        | Yield -> Some (fun (k: (a, _) continuation) ->
            enqueue (continue k); dequeue ()
          )
        | Spawn t -> Some (fun (k: (a, _) continuation) ->
            enqueue (continue k); rr_handler t
        )
    }
  in
  rr_handler body

(* let queue initial = handler
  | effect Get_next k ->
    ( fun queue -> match queue with
        | [] -> (k None) []
        | hd::tl -> (k (Some hd)) tl )
  | effect (Add_to_queue y) k -> ( fun queue -> (k ()) (queue @ [y]))
  | x -> ( fun _ -> x)
  | finally x -> x initial
;; *)
(* with queue [] handle
  with round_robin handle
  perform (Spawn (fun _ ->
    iter (fun x -> perform (Print x); perform Yield) ["a"; "b"; "c"; "d"; "e"]
    ));
  perform (Spawn (fun _ ->
    iter (fun x -> perform (Print x); perform Yield) ["A"; "B"; "C"; "D"; "E"]
    ))
;; *)
let main () =
  match_with (fun () ->
    round_robin (fun () ->
      perform (Spawn (fun _ ->
        iter (fun x -> (* perform (Print x); *) perform Yield) ["a"; "b"; "c"; "d"; "e"]
        ));
      perform (Spawn (fun _ ->
        iter (fun x -> (* perform (Print x); *) perform Yield) ["A"; "B"; "C"; "D"; "E"]
        ))
    )
  ) () {
    retc = (fun x -> (fun _ -> x));
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Get_next -> Some (fun (k: (a, _) continuation) ->
          (fun queue -> match queue with
            | [] -> (continue k None) []
            | hd::tl -> (continue k (Some hd)) tl )
        )
      | Add_to_queue y -> Some (fun (k: (a, _) continuation) ->
          (fun queue -> (continue k ()) (queue @ [y]))
        )
  } []

