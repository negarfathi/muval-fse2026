type 'a eff =
| Pick : int -> int eff
type exn =
| Fail
type ('a, 'b) continuation = K
type 'a effect_handler = { effc: 'b. 'b eff -> (('b,'a) continuation -> 'a) option }
type ('a,'b) handler = {
  retc: 'a -> 'b;
  exnc: exn -> 'b;
  effc: 'c.'c eff -> (('c,'b) continuation -> 'b) option
}
external raise : exn -> 'a = "unknown"
external perform : 'a eff -> 'a = "unknown"
external try_with : ('a -> 'b) -> 'a -> 'b effect_handler -> 'b = "unknown"
external match_with : ('a -> 'b) -> 'a -> ('b, 'c) handler -> 'c = "unknown"
external continue : ('a, 'b) continuation -> 'a -> 'b = "unknown"

let rec ( @ ) l1 l2 = match l1 with [] -> l2 | hd :: tl -> hd :: (tl @ l2)

(* from https://github.com/ocaml-multicore/effects-examples/blob/master/multishot/queens.ml *)

let rec safe queen diag xs =
  match xs with
  | [] -> true
  | q :: qs -> queen <> q && queen <> q + diag && queen <> q - diag &&
               safe queen (diag + 1) qs

let rec find_solution n col : int list =
  if col = 0 then []
  else begin
    let sol = find_solution n (col - 1) in
    let queen = perform (Pick n) in
    if safe queen 1 sol then queen::sol else raise Fail
  end

let queens_choose n =
  match_with (find_solution n) n {
    retc = (fun x -> [ x ]);
    exnc = (fun Fail -> []);
    effc = fun (type a) (e : a eff) ->
      match e with
      | Pick n -> Some (fun (k : (a, _) continuation) ->
        let rec loop i acc : int list list =
          if i = 1 then (continue k i @ acc)
          else loop (i-1) (continue k i @ acc)
        in loop n [])
  }

[@@@assert "typeof(queens_choose) <: (n: {z: int | z >= 1}) -> {z: int list list | z <> []}"]
