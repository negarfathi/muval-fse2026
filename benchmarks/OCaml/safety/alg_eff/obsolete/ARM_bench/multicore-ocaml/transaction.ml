type exn =
| Res of int

type[@boxed] 'a eff =
| Update : int ref * int -> unit eff
type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = { retc: 'a -> 'b; exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option}
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

external raise : exn -> 'a = "unknown"

(* https://github.com/ocaml-multicore/effects-examples/blob/master/transaction.ml *)


let[@annot_MB "
  (unit -> ({Update: s1, Res: s2} |> unit / s => s)) -> unit
"] atomically (f: unit -> unit) =
  let comp =
    match_with f () {
      retc = (fun x -> fun _ -> x);
      exnc = (fun (Res v) -> (fun rb -> rb (); raise (Res v)));
      effc = fun (type a) (e : a eff) ->
        match e with
        | Update (r, v) -> Some (fun (k : (a, _) continuation) -> (fun rb ->
          let old_v = !r in
          r := v;
          continue k () (fun () -> r := old_v; rb ())))
    }
  in
    comp (fun () -> ())

let ref = ref
let (!) = (!)
let (:=) = fun r v -> perform (Update (r,v))

let printf _ _ = ()

let () =
  let r = ref 10 in
  printf "T0: %d\n" (!r);
  match_with (fun () ->
    atomically (fun () ->
    r := 20;
    r := 21;
    printf "T1: Before abort %d\n" (!r);
    raise (Res !r) |> ignore;
    printf "T1: After abort %d\n" (!r);
    r := 30)
  ) () {
    retc = (fun x -> x);
    exnc = (fun (Res v) -> printf "T0: T1 aborted with %d\n" v; printf "T0: %d\n" !r);
    effc = fun (type a) (e: a eff) -> match e with
      | Update _ -> Some (fun (k: (a, _) continuation) ->
          continue k () (*dummy*)
        )
  }