class parent = object
  val v = true
  method m (x:int) z = let y = x in y + z
  method m2 x = x + x
end

class child = object
  val y = 2
  inherit parent
  method m3 x = x + x
end

let main () = let c = new child in assert (c#m3 2 = c#m2 2)
