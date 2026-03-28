let rec loop x v t =
  if t >= 1 then
    assert (x > 0)(*v-t > 0*)
  else
    let epsilon = 1 in
    let a = 1 in
    loop (x + v * epsilon) (v + a * epsilon) (t + epsilon)
let main () = loop 1 1 0

(*[@@@types "loop :: (x:int) -> (v:int) -> (t:{t:int | x>0 && t>=0 && v-t=1}) -> unit"]*)
