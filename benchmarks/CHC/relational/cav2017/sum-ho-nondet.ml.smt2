;  sum_fun[0:0](f:(int -> int),n:int,__v30:int) :-
;    n = 0 /\ __v30 >= 1 /\ __v30 = (f 0).
;
;  sum_fun[0:0](f:(int -> int),n:int,__v78:int) :-
;    sum_fun[0:0](f:(int -> int),var25:int,__v75:int),
;    n = (1 + var25) /\
;    n <> 0 /\
;    (f n) = (__v78 + (-1 * __v75)) /\
;    (f n) >= 1.
;
;  ?- sum_fun[0:0](randpos:(int -> int),n:int,var30:int), var30 <= 0.


; Note: The syntax is extended for higher-order functions (not supported by current SMT-LIB2)
(set-logic HORN)
(declare-fun sum_fun_00 (List Int) Bool)

(assert (forall ((f ((Int) Int)) (n Int) (__v30 Int))
  (=> (and (= n 0)
           (>= __v30 1)
           (= __v30 (f 0)))
      (sum_fun_00 f n __v30))))

(assert (forall ((f ((Int) Int)) (n Int) (__v78 Int) (var25 Int) (__v75 Int))
  (=> (and (sum_fun_00 f var25 __v75)
           (= n (+ 1 var25))
           (or (< n 0) (> n 0))
           (= (f n) (+ __v78 (* (- 1) __v75)))
           (>= (f n) 1))
      (sum_fun_00 f n __v78))))

(assert (forall ((randpos ((Int) Int)) (n Int) (var30 Int))
  (=> (and (sum_fun_00 fandpos n var30)
           (<= var30 0))
      false)))
(check-sat)
