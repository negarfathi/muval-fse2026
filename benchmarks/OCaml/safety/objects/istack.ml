(* from Real World OCaml Chapter 12 *)

class istack = object
  val mutable v = [0; 2]

  method pop =
    match v with
    | hd :: tl ->
      v <- tl;
      Some hd
    | [] -> None

  method push hd =
    v <- hd :: v
end

let s = new istack
let main ()  =
  assert (s#pop = Some 2);
  s#push 5;
  assert (s#pop = Some 5)
  
  
