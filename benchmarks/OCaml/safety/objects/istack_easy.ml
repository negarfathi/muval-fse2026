(* from Real World OCaml Chapter 12 (modified to be easy to verify *)

class istack = object
  val mutable v = [1; 2; 3]

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
  assert (s#pop != Some 0);
  s#push 4;
  assert (s#pop != Some 0);
  assert (s#pop != Some 0);
  assert (s#pop != Some 0)
  
  
