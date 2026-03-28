(* MLstate/opalang qmlPrint.ml, https://github.com/MLstate/opalang *)
#load "str.cma"
[@@@rtype"
Obj :: (v1 : cls) ->
       (v2 : (v21 : obj) ->
             (v22 : unit) ->
             {v23:string | 'B' ^ size(v1)}) ->
       (v3 : cls) ->
       (v4 : (v41 : obj) ->
             (v42 : unit) ->
             {v43:string | size(v3)}) ->
       {o:obj | o = (Obj var142 var140 var138 var136)}
"]

type adt = A | B
let chooseAorB () = if Random.bool () then A else B

class base_printer = object (self)

  method ty () = function
    | A -> "A"
    | _ -> "B"^self#scheme ()

  method scheme () =
    self#ty () (chooseAorB ())
end
[@@rtype"
ty_base_printer ::
    (v1 : obj) ->
    (v2 : unit) ->
    {v3:string | v3 in (\"B\" ^ size(v1))* ^ \"A\"}
scheme_base_printer ::
    (v1 : obj) ->
    (v2 : unit) ->
    {v3:string | v3 in size(v1)}
"]


class base_printer_with_sugared_types = object (self)
  inherit base_printer as super

  method scheme () =
    "C"^super#scheme ()
end
[@@rtype"
scheme_base_printer_with_sugared_types :: 
    (v1 : obj) ->
    (v2 : unit) ->
    {v3:string | v3 in ('C' ^ size(v1))}
"]


let main () =
  let s = new base_printer_with_sugared_types#scheme () in
  assert (Str.string_match (Str.regexp "C\\(BC\\)*A") s 0)
    [@rtype"Str.string_match :: (r:regexp) -> (s:string) -> (i:{i':int | (r s) = true}) -> {u:unit | true}"]

let size_obj [@size] = function
  (* c1 : Ty_C, c2 : Scheme_C *)
  | Obj(c1,m1,c2,m2) -> c2
let size_cls [@size] = function
  | Ty_base_printer -> ?
  | Scheme_base_printer -> ?
  | Ty_base_printer_with_sugared_types -> ?
  | Scheme_base_printer_with_sugared_types -> ?

