class virtual list = object
  method virtual contain : int -> bool
end

class nil = object
  inherit list
  method contain key = false
end

class cons (hd:int) (tl:list) = object
  inherit list
  method contain key =
    if key = hd then true else tl#contain key
end

let main () =
  assert ((new cons 1 (new cons 2 (new nil)))#contain 2)
