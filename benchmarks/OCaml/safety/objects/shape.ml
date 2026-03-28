[@@@types"
  Obj :: (var83 : cls) ->
         (var81 : (var93 : {var140':obj | exist(var_fresh). var140' = Obj(var83,(var_fresh)) }) ->
                  (var91 : int) ->
                  (var89 : {var86:int | true}) ->
                  {var87:bool | var87 = ((var91,var89) in size(var93)) )}) ->
         {o:obj | o = (Obj var83 var81)}
"]


class virtual shape (x:int) (y:int) = object
  method virtual contains: int -> int -> bool
end


[@@@types" contains_dot :: (var144 : int) ->
                 (var142 : int) ->
                 (var140 : {var140':obj | var140' = Obj(Contains_dot(var144,var142),_)} ->
                 (var138 : int) ->
                 (var136 : {var133:int | true}) ->
                 {var134:bool | var134 = ((var138,var136) in size(var140))}
"]
class dot (x:int) (y:int) = object
  inherit shape x y

  method contains x' y' =
    x' = x && y' = y
end


[@@@types"
 contains_square :: (var168 : int) ->
                    (var166 : int) ->
                    (var164 : int) ->
                    (var162 : obj) ->
                    (var160 : int) ->
                    (var158 : {var155:int | true}) ->
                    {var156:bool | var156 = ((var160,var158) in size(var162))}
"]
class square (w:int) (x:int) (y:int) = object
  inherit shape x y

  method contains x' y' =
    x <= x' && x' <= x + w &&
    y <= y' && y' <= y + w
end

[@@@types"
  contain :: (var184 : int) ->
             (var182 : int) ->
             (var180 : {var177:obj_list | (var184,var182) in size(var177)}) ->
             {var178:bool | var178 = (var184,var182) in size(var180)}
"]
let rec contain x y l =
  match l with
  | [] -> false
  | hd::tl -> if let (Obj(c,m)) = hd in m hd x y then true else contain x y tl


(*** パターン１ ***)
(* このmain関数は、どのようなshapesが渡されてもsafeである。*)
let main shapes =
  let shapes = (new square 2 1 1) :: shapes in
  assert (contain 3 3 shapes)

(*** パターン２ ***)
(* このmain関数は、shapesに依存してsafeかunsafeかが決まり、型付けは次のようになる。*)
[@@@types "main :: {x : obj_list | (3,3) in size(x) } -> unit "]
let main shapes =
  assert (contain 3 3 shapes)

(* また、このファイルを検証した後、shapeクラスをinheritしたクラスCでは、*)
(* containsは次の仕様を満たす必要がある *)
[@@@types "contain_C :: (v1:t1) -> ... -> (vn:tn) -> (* クラスCのオブジェクトを生成するときの引数の型 *)
                        (k1:int) -> 
                        (k2:int) -> 
                        (k3:obj | true} -> 
                        {k4:bool | (k1,k2) in size(k3)}
"]
(* さらに、sizeは次のようになっている必要がある *)
[@@@catas"
Cata_cls = Contains_C : v1,...,vn,this. （v1,...,vnを引数にとってペアの集合を作る関数)  (* v1,...,vnはクラスCのオブジェクトを生成するときの引数 *)
Cata_obj = Obj : c1,m1,...,cn,mn. c1  (* contain関数ををm1,対応するclosureをc1、残りは継承によって追加されたメソッドに対応 *)
Cata_obj_list = []_obj_list : {}
              | ::_obj_list : var387,var388. var387 ** var388
"]


[@@@catas"
Cata_cls = Contains_square : var378,var379,var380. （var378,var379,var380(それぞれw,x,yに対応）を引数にとってペアの集合を作る関数）
         | Contains_dot : var381,var382. {(var381, var382)}
         | Contains_shape : var383,var384. {}
Cata_obj = Obj : var385,var386. var385
Cata_obj_list = []_obj_list : {}
              | ::_obj_list : var387,var388. var387 ** var388
"]


(* [@@@t" *)
   (*   contains_object :: (var93 : {var90:obj | false}) -> *)
   (*                     {var91:a1 | contains_object[0:1]((var93),(var91))} *)
   (*   contains_shape ::(var123 : int) -> *)
   (*                    (var121 : int) -> *)
   (*                    (var119 : obj) -> *)
   (*                    (var117 : int) -> *)
   (*                    (var115 : {var112:int | contains_shape[0:0]((var123),(var121),(var119),(var117),(var112))}) -> *)
   (*                    {var113:bool | contains_shape[0:1]((var123),(var121),(var119),(var117),(var115),(var113))} *)
   (* "] *)
