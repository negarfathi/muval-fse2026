let rec loop x y =
  if x * x + y * y < 100 then
    let x' = x + 1 in
    let y' = x' * y + 1 in
    loop x' y'
  else assert (x > 0)

[@@@types "loop :: (x:int) -> (y:{y:int | pre(x, y)}) -> unit"]
(*[@@@types "loop :: (x:int) -> (y:{y:int | x*x+y*y < 55 || x > 0}) -> unit"]*)
[@@@hccs "pre(x,y) :- x*x+y*y<10 ."]
