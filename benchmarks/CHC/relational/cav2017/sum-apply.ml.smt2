;  sum[0:0](n:int,var73:int) :- var73 = 0 /\ n = 0.
;
;  sum[0:0](n:int,__v22:int) :-
;    sum[0:0](var20:int,__v19:int),
;    n <> 0 /\ n = (1 + var20) /\ __v22 = (n + __v19).
;
;  ?-
;    sum[0:0](var89:int,var25:int),
;    sum[0:0](var89:int,var24:int),
;    var24 <> var25 /\ var24 = (sum var89).


(set-logic HORN)
(declare-fun sum_00      (Int Int) Bool)
(declare-fun sum_ufun (Int) Int)

(assert (forall ((n Int) (var73 Int))
  (=> (and (= var73 0)
           (= n 0))
      (sum_00 n var73))))

(assert (forall ((n Int) (__v22 Int) (var20 Int) (__v19 Int))
  (=> (and (sum_00 var20 __v19)
           (or (> n 0) (< n 0))
           (= n (+ 1 var20))
           (= __v22 (+ n __v19)))
      (sum_00 n __v22))))

; Goal
(assert (forall ((var89 Int) (var24 Int) (var25 Int))
  (=> (and (sum_00 var89 var25)
           (sum_00 var89 var24)
           (= var24 (sum_ufun var89))
           (or (> var24 var25) (< var24 var25)))
      false)))
(check-sat)
