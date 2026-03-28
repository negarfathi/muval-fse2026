type list = Nil | Cons of int * list

let rec map f = function
  | Nil -> Nil
  | Cons(x, xs) ->
    let b = f x in
    let r = map f xs in
    Cons (b, r)

[@@@hccs
"eqsize (Nil, Nil).
 eqsize (Cons (x,xs), Cons (y,ys)) :- eqsize (xs,ys)."]

[@@@types
"map :: (f:(x:int) -> int) -> (t1:list) -> {t2:list | eqsize(t1,t2)}"]
