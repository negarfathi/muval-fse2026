(* from OCaml user's maunal Chapter 3 *)

class point = object
  val mutable x = 0
  method get_x = x
  method move d = x <- x + d
end

let p = new point
let main () =
  assert (p#get_x = 0);
  p#move 3;
  assert (p#get_x = 3)
