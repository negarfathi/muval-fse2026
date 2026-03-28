[@@@mode "hfl_prop_as_expectation"]

external unif : (float -> float * float) -> float * float = "unknown"
let update s k = unif (fun p ->
    let (r11, r12) = k (fun x k ->
        let (r11, r12) = s x k in
        let (r21, r22) = k (-2) in
        p *. r11 +. (1.0 -. p) *. r21,
        p *. r21 +. (1.0 -. p) *. r22) in
    let (r21, r22) = k (fun x k ->
        let (r11, r12) = s x k in
        let (r21, r22) = k 1 in
        p *. r11 +. (1.0 -. p) *. r21,
        p *. r21 +. (1.0 -. p) *. r22) in
    0.5 *. r11 +. 0.5 *. r21, 0.5 *. r12 +. 0.5 *. r22)

let rec walk s n k =
  if n <= 0 then k ()
  else
    let (r1, r2) = update s (fun s' -> s () (fun y -> walk s' (n + y) k)) in
    (r1 +. 1.0, r2 +. 2.0 *. r1 +. 1.0)
let main = walk (fun x k -> k 0)

[@@@assert "typeof(main) <: { n:int | n = 1 } -> (unit -> { r:prop * prop | r = Tuple(0.0, 0.0) }) -> { ret : prop * prop | 0.0 <= $proj(0, ret) && $proj(0, ret) <= 10.0 && 0.0 <= $proj(1, ret) && $proj(1, ret) <= 10.0 }"]
