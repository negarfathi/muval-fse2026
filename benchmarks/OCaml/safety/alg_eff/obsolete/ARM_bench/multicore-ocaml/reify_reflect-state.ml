type[@boxed] 'a eff =
| E: (int -> int * 'b) -> 'b eff
type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = { retc: 'a -> 'b; exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option}
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"


let return v s = (s, v)
let bind m k s = let s, a = m s in k a s
let get s = (s, s)
let put s _ = (s, ())
let run s init = s init


let reify f = match_with f () {
  retc = (fun x -> return x);
  exnc = raise;
  effc = fun (type a) (e : a eff) ->
    match e with
    | E m -> Some (fun k -> bind m (continue k))
}
let reflect m = perform (E m)


let put v = reflect (put v)
let get () = reflect get
let run_state init f =
  run (reify f) init


let state_example () =
  let initial = get () in
  Printf.printf "Initial state: %d\n" initial;
  put 10;
  assert (get () = 10);
  put (get () + 1);
  assert (get () = 11);
  put 12;
  (initial, get ())

let () =
  run_state 10 state_example |> ignore