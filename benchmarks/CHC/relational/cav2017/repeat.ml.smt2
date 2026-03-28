;  mult[0:0](x:int,y:int,var150:int) :- var150 = 0 /\ y = 0.
;
;  mult[0:0](x:int,y:int,__v44:int) :-
;    mult[0:0](x:int,var28:int,__v41:int),
;    y <> 0 /\ y = (1 + var28) /\ __v44 = (x + __v41).
;
;  repeat_(m:int,e:int,n:int,__v56:int) :- n = 0 /\ __v56 = e.
;
;  repeat_(m:int,e:int,n:int,__v106:int) :-
;    repeat_(m:int,var176:int,__v103:int,__v106:int),
;    n <> 0 /\
;    n = (1 + __v103) /\
;    var176 = (m + e) /\
;    var176 = (__v94 e) /\
;    var176 = (var188 e).
;
;  ?-
;    repeat_(var181:int,a:int,var183:int,var41:int),
;    mult[0:0](var181:int,var183:int,var42:int), (var42 + a) <> var41.


(set-logic HORN)
(declare-fun mult_00 (Int Int Int) Bool)
(declare-fun repeat_ (Int Int Int Int) Bool)
(declare-fun __v94 (Int) Int)
(declare-fun var188 (Int) Int)

(assert (forall ((x Int) (y Int) (var150 Int))
  (=> (and (= var150 0)
           (= y 0))
      (mult_00 x y var150))))

(assert (forall ((x Int) (y Int) (__v44 Int) (var28 Int) (__v41 Int))
  (=> (and (mult_00 x var28 __v41)
           (or (> y 0) (< y 0))
           (= y (+ 1 var28))
           (= __v44 (+ x __v41)))
      (mult_00 x y __v44))))

(assert (forall ((m Int) (e Int) (n Int) (__v56 Int))
  (=> (and (= n 0)
           (= __v56 0))
      (repeat_ m e n __v56))))

(assert (forall ((m Int) (e Int) (n Int) (__v106 Int) (var176 Int) (__v103 Int))
  (=> (and (repeat_ m var176 __v103 __v106)
           (or (> n 0) (< n 0))
           (= n (+ 1 __v103))
           (= var176 (+ m e))
           (= var176 (__v94 e))
           (= var176 (var188 e)))
      (repeat_ m e n __v106))))

(assert (forall ((var181 Int) (a Int) (var183 Int) (var41 Int) (var42 Int))
  (=> (and (repeat_ var181 a var183 var41)
           (mult_00 var181 var183 var42)
           (not (= (+ var42 a) var41)))
      false)))
(check-sat)