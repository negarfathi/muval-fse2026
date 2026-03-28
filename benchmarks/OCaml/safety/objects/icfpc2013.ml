(* veged/icfpc2013, https://github.com/veged/icfpc2013 *)

class virtual expression = object
  method virtual eval : int
  method virtual size : int
end

class const (c:int) = object
  val size = 1
  inherit expression
  method eval = c
  method size = size
end
[@@rtype"
size_const :: (v1 : int) ->
              (v2 : obj) ->
              {v3:int | v3 = 1}
"]

class op2 f e1 e2 = object
  val size = 1 + e1#size + e2#size
  inherit expression
  method eval = f e1#eval e2#eval
  method size = size
end
[@@rtype"
size_op2 :: (v1 : int -> int -> int) -> 
            (v2 : obj) ->
            (v3 : obj) ->
            (v4 : obj) ->
            {v5:int | v5 = (1 + size(v2) + size(v3))}
"]

class language = object
  val zero = new const 0
  val one = new const 1
  method plus (e1:expression) (e2:expression) = new op2 (+) e1 e2
end
[@@rtype"
plus_language :: (v1 : obj) ->
                 (v2 : obj) ->
                 (v3 : obj) ->
                 {v4:obj | size(v4) = (1 + size(e1) + size(e2))}
"]

class gener = object(self)
  inherit language
  method genExp size =
    let expset = ref [] in
    (if size = 1 then expset := zero :: one :: !expset);
    (if size >= 2 then expset := self#genExp (size-1));
    (if size >= 3 then
       for i = 1 to size - 2 do
         let j = size - 1 - i in
         if i < j then
           List.iter (fun exp1 ->
               List.iter (fun exp2 ->
                   if exp1 != exp2 then
                     expset := self#plus exp1 exp2 :: !expset
                 ) (self#genExp j)
             ) (self#genExp i)
         else if i == j then
           let expset1 = self#genExp i in
           for k = 0 to (List.length expset1)-1 do
             let exp1 = List.nth expset1 k in
             for l = 0 to k do
               let exp2 = List.nth expset1 l in
               if exp1 != exp2 then
                 expset := self#plus exp1 exp2 :: !expset
             done
           done
         else
           ()
       done);

    !expset
end
[@@rtype"
genExp_gener :: (v1 : obj) ->
                (v2 : int) ->
                {v3:obj list | size(v3) <= v2}
"]

let main n =
  let g = new gener in
  List.iter (fun o -> assert (o#size <= n)) (g#genExp n)
  [@rtype" List.iter :: (f : (o : {o':obj | size(o) <= n (*TODO*)}) -> {u:unit | true}) -> 
                        (l : {l':obj list | size(l) <= n (*TODO*)}) -> 
                        {u:unit | true}"];
  List.map (fun o -> o#eval) (g#genExp n)


let size_obj [@size] = function
  | Obj(c1,m1,c2,m2) -> c1
let size_list [@size] = function
  | []_obj_list -> 0
  | ::_obj_list(hd,tl) -> max(hd,tl)
let size_cls [@size] = function
  | Eval_const(c) -> ?
  | Size_const(c) -> 1
  | Eval_op2(f,e1,e2) -> ?
  | Size_op2(f,e1,e2) -> 1 + e1 + e2
  | Plus_language -> ?
  | GenExp_const -> ?
  | Plus_const -> ?
