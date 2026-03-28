external event_serve : unit -> unit = "unknown"
external event_feed : unit -> unit = "unknown"
external event_done : unit -> unit = "unknown"
external shift0 : (('a (*T*) -> 'b (*C1*)) -> 'c (*C2*)) -> 'd (*T*) = "unknown"
external reset : (unit -> 'a (*T*)) -> 'b (*C*) = "unknown"
external read_line : unit -> string = "unknown"

[@@@rtype "event_serve :: unit -> (unit & x. x=ev(serve), y. false)"]
[@@@rtype "event_feed :: unit -> (unit & x. x=ev(feed), y. false)"]
[@@@rtype "event_done :: unit -> (unit & x. x=ev(done), y. false)"]

type res = Done | Yet of (unit -> res)

let get () = shift0 (fun k1 -> shift0 (fun k2 s -> k2 (k1 s) s))
let set s = shift0 (fun k1 -> shift0 (fun k2 _ -> k2 (k1 s) s))

let rec server () =
  let x = read_line () in
  event_serve ();
  set x;
  shift0 (fun k -> k);
  server ()

let rec client () =
  let x = get () in
  if x = "END" then (event_done (); Done)
  else (
    event_feed ();
    print_endline x;
    shift0 (fun k -> Yet k);
    client ())

let rec iter server_process client_res =
  match client_res with
  | Done -> ()
  | Yet k ->
    let sp = server_process () in
    let cres = k () in
    iter server_process cres
let main () =
  (reset (fun () ->
       let server_process = reset server in
       let client_res = reset client in
       iter client_res;
       fun s -> s))
    "initial_state"

[@@@assert "typeof(main) <: unit -> (unit & x. x in (ev(serve) ev(feed))* ev(done),
                                            y. y in (ev(serve) ev(feed))!"]
