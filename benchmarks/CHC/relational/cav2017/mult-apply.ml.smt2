;  mult[0:0](x:int,y:int,var89:int) :- var89 = 0 /\ y = 0.
;
;  mult[0:0](x:int,y:int,__v28:int) :-
;    mult[0:0](x:int,var27:int,__v25:int),
;    y <> 0 /\ y = (1 + var27) /\ __v28 = (x + __v25).
;
;  ?-
;    mult[0:0](var112:int,var113:int,var32:int),
;    mult[0:0](var112:int,var113:int,var31:int),
;    var32 <> var31 /\ var31 = (mult var112 var113).


(set-logic HORN)
(declare-fun mult      (Int Int Int) Bool)
(declare-fun mult_ufun (Int Int) Int)

(assert (forall ((x Int) (y Int) (var89 Int))
     (=> (and (= var89 0)
              (= y 0))
         (mult x y var89))))

(assert (forall ((x Int) (y Int) (__v28 Int) (var27 Int) (__v25 Int))
     (=> (and (mult x var27 __v25)
              (or (> y 0) (< y 0))
              (= y (+ 1 var27))
              (= __v28 (+ x __v25)))
         (mult x y __v28))))

; Goal
(assert (forall ((var112 Int) (var113 Int) (var31 Int) (var32 Int))
    (=> (and (mult var112 var113 var32)
             (mult var112 var113 var31)
             (= var31 (mult_ufun var112 var113)))
        (= var32 var31))))
(check-sat)
