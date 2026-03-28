type[@boxed] 'a eff =
| Next : int -> unit eff
type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = { retc: 'a -> 'b; exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option}
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

(* https://github.com/ocaml-multicore/effects-examples/blob/master/generator.ml *)

type 'a t =
| Leaf
| Node of 'a t * 'a * 'a t

let leaf = Leaf

let node l x r = Node (l,x,r)

let rec deep n =
  if n = 0 then Leaf
  else let t = deep (n-1) in Node (t,n,t)

let[@annot_MB "
  (int -> ({Next: s1} |> unit / s => s)) -> int t -> ({Next: s1} |> unit / s => s)
"] rec iter (f: int -> unit) = function
  | Leaf -> ()
  | Node (l, x, r) -> iter f l; f x; iter f r


let to_gen (t : int t) =
  let rec step = ref (fun () ->
    try_with
      (fun t -> iter (fun x -> perform (Next x)) t; None)
      t
      { effc = fun (type a) (e : a eff) ->
      match e with
      | Next v ->
        Some (fun (k : (a, _) continuation) ->
          step := (fun () -> continue k ());
          Some v)
      })
  in
    fun () -> !step ()


let rec consume_all counter f =
  match f () with
  | None -> counter
  | Some _ -> consume_all (counter + 1) f

let main n =
  let t = deep n in
  let f = to_gen t in
  consume_all 0 f

let rec pow base exp = if exp = 0 then 1 else base * pow base (exp - 1)

let test n = assert (main n <= pow 2 n - 1)
[@@@assert "typeof(test) <: {z:int | z >= 0} -> unit"]