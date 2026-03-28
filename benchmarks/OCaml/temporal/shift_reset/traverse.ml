type tree_t = Empty | Node of tree_t * int * tree_t
type 'a result_t = Done | Next of int * (unit -> 'a result_t)
(*(unit / 'a -> 'a result_t / 'a)*)

external shift : (('a (*T*) -> 'b (*C1*)) -> 'c (*C2*)) -> 'd (*T*) = "unknown"
external reset : (unit -> 'a) -> 'b (*C*) = "unknown"
external event_done : unit -> unit = "unknown"
external event_next : unit -> unit = "unknown"

[@@@rtype "event_done :: unit -> (unit & x. x=ev(done), y. false)"]
[@@@rtype "event_next :: unit -> (unit & x. x=ev(next), y. false)"]

let yield n = shift(*((unit (*T*) -> int result_t (*C1*)) -> int result_t (*C2*)) -> unit (*T*)*)
    (fun k -> Next (n, k))

let rec walk tree =
  match tree with
  | Empty -> ()
  | Node (t1, n, t2) ->
    walk t1;
    yield n;
    walk t2

let start tree =
  reset(*(unit -> int result_t (*T*)) -> int result_t (*C*)*) (fun () ->
      walk tree;
      Done)

let add_tree tree =
  let rec loop r =
    match r with
    | Done ->
      event_done ();
      0
    | Next (n, k) ->
      event_next ();
      n + loop (k ())
  in
  loop (start tree)

[@@@assert "typeof(add_tree) <: int result_t -> (int & x. x in ev(next)* ev(done),
                                                       y. y in ev(next)!"]
