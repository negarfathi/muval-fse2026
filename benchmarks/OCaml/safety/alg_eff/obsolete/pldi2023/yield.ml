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

type 'a tree = Node of 'a tree * 'a tree | Leaf of 'a;;
type ('i, 'o, 'r) iterator =
  | Result of 'r
  | Susp of 'o * ('i -> ('i, 'o, 'r) iterator)

let rec depthWalk = function
  | Node (l, r) ->
      let l' = depthWalk l in
      let r' = depthWalk r in
      Node (l', r')
  | Leaf a ->
      let b = perform (Yield a) in
      Leaf b

let rec renum = function
  | Susp(x, k) -> renum (k (x + 1))
  | Result r -> r

(* let run = handler
  | effect (Yield x) k -> Susp (x, k)
  | x -> Result x
;; *)
(* let iter_tree =
  (with run handle
  depthWalk (Node (Leaf 10, Leaf 20)))
in
renum iter_tree
;; *)
let main () =
  let iter_tree =
    match_with (fun () ->
      depthWalk (Node (Leaf 10, Leaf 20))
    ) () {
      retc = (fun x -> Result x);
      exnc = raise;
      effc = fun (type a) (e: a eff) -> match e with
        | Yield (x: int) -> Some (fun (k: (a, _) continuation) ->
            Susp (x, (continue k: int -> (int, int, int tree) iterator))
          )
    }
  in
  renum iter_tree
