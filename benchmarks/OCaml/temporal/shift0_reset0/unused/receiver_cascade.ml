external nondet_bool : unit -> bool = "unknown"
external event_ready : unit -> unit = "unknown"
external event_wait : unit -> unit = "unknown"
external event_send : unit -> unit = "unknown"
external event_receive : unit -> unit = "unknown"
external shift0 : (('a (*T*) -> 'b (*C1*)) -> 'c (*C2*)) -> 'd (*T*) = "unknown"
external reset : (unit -> 'a (*T*)) -> 'b (*C*) = "unknown"

[@@@rtype "nondet_bool :: unit -> bool"]
[@@@rtype "event_ready :: unit -> (unit & x. x=ev(ready), y. false)"]
[@@@rtype "event_wait :: unit -> (unit & x. x=ev(wait), y. false)"]
[@@@rtype "event_send :: unit -> (unit & x. x=ev(send), y. false)"]
[@@@rtype "event_receive :: unit -> (unit & x. x=ev(receive), y. false)"]

let rec wait_until_ready ready =
  if ready ()
  then event_ready ()
  else (event_wait (); wait_until_ready ready)

let rec send x ready (receiver (*: int / 'a -> 'b / (int * ('b / 'c -> 'a / 'c))*)) : unit =
  wait_until_ready ready;
  event_send ();
  (receiver x : unit);
  send (x+1) ready receiver

let ready () = if nondet_bool () then true else false

let receiver_cascade (x : int) : unit =
  event_receive ();
  shift0 (fun k -> (x, k))

let main () =
  let (x, k) = reset (fun () -> send 0 ready receiver_cascade) in
  ()

[@@@assert "typeof(main) <: unit -> (unit & x. x in ev(wait)* ev(ready) ev(send) ev(receive),
                                            y. y in ev(wait)! | (ev(wait)* ev(ready) ev(send) ev(receive))!"]
