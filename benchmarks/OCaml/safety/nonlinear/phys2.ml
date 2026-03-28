let rec loop x v t =
  if t >= 1. then
    assert (x < 2.)
  else
    let epsilon = 0.1 in
    let k = 1. in
    loop (x +. v *. epsilon) (v -. k *. x *. epsilon) (t +. epsilon)
let main () = loop 0. 1. 0.

[@@@types "loop :: (x:float) -> (v:float) -> (t:{t:float | x*.x+.v*.v<=1.}) -> unit"]
