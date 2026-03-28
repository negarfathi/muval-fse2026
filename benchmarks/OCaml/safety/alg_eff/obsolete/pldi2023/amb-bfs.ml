type iilist = Nil_II | Cons_II of int * int * iilist

type result = Failure | Success of iilist
type 'a eff =
| Select : bool eff
| Get_next : ((bool -> result) * bool) option eff
| Add_to_queue : (bool -> result) * bool -> unit eff

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
let rec filter f = function
  | [] -> []
  | x :: xs -> if f x then x :: filter f xs else filter f xs
let rec forall_ii f = function
  | Nil_II -> true
  | Cons_II (x1, x2, xs) -> f (x1, x2) && forall_ii f xs

let abs x: int = if x >= 0 then x else -x

(* from https://github.com/matijapretnar/eff/blob/master/examples/amb.eff *)

let rec select_from = function
  | [] -> None
  | x :: xs -> if perform Select then Some x else select_from xs

let no_attack (x, y) (x', y') =
  x <> x' && y <> y' && abs (x - x') <> abs (y - y')

let available x qs =
  filter (fun y -> forall_ii (no_attack (x, y)) qs) [1;2;3;4;5;6;7;8]


(* let queue initial = handler
  | effect Get_next k ->
    ( fun queue -> match queue with
    | [] -> k None []
    | hd::tl -> k (Some hd) tl )
  | effect (Add_to_queue y) k -> ( fun queue ->  k () (queue @ [y]))
  | x -> ( fun _ -> x)
  | finally x -> x initial
;; *)
let queue initial body =
  match_with body () {
    retc = (fun x -> (fun _ -> x));
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Get_next -> Some (fun (k: (a, _) continuation) ->
          fun queue -> match queue with
          | [] -> continue k None []
          | hd :: tl -> continue k (Some hd) tl
        )
      | Add_to_queue (y1, y2) -> Some (fun (k: (a, _) continuation) ->
        fun queue -> continue k () (queue @ [(y1, y2)])
      )
  } initial


(* let bfs =
  let run_next () =
    match perform Get_next with
    | None -> Failure
    | Some (k,x) -> k x
  in
  handler
| effect Select k ->
  perform (Add_to_queue (k, true));
  perform (Add_to_queue (k, false));
  run_next ()
| Success x -> Success x
| Failure -> run_next ()
;; *)
let bfs body =
  let run_next () =
    match perform Get_next with
    | None -> Failure
    | Some (k,x) -> ((k x)[@annot_MB "result"])
  in
  match_with body () {
    retc = (fun x ->
      match x with
      | Success x -> Success x
      | Failure -> run_next ()
    );
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Select -> Some (fun (k: (a, _) continuation) ->
        perform (Add_to_queue (continue k, true));
        perform (Add_to_queue (continue k, false));
        run_next ()
        )
  }


(* with queue [] handle
with bfs handle
  let rec place x qs =
    if x = 9 then Success qs else
      match select_from (available x qs) with
      | Some y -> place (x+1) ((x, y) :: qs)
      | None -> Failure
  in place 1 []
;; *)
let main () =
  queue [] (fun () ->
    bfs (fun () ->
      let rec place x qs =
        if x = 9 then Success qs else
          match select_from (available x qs) with
          | Some y -> place (x + 1) (Cons_II(x, y, qs))
          | None -> Failure
      in place 1 Nil_II
    )
  )
