class virtual list = object (s)
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

let main n =
  assert (new cons n (new cons n new nil))#iseven

[@@@types"
iseven_cons :: (var74 : int) ->
               (var72 : obj) ->
               (var70 : obj) ->
               {var68:bool | iseven_cons[0:1]((var74),(var72),(var70),(var68))}
"]
