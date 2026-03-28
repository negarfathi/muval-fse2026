type nat = 
  | Zero 
  | Succ of nat 

let rec loop f a =
  match f a with 
  | Zero -> Zero
  | Succ b -> Succ (loop f b)

let succ a = Succ a 
let pred = function | Zero -> Zero | Succ a -> a 

let rec of_int i = if i = 0 then Zero else Succ (of_int (i - 1))
let rec to_int = function | Zero -> 0 | Succ a -> 1 + (to_int a)

let two = Succ(Succ(Zero))
let one = Succ(Zero)

let sum l = List.fold l 0 (fun acc x -> acc + x)
let _ = assert(sum [1;2] = 3)


let pred a = match a with 
  | Zero -> Zero 
  | Succ b -> b
let rec mult2 x = match x with | Zero -> Zero | Succ x1 -> Succ (Succ (mult2 x1))

let pow2 mult = assert (mult (mult (Succ Zero) <> Zero)

[@@@infer "mult2"]
