type 'a eff =
| Read : unit -> string eff
| Write : string -> unit eff
| Write2 : string -> unit eff

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

(* let accumulate = handler
  | std#write x k -> let (v, xs) = k () in (v, x :: xs)
  | val v -> (v, []) *)
let[@annot_MB "
  (unit -> ({Write: s, Write2: s2} |> int / s3 => s3)) -> int * string list
"] accumulate (body: unit -> int) =
  match_with body () {
    retc = (fun v -> (v, []));
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Write x -> Some (fun (k: (a, _) continuation) ->
          let (v, xs) = continue k () in (v, x :: xs)
        )
      | Write2 x -> Some (fun (k: (a, _) continuation) ->
          let (v, xs) = continue k () in (v, x :: xs)
        )
  }

(* with accumulate handle
  std#write "hello"; std#write "world"; 3 * 14 *)
let main () =
  accumulate (fun () ->
    perform (Write "hello"); perform (Write2 "world"); 3 * 14
  )

let test = assert (main () = (42, ["hello"; "world"]))

[@@@assert "typeof(test) <: unit"]