type 'a eff =
| Select_intA : string * int list -> int eff
| Select_intB : string * int list -> int eff
| Select_intC : string * int list -> int eff
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

let rec assoc k = function
| [] -> None
| (kx, vx) :: xs -> if k = kx then Some vx else assoc k xs

(* from https://github.com/matijapretnar/eff/blob/master/examples/select.eff *)

type 'a result = Failure | Success of 'a

(* let selection_collector desired_outcome = handler
  | effect (Select_int (name, choices)) k -> (fun selected ->
    (match assoc name selected with
     | Some y -> (k y) selected
     | None ->
         let rec try_choice = function
           | [] -> Failure
           | y::ys ->
               (match (k y) ((name,y)::selected) with
                  | Success lst -> Success lst
                  | Failure -> try_choice ys)
         in try_choice choices))
  | outcome -> (fun selected ->
    if outcome = desired_outcome then Success selected else Failure)
  | finally f -> f []
;;
with selection_collector true handle
  let a = perform (Select_int ("a", [5;6;7;8])) in
  let b = perform (Select_int ("b", [9;10;11;12])) in
  let c = perform (Select_int ("c", [13;14;15;16])) in
    a*a + b*b = c*c;; *)

let main () =
  match_with (fun () ->
    let a = perform (Select_intA ("a", [5;6;7;8])) in
    let b = perform (Select_intB ("b", [9;10;11;12])) in
    let c = perform (Select_intC ("c", [13;14;15;16])) in
      a*a + b*b = c*c
  ) () {
    retc = (fun outcome -> fun selected -> if outcome = true then Success selected else Failure);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Select_intA (name, choices) -> Some (fun (k: (a, _) continuation) ->
        fun (selected: (string * int) list) ->
          (match assoc name selected with
           | Some y -> (continue k y) selected
           | None ->
               let rec try_choice = function
                 | [] -> Failure
                 | y::ys ->
                     (match (continue k y) ((name, (y: int))::selected) with
                        | Success lst -> Success lst
                        | Failure -> try_choice ys)
               in try_choice choices))
      | Select_intB (name, choices) -> Some (fun (k: (a, _) continuation) ->
        fun (selected: (string * int) list) ->
          (match assoc name selected with
          | Some y -> (continue k y) selected
          | None ->
              let rec try_choice = function
                | [] -> Failure
                | y::ys ->
                    (match (continue k y) ((name, y)::selected) with
                        | Success lst -> Success lst
                        | Failure -> try_choice ys)
              in try_choice choices))
      | Select_intC (name, choices) -> Some (fun (k: (a, _) continuation) ->
        fun (selected: (string * int) list) ->
          (match assoc name selected with
            | Some y -> (continue k y) selected
            | None ->
                let rec try_choice = function
                  | [] -> Failure
                  | y::ys ->
                      (match (continue k y) ((name, y)::selected) with
                        | Success lst -> Success lst
                        | Failure -> try_choice ys)
                in try_choice choices))
  } []

let test = assert (main () = Success [("c", 13); ("b", 12); ("a", 5)])

[@@@assert "typeof(test) <: unit"]