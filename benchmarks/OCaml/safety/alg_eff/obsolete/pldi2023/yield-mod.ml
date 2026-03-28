type 'a eff =
| Yield : int -> int eff

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

(* from https://github.com/matijapretnar/eff/blob/master/examples/yield.eff *)

type inttree = Node of inttree * inttree | Leaf of int

let rec depthWalk = function
  | Node (l, r) ->
      let l' = depthWalk l in
      let r' = depthWalk r in
      Node (l', r')
  | Leaf a ->
      let b = perform (Yield a) in
      Leaf b

let main () =
  let body = (fun () ->
    depthWalk (Node (Leaf 10, Leaf 20))
  )
  in
  match_with body () {
    retc = (fun x -> x);
    exnc = raise;
    effc = fun (type a) (e: a eff) -> match e with
      | Yield x -> Some (fun (k: (a, _) continuation) ->
          continue k (x + 1)
        )
  }

(* let test = assert (main () = Node (Leaf 11, Leaf 21)) *)

(* [@@@assert "typeof(test) <: unit"] *)

[@@@assert "typeof(main) <: unit -> {z: inttree | _is_Node(z)}"]