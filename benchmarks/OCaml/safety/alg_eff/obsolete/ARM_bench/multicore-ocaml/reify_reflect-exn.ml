type my_exn = My_Exn
type 'a t = Ok of 'a | Exn of my_exn

type[@boxed] 'a eff =
| E: unit t -> unit eff
type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = { retc: 'a -> 'b; exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option}
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

let ignore _ = ()

let return v = Ok v
let bind m k = match m with Ok v -> k v | Exn e -> Exn e
let raise_ exn = Exn exn
let run m catch = match m with Ok v -> v | Exn e -> catch e


let reify f = match_with f () {
  retc = (fun x -> return x);
  exnc = raise;
  effc = fun (type a) (e : a eff) ->
    match e with
    | E m -> Some (fun (k: (a, _) continuation) -> bind m (continue k))
}
let reflect m = perform (E m)


let raise_ e = reflect (raise_ e)
let run_exception catch m = run (reify m) catch



let exception_example () =
  (* Printf.printf "Raising an exception\n"; *)
  raise_ My_Exn |> ignore
  (* Printf.printf "This shouldn't be displayed\n" *)

let print_exception e =
  ()

let () =
  run_exception print_exception exception_example