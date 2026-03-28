type 'a eff =
| Select_intA : int list -> int eff
| Select_intB : int list -> int eff
| Select_intC : int list -> int eff
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
  let body () =
    let a = perform (Select_intA [3;4]) in
    let b = perform (Select_intB [4;5]) in
    let c = perform (Select_intC [5;6]) in
      a*a + b*b = c*c
  in
  match_with body () {
    retc = (fun outcome -> fun selected -> if outcome = true then Success selected else Failure);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Select_intA (choices: int list) -> Some (fun (k: (a, _) continuation) ->
        fun ((selected_a, selected_b, selected_c): int option * int option * int option) ->
          (match selected_a with
           | Some y -> (continue k y) (selected_a, selected_b, selected_c)
           | None ->
               let rec try_choice = function
                 | [] -> Failure
                 | y::ys ->
                     (match (continue k y) (Some (y : int), selected_b, selected_c) with
                        | Success lst -> Success lst
                        | Failure -> try_choice ys)
               in try_choice choices))
      | Select_intB (choices: int list) -> Some (fun (k: (a, _) continuation) ->
        fun ((selected_a, selected_b, selected_c): int option * int option * int option) ->
          (match selected_a with
          | Some y -> (continue k y) (selected_a, selected_b, selected_c)
          | None ->
              let rec try_choice = function
                | [] -> Failure
                | y::ys ->
                    (match (continue k y) (Some (y : int), selected_b, selected_c) with
                        | Success lst -> Success lst
                        | Failure -> try_choice ys)
              in try_choice choices))
      | Select_intC (choices: int list) -> Some (fun (k: (a, _) continuation) ->
        fun ((selected_a, selected_b, selected_c): int option * int option * int option) ->
          (match selected_a with
            | Some y -> (continue k y) (selected_a, selected_b, selected_c)
            | None ->
                let rec try_choice = function
                  | [] -> Failure
                  | y::ys ->
                      (match (continue k y) (Some (y : int), selected_b, selected_c) with
                        | Success lst -> Success lst
                        | Failure -> try_choice ys)
                in try_choice choices))
  } (None, None, None)