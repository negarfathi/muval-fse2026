type[@boxed] 'a eff =
| Select_int : int * int list -> int eff

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


type 'a result = Failure | Success of 'a

let rec assoc key = function
| [] -> None
| (k, v) :: xs -> if k = key then Some v else assoc key xs

(* from https://github.com/matijapretnar/eff/blob/master/examples/select.eff *)

let[@annot_MB "
  bool -> (unit -> ({Select_int: s1} |> bool / s => s)) -> (int * int) list result
"] selection_collector desired_outcome (body: unit -> bool) =
  match_with body () {
    retc = (fun outcome ->
      fun selected ->
        if outcome = desired_outcome then Success selected else Failure
    );
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Select_int (name, choices) -> Some (fun (k: (a, _) continuation) ->
        fun (selected: (int * int) list) ->
          match assoc name selected with
          | Some y -> (continue k y) selected
          | None ->
            let rec try_choice = function
            | [] -> Failure
            | (y::ys : int list) ->
                (match (continue k y) ((name, y)::selected) with
                  | Success lst -> Success lst
                  | Failure -> try_choice ys)
            in try_choice choices
        )
  } []

let main squared =
  selection_collector true (fun () ->
    let a = perform (Select_int (1, [2; 3])) in
    a * a = squared
  )


let test sq =
  main sq =
    if sq = 4 then Success [(1, 2)]
    else if sq = 9 then Success [(1, 3)]
    else Failure
[@@@assert "typeof(test) <: int -> {z: bool | z = false}"]
(*unsat*)