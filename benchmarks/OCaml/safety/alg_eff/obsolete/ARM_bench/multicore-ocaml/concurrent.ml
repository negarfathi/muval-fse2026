type[@boxed] 'a eff =
| Fork : (unit -> unit) -> unit eff
| Yield : unit eff
type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = { retc: 'a -> 'b; exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option}
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

type 'a queue = 'a list ref

let create () = ref []
let push v q = q := v :: !q
let is_empty q = match !q with | [] -> true | _::_ -> false
let pop q = match !q with | [] -> assert false | h :: t -> q := t; h


(* from https://github.com/ocaml-multicore/effects-examples/blob/master/concurrent.ml *)
(* https://github.com/ocaml-multicore/effects-examples/blob/master/sched.ml *)

let fork f = perform (Fork f)
let yield () = perform Yield

let[@annot_MB "
  (unit -> ({Yield: s1, Fork: s2} |> unit / s => s)) -> unit
"] run main =
  let run_q = create () in
  let enqueue k = push k run_q in
  let dequeue () =
    if is_empty run_q then ()
    else (pop run_q) ()
  in
  let rec spawn f =
    match_with f () {
      retc = (fun () -> dequeue ());
      exnc = (fun e ->
        dequeue ());
      effc = fun (type a) (e : a eff) ->
        match e with
          | Yield ->
            Some (fun (k : (a, unit) continuation) -> enqueue (continue k); dequeue ())
          | Fork f ->
            Some (fun (k : (a, unit) continuation) -> enqueue (continue k); spawn f)
    }
  in
  spawn main

let main id depth =
  let counter = ref 0 in

  let rec f id depth =
    counter := !counter + 1;
    if depth > 0 then begin
      fork (fun () -> f (id * 2 + 1) (depth - 1));
      fork (fun () -> f (id * 2 + 2) (depth - 1))
    end else begin
      yield ();
    end
  in

  f id depth;
  !counter

let rec pow base exp = if exp = 0 then 1 else base * pow base (exp - 1)

let test id depth = assert (main id depth <= pow 2 depth - 2)
[@@@assert "typeof(main) <: int -> {z:int | z >= 0} -> unit"]

(* run (fun () -> f 0 2)
      0
    /  \
  1    2
  / \  / \
3   4 5  6
*)