type nat = Zero | Succ of nat 
external minus : nat -> nat -> nat = "unknown"
[@@@rtype"
minus::(x:{x:nat | true }) -> (y:{y:nat| py(x,y) }) -> {z:nat| pz(x, y, z)}
"]
let rec div a b =
  match b with 
  | Zero -> assert false 
  | _ ->
    match a with 
    | Zero -> Zero 
    | _ -> Succ (div (minus a b) b)

[@@@rtype"
div:: (m:{m:nat| true}) -> (n:{n:nat | pre(m, n)}) -> {r:nat | post(m, n, r)}
"]

[@@@constraints"
_forall m:nat n:nat. (m <> Zero && n <> Zero) => pre(m, n);
_forall m:nat n:nat r:nat. post(m, n, r) => r = Succ(Zero);
"]

[@@@infer_optimized_type"
div:min(py), max(pz)
"]

