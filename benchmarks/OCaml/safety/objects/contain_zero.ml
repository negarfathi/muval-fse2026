class virtual list = object (s)
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

class main = object (s)
  method mk_decreasing_list n =
    if n = 0 then new cons n (new nil) else new cons n (s#mk_decreasing_list (n-1))
end

let main () =
  assert ((new main#mk_decreasing_list 5)#contain 0)
