;  sum_list[0:0](l:list,var138:int) :- var138 = 0 /\ l = Nil.
;
;  sum_list[0:0](l:list,__v28:int) :-
;    sum_list[0:0](var144:list,__v25:int),
;    l = (Cons (__v28 + (-1 * __v25)) var144).
;
;  fold_left[0:0](s:int,l:list,__v40:int) :- __v40 = s /\ l = Nil.
;
;  fold_left[0:0](s:int,l:list,__v104:int) :-
;    fold_left[0:0](var179:int,var152:list,__v104:int),
;    sum_list[0:0](var190:list,var191:int),
;    var179 = (__v89 s (var179 + (-1 * s))) /\
;    l = (Cons (var179 + (-1 * s)) var152).
;
;  ?-
;    fold_left[0:0](0:int,var186:list,var42:int),
;    sum_list[0:0](var186:list,var41:int), var41 <> var42.


; Note: The syntax is extended for higher-order functions (not supported by current SMT-LIB2)
(set-logic HORN)
(declare-datatypes () ((List (cons (head Int) (tail List)) (nil))))
(declare-fun sum_list_00  (List Int) Bool)
(declare-fun fold_left_00 (Int List Int) Bool)
(declare-fun __v89 (Int Int) Int)

(assert (forall ((l List) (var138 Int))
  (=> (and (= var138 0)
           (= l nil))
      (sum_list_00 l var138))))

(assert (forall ((l List) (__v28 Int) (var144 List) (__v25 Int))
  (=> (and (sum_list_00 l __v28)
           (= l (cons (+ __v28 (* (- 1) __v25)) var144)))
      (sum_list_00 var144 __v25))))

(assert (forall ((s Int) (l List) (__v40 Int))
  (=> (and (= __v40 s)
           (= l nil))
      (fold_left_00 s l __v40))))

(assert (forall ((s Int) (l List) (__v104 Int) (var152 List) (var179 Int) (var190 List) (var191 Int))
  (=> (and (fold_left_00 var179 var152 __v104)
           (sum_list_00 var190 var191)
           (= var179 (__v89 s (+ var179 (* (- 1) s))))
           (= l (cons (+ var179 (* (- 1) s)) var152)))
      (fold_left_00 s l __v104))))

(assert (forall ((var186 List) (var42 Int) (var41 Int))
  (=> (and (fold_left_00 0 var186 var42)
           (sum_list_00 var186 var41)
           (or (< var41 var42) (> var41 var42)))
      false)))
(check-sat)