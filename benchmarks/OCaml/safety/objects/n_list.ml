class list = object (s)
  method length = (s#length : int)
end

class nil = object
  inherit list
  method length = 0
end

class cons (hd:int) (tl:list) = object
  inherit list
  method length = 1 + tl#length
end

class main = object (s)
  method mk_n_list n =
    if n = 0 then new nil else new cons n (s#mk_n_list (n-1))
end

let main n =
  assert (n = (new main#mk_n_list n)#length)

[@@@types"
  send_mk_n_list :: (v1 : int) ->
                    (v2 : obj) ->
                    {v3 : obj | _cata_Cata_obj(v3) = v1}
  send_length :: (v1 : obj) ->
                 {v2 : int | v2 = _cata_Cata_obj(v1)}
"]
