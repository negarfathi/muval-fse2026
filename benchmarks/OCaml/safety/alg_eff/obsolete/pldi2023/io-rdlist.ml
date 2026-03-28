type 'a eff =
| Read : unit -> string eff
| Read2 : unit -> string eff
| Write : string -> unit eff

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

(* from Andrej Bauer and Matija Pretnar. Programming with algebraic effects and handlers. 2015. *)

(* let read_from_list lst = handler
  | std#read () k -> (fun (s::lst’) -> k s lst’)
  | val x -> (fun _ -> x)
  | finally f -> f lst *)
let[@annot_MB "
  string list -> (unit -> ({Read: s, Read2: s2} |> (string * string) / s3 => s3)) -> (string * string)
"] read_from_list lst (body: unit -> (string * string)) =
  match_with body () {
    retc = (fun x -> fun _ -> x);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Read _ -> Some (fun (k: (a, _) continuation) ->
          fun (s :: lst' : string list) -> continue k s lst'
        )
      | Read2 _ -> Some (fun (k: (a, _) continuation) ->
          fun (s :: lst' : string list) -> continue k s lst'
        )
  } lst

let main () =
  read_from_list ["hello"; "world"] (fun () ->
    let s1 = perform (Read ()) in
    let s2 = perform (Read2 ()) in
    (s1, s2)
  )

let test = assert (main () = ("hello", "world"))

[@@@assert "typeof(test) <: unit"]