class virtual nat = object
  method virtual to_int : int
end

class z = object
  inherit nat
  method to_int = 0
end

class s (nat:nat) = object
  inherit nat
  method to_int = 1 + nat#to_int
end

class main = object (s)
  method mk_n n =
    if n = 0 then new z else new s (s#mk_n (n-1))
end

let main () =
  assert ((new main#mk_n 1)#to_int = 1)

[@@@catas"
Cata_cls = Mk_n_main : -1
         | To_int_main : -1
         | Mk_n_s : var287. -1
         | To_int_s : var288. 1 + var288
         | Mk_n_z : -1
         | To_int_z : 0
         | Mk_n_nat : -1
         | To_int_nat : -1
Cata_obj = Obj : var289,var290,var291,var292. var289
"]

[@@@types"
  send_to_int :: (var98 : obj) -> {var96:int | var96 = _cata_Cata_obj(var98)}
"]
