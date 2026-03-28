class gx (x:int) = object
  method get_x = x
end

let main () =
  assert ((new gx 0)#get_x = 0)
