type[@boxed] 'a eff =
| E : int -> unit eff

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

(* from https://github.com/ocaml-multicore/effects-examples/blob/master/dyn_wind.ml *)

let[@annot_MB "
(unit -> ({E: s1} |> unit / s => s))
-> (unit -> ({E: s2} |> int / ({E: s1} |> int / s => s) => ({E: s1} |> int / s => s)))
-> (unit -> ({E: s1} |> unit / s => s))
-> ({E: s} |> int / s => s)
"] dynamic_wind (before_thunk: unit -> unit) (thunk: unit -> int) (after_thunk: unit -> unit) =
  before_thunk ();
  let res =
    try_with thunk () {
      (* retc = (fun x -> x); *)
      (* exnc = (fun e -> after_thunk (); raise e); *)
      effc = fun (type a) (e : a eff) -> match e with
      | E _ctx -> Some (fun (k : (a, _) continuation) ->
        after_thunk ();
        let res' = perform (E _ctx) in
        before_thunk ();
        continue k res')
    }
  in
  after_thunk ();
  res

let printf _ = ()

let main () =
  let bt () = printf "IN\n" in
  let at () = printf "OUT\n" in
  let foo () =
    printf "peform E\n"; perform (E 1);
    printf "peform E\n"; perform (E 2);
    printf "done\n";
    0
  in
  try_with (dynamic_wind bt foo) at
  { effc = fun (type a) (e : a eff) -> 
    match e with
    | E _ctx -> Some (fun (k : (a, _) continuation) ->
      printf "handled E\n"; continue k ())
  }