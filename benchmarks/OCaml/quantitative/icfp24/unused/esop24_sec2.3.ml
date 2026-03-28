[@@@mode "hfl_prop_as_expectation"]

let p = 2.0 /. 3.0
let rec f n k =
  if n <= 0 then k () else 1.0 +. p *. f (n - 1) k +. (1.0 -. p) *. f (n + 1) k

[@@@assert "typeof(f) <: { n:int | n = 42 } -> (unit -> { r:prop | r = 0.0 }) -> { ret : prop | 0.0 <= ret && ret <= 126.0 }"]
