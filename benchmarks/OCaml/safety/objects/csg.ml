(* CSG, https://github.com/cscm94g3/CSG *)
[@@@rtype"
Obj :: (var142 : cls) ->
       (var140 : (var152 : obj) ->
                 (var150 : int) ->
                 (var148 : {var145:int | true}) ->
                 {var146:bool | ? var142 var152 var150 var148 var146 }) ->
       (var138 : cls) ->
       (var136 : (var165 : obj) ->
                 (var163 : int) ->
                 (var161 : {var161' | ? var138 var165 var163 var161' }) ->
                 {var159:unit | true}) ->
       {o:obj | o = (Obj var142 var140 var138 var136)}
"]


class node = object
  method inab (a:int) (b:int) = false
end

class shape = object
  inherit node
  method inab a b = false
end

class circle (r:int) = object
  inherit shape
  method inab a b =
    if a * a + b * b <= r * r then true
    else false
end
[@@rtype"
inab_circle :: (var277 : int) ->
               (var275 : obj) ->
               (var273 : int) ->
               (var271 : {var268:int | true)}) ->
               (* {var269:bool | var269 = ((var273,var271) in size(var275))} *)
               {var269:bool | var269 = ((var273,var271) in {(a,b) | a * a + b * b <= r * r})}
"]


class diff (a:shape) (b:shape) = object
  inherit node
  method inab x y =
    if a#inab x y && not (b#inab x y) then true
    else false
end
[@@rtype"
inab_diff :: (var314 : obj) ->
             (var312 : obj) ->
             (var310 : obj) ->
             (var308 : int) ->
             (var306 : {var303:int | true}) ->
             (* {var304:bool | var304 = ((var308,var306) in size(var310))} *)
             {var304:bool | var304 = ((var308,var306) in size(var314)) 
                                       && not((var308,var306) in size(var312))}
"] 


let main a b =
  let c10 = new circle 10 in
  let c3to5 = new diff (new circle 5) (new circle 3) in
  let o = new diff c10 c3to5 in
  let rr = a * a + b * b in
  (* All points in this condition should in the object *)
  if rr <= 3 * 3 || (5 * 5 < rr && rr <= 10 * 10) then
    assert (o#inab a b = true)
  else
    assert (o#inab a b = false)
[@@rtype"
main :: (a:int) -> (b:int) -> unit
"]


let size_obj [@size] = function
  (* c1 : Inab_C, c2 : Draw_C *)
  | Obj(c1,m1,c2,m2) -> c1
let size_obj_list [@size] = function
  | []_obj_list -> {}
  | ::_obj_list(hd,tl) -> hd ** tl
let size_cls [@size] = function
  | Draw_frame(o) -> ?
  | Inab_frame(o) -> ?
  | Draw_diff(o1,o2) -> ?
  | Inab_diff(o1,o2) -> o1 - o2
  | Draw_circle(r) -> ?
  | Inab_circle(r) -> {(a,b) | a * a + b * b <= r * r}
  | Draw_shape -> ?
  | Inab_shape -> ?
  | Draw_node -> ?
  | Inab_node -> ?

