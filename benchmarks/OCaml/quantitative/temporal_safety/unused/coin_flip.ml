[@@@mode "hfl_prop_as_expectation"]

let rec coin s k = 0.25 *. (0.5 *. coin 1 k +. 0.5 *. coin s k) +. 0.75 *. k s

[@@@assert "typeof(coin) <: { s : int | s = 0} -> ((s : int) -> { r : prop | s = 1 && r = 1.0 || s <> 1 && r = 0.0 }) -> { ret : prop | 0.0 <= ret && ret <= 1.0 / 7.0 }"]
