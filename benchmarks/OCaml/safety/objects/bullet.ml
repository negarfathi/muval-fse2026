class bullet (px:int) (py:int) = object
  method hit (x:int) (y:int) =
    x = px && y = py
end

class b_list = object (s)
  method win (ex:int) (ey:int) = (s#win ex ey:bool)
end

class b_nil = object
  inherit b_list
  method win (ex:int) (ey:int) = (false:bool)
end

class b_cons (hd:bullet) (tl:b_list) = object
  inherit b_list
  method win (ex:int) (ey:int) =
    if hd#hit ex ey then true else tl#win ex ey
end

(*  1 2 3 4 5  *)
(* ----------- *)
(*1|         | *)
(*2|  B      | *)
(*3|    BE   | *)
(* ----------- *)

let main () =
  let b_list =
    new b_cons
      (new bullet 3 3)
      (new b_cons
        (new bullet 5 5)
        (new b_nil)) in
  let ex = 3 in
  let ey = 3 in
  assert (b_list#win ex ey)

(* let main () = *)
(*   let b_list = *)
(*     new b_cons *)
(*       (new bullet 3 3) (new b_nil) in *)
(*   let ex = 3 in *)
(*   let ey = 3 in *)
(*   assert (b_list#win ex ey) *)
 
