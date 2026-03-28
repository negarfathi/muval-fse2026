type[@boxed] 'a eff =
| Yield : int -> unit eff
type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = { retc: 'a -> 'b; exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option}
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

(* from https://github.com/ocaml-multicore/effects-examples/blob/master/fringe.ml *)

type 'a tree =
  | Leaf of 'a
  | Node of 'a tree * 'a tree

let yield e = perform (Yield e)

let rec walk : int tree -> unit =
  function
  | Leaf e -> yield e
  | Node (l,r) -> walk l; walk r

type step = Done
          | Yielded of int * (unit -> step)

let step f =
  match_with f () {
    retc = (fun _ -> Done);
    exnc = (fun e -> raise e);
    effc = fun (type a) (e : a eff) ->
      match e with
      | Yield e -> Some (fun (k : (a, _) continuation) -> Yielded (e, continue k))
  }

let comparator ltree rtree =
  let l = fun () -> step (fun () -> walk ltree) in
  let r = fun () -> step (fun () -> walk rtree) in
  let rec stepper l r =
    match l (), r () with
    | Done, Done -> true
    | Yielded (e, k), Yielded (e', k') ->
        if e = e'
        then stepper (fun () -> k ()) (fun () -> k' ())
        else false
    | _, _ -> false
  in
  stepper l r


let ex1 = Node (Leaf 1, Node (Leaf 2, Leaf 3))
let ex2 = Node (Node (Leaf 1, Leaf 2), Leaf 3)
let ex3 = Node (Node (Leaf 3, Leaf 2), Leaf 1)

let ex4 = Leaf 42
let ex5 = Leaf 41

let _ =
  let pairs = [ex1,ex2; ex2,ex1; ex1,ex3; ex3,ex2; ex4,ex4; ex5,ex4] in
  List.iter
    (function
    | true -> print_endline "same"
    | false -> print_endline "different")
    (List.map (fun (l,r) -> comparator l r) pairs);
  flush stdout
