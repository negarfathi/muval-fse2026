class parent = object
  val v = 1
  method m x = x + v
end

class child = object
  inherit parent
end

let main () = assert (new child#m 1 = 2)
