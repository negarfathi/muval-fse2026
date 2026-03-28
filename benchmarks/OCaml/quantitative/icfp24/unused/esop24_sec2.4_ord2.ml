[@@@mode "hfl_prop_as_expectation"]

let p = 2.0 /. 3.0
let rec f n k =
  if n <= 0 then k () else
    let (r11, r12) = f (n - 1) k in
    let (r21, r22) = f (n + 1) k in
    let r1 = p *. r11 +. (1.0 -. p) *. r21 in
    let r2 = p *. r12 +. (1.0 -. p) *. r22 in
    (r1 +. 1.0, r2 +. 2.0 *. r1 +. 1.0)

[@@@assert "typeof(f) <: { n:int | n = 42 } -> (unit -> { r:prop * prop | r = Tuple(0.0, 0.0) }) -> { ret : prop * prop | 0.0 <= $proj(0, ret) && $proj(0, ret) <= 126.0 && 0.0 <= $proj(1, ret) && $proj(1, ret) <= 10000.0 }"]
