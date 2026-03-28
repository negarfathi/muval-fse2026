class virtual list = object
  method virtual iseven : bool
end

class nil = object
  inherit list
  method iseven = true
end

class cons (hd:int) (tl:list)  = object
  inherit list
  method iseven = not (tl#iseven)
end

class main = object (s)
  method mk_evenlist =
    if Random.bool () then new nil else new cons 1 (new cons 2 (s#mk_evenlist))
end

let main () =
    assert (new main#mk_evenlist#iseven)
