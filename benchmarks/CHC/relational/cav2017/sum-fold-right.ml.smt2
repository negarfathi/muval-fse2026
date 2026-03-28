;  sum_list[0:0](l:list,var136:int) :- var136 = 0 /\ l = Nil.
;
;  sum_list[0:0](l:list,__v28:int) :-
;    sum_list[0:0](var142:list,__v25:int),
;    l = (Cons (__v28 + (-1 * __v25)) var142).
;
;  fold_right[0:0](f:(int -> (int -> int)),l:list,s:int,__v40:int) :-
;    __v40 = s /\ l = Nil.
;
;  fold_right[0:0](f:(int -> (int -> int)),l:list,s:int,__v109:int) :-
;    fold_right[0:0](f:(int -> (int -> int)),var150:list,s:int,var178:int),
;    sum_list[0:0](var192:list,var193:int),
;    __v109 = (f (__v109 + (-1 * var178)) var178) /\
;    l = (Cons (__v109 + (-1 * var178)) var150).
;
;  ?-
;    fold_right[0:0](plus:(int -> (int -> int)),var187:list,0:int,var42:int),
;    sum_list[0:0](var187:list,var41:int), var41 <> var42.


; Note: The syntax is extended for higher-order functions (not supported by current SMT-LIB2)
(set-logic HORN)
(declare-datatypes () ((List (cons (head Int) (tail List)) (nil))))
(declare-fun sum_list_00  (List Int) Bool)
(declare-fun fold_right_00 (((Int Int) Int)) List Int) Bool)
(declare-fun f (Int List) Int)

(assert (forall ((l List) (var136 Int))
  (=> (and (= var136 0)
           (= l nil))
      (sum_list_00 l var136))))

(assert (forall ((l List) (__v28 Int) (var142 Int) (__v25 Int))
  (=> (and (sum_list_00 l __v28)
           (= l (cons (+ __v28 (* (- 1) __v25)) var142)))
      (sum_list_00 var142 __v25))))

(assert (forall ((f ((Int Int) Int)) (l List) (s Int) (__v40 Int))
  (=> (and (= __v40 s)
           (= l nil))
      (fold_right_00 f l s __v40))))

(assert (forall ((f ((Int Int) Int)) (l List) (s Int) (__v109 Int) (var178 Int)
                 (var192 List) (var193 Int) (var150 List) (var178 Int))
  (=> (and (fold_right_00 f var150 s var178)
           (sum_list_00 var192 var193)
           (= __v109 (f (+ __v109 (* (- 1) var178)) var178))
           (= l (cons (+ __v109 (* (- 1) var178)) var150)))
      (fold_right_00 f l s __v109))))

(assert (forall ((plus ((Int Int) Int)) (var187 List) (var42 Int) (var41 Int))
  (=> (and (fold_right_00 plus var187 0 var42)
           (sum_list_00 var187 var41)
           (or (< var41 var42) (> var41 var42)))
      false)))
(check-sat)