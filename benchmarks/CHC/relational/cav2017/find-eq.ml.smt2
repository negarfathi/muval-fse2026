;  find_ex(p:(int -> bool),l:list,__v14:exc) :-
;    l = Nil /\ __v14 = Not_found.
;
;  find_ok(p:(int -> bool),l:list,__v43:int) :-
;    p(__v43) /\ l = (Cons __v43 var220).
;
;  find_ok(p:(int -> bool),l:list,__v93:int) :-
;    find_ok(p:(int -> bool),var228:list,__v93:int),
;    not p(var227) /\ l = (Cons var227 var228).
;
;  find_ex(p:(int -> bool),l:list,__v99:exc) :-
;    find_ex(p:(int -> bool),var236:list,__v99:exc),
;    not p(var235) /\ l = (Cons var235 var236).
;
;  find_opt[0:2](p:(int -> bool),l:list,var215:int_option) :-
;    var215 = None /\ l = Nil.
;
;  find_opt[0:2](p:(int -> bool),l:list,var215:int_option) :-
;    p(var243) /\ l = (Cons var243 var244) /\ var215 = (Some var243).
;
;  find_opt[0:2](p:(int -> bool),l:list,__v176:int_option) :-
;    find_opt[0:2](p:(int -> bool),var252:list,__v176:int_option),
;    not p(var251) /\ l = (Cons var251 var252).
;
;  ?-
;    find_ok(var533:(int -> bool),var534:list,x:int),
;    find_opt[0:2](var533:(int -> bool),var534:list,var100:int_option),
;    var100 <> (Some x).
;
;  ?-
;    find_opt[0:2](var539:(int -> bool),var540:list,var105:int_option),
;    find_ex(var539:(int -> bool),var540:list,Not_found:exc),
;    var105 <> None.


; Note: The syntax is extended for higher-order functions (not supported by current SMT-LIB2)
(set-logic HORN)
(declare-datatypes () ((List (cons (head Int) (tail List)) (nil))))
(declare-datatypes () ((Opt (none) (some (content Int)))))
(declare-datatypes () ((Exc (not_found))))
(declare-fun find_ex  (((Int) Bool) List Exc) Bool)
(declare-fun find_ok  (((Int) Bool) List Int) Bool)
(declare-fun find_opt_02 (((Int) Bool) List Exc) Bool)

(assert (forall ((p ((Int) Bool)) (l List) (__v14 exc))
  (=> (and (= l nil)
           (= __v14 not_found))
      (find_ex p l __v14))))

(assert (forall ((p ((Int) Bool)) (l List) (__v43 Int) (var220 List))
  (=> (and (p __v43)
           (= l (cons __v43 var220)))
      (find_ok p l __v43))))

(assert (forall ((p ((Int) Bool)) (l List) (__v93 Int) (var228 List) (var227 Int))
  (=> (and (find_ok p var228 __v93)
           (not (p var227))
           (= l (cons var227 var228)))
      (find_ok p l __v93))))

(assert (forall ((p ((Int) Bool)) (l List) (__v99 Exc) (var236 List) (var235 Int))
  (=> (and (find_ex p var236 __v99)
           (not (p var235))
           (= l (cons var235 var236)))
      (find_ex p l __v99))))

(assert (forall ((p ((Int) Bool)) (l List) (var215 Opt))
  (=> (and (= var215 none)
           (= l nil))
      (find_opt_02 p l var215))))

(assert (forall ((p ((Int) Bool)) (l List) (var215 Opt) (var243 Int) (var244 List))
  (=> (and (p var243)
           (= l (cons var243 var244))
           (= var215 (some var243)))
      (find_opt_02 p l var215))))

(assert (forall ((p ((Int) Bool)) (l List) (__v176 Opt) (var252 List) (var251 Int))
  (=> (and (find_opt p var252 __v176)
           (not (p var251))
           (= l (cons var251 var252)))
      (find_opt_02 p l __v176))))

(assert (forall ((var533 ((Int) Bool)) (var534 List) (x Int) (var100 Int))
  (=> (and (find_ok var533 var534 x)
           (find_opt_02 var533 var534 var100)
           (or (> var100 (some x)) (< var100 (some x))))
      false)))

(assert (forall ((var539 ((Int) Bool)) (var540 List) (var105 Opt))
  (=> (and (find_ex var539 var540 not_found)
           (or (> var105 none) (< var105 none)))
      false)))
(check-sat)
