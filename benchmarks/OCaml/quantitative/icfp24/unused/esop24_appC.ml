[@@@mode "hfl_prop_as_expectation"]

external unif : (float -> float) -> float = "unknown"
let update s k = unif (fun p ->
    0.5 *. k (fun x k -> p *. s x k +. (1.0 -. p) *. k (-2)) +.
    0.5 *. k (fun x k -> p *. s x k +. (1.0 -. p) *. k 1))

let rec walk s n k =
  if n <= 0 then k () else 1.0 +. update s (fun s' -> s () (fun y -> walk s' (n + y) k))
let main = walk (fun x k -> k 0)

[@@@assert "typeof(main) <: { n:int | n = 1 } -> (unit -> { r:prop | r = 0.0 }) -> { ret : prop | 0.0 <= ret && ret <= 10.0 }"]
