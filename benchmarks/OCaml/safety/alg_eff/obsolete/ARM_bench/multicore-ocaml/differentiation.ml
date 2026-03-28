
type t = int * int ref


type[@boxed] 'a eff =
| Add : t * t -> t eff
| Mult : t * t -> t eff

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

let ignore _ = ()

(* from https://github.com/ocaml-multicore/effects-examples/blob/master/algorithmic_differentiation.ml *)

let mk v = v, ref 0

let run f =
  ignore (match_with f () {
    retc = (fun r -> let (rv, rd) = r in rd := 1; (rv, rd));
    exnc = raise;
    effc = fun (type a) (e : a eff) ->
      match e with
      | Add (a, b) -> Some (fun (k : (a, _) continuation) ->
          let (av, ad) = a in
          let (bv, bd) = b in
          let (xv, xd) = mk (av + bv) in
          ignore (continue k (xv, xd));
          ad := !ad + !xd;
          bd := !bd + !xd;
          (xv, xd))
      | Mult(a,b) -> Some (fun k ->
          let (av, ad) = a in
          let (bv, bd) = b in
          let (xv, xd) = mk (av * bv) in
          ignore (continue k (xv, xd));
          ad := !ad + (bv * !xd);
          bd := !bd + (av * !xd);
          (xv, xd))
    })

let grad f x =
  let x = mk x in
  run (fun () -> f x);
  let (_xv, xd) = x in
  !xd


let (+$) a b = perform (Add(a,b))
let ( *$ ) a b = perform (Mult(a,b))


(* f = x + x^3 =>
  df/dx = 1 + 3 * x^2 *)
let test n =
  assert ((grad (fun x -> x +$ x *$ x *$ x) n) =
            1 + 3 * n * n)

[@@@assert "typeof(test) <: int -> unit"]



