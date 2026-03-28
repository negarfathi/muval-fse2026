;  mem[0:0](x:int,l:list,var220:bool) :- not var220() /\ l = Nil.
;
;  mem[0:0](x:int,l:list,__v56:bool) :-
;    mem[0:0](x:int,var226:list,true:bool),
;    __v56() /\ l = (Cons var225 var226).
;
;  mem[0:0](x:int,l:list,__v56:bool) :-
;    mem[0:0](x:int,var226:list,false:bool),
;    __v56() /\ l = (Cons x var226).
;
;  mem[0:0](x:int,l:list,__v56:bool) :-
;    mem[0:0](x:int,var226:list,false:bool),
;    x <> var225 /\ not __v56() /\ l = (Cons var225 var226).
;
;  find_ex(g:int,p:(int -> bool),l:list,__v77:exc) :-
;    l = Nil /\ __v77 = Not_found.
;
;  find_ok(g:int,p:(int -> bool),l:list,__v106:int) :-
;    g = __v106 /\
;    p(__v106) /\
;    l = (Cons __v106 var232) /\
;    var446(__v106).
;
;  find_ok(g:int,p:(int -> bool),l:list,__v163:int) :-
;    find_ok(g:int,p:(int -> bool),var240:list,__v163:int),
;    g <> var239 /\
;    not p(var239) /\
;    l = (Cons var239 var240) /\
;    not var447(var239).
;
;  find_ex(g:int,p:(int -> bool),l:list,__v169:exc) :-
;    find_ex(g:int,p:(int -> bool),var248:list,__v169:exc),
;    g <> var247 /\
;    not p(var247) /\
;    l = (Cons var247 var248) /\
;    not var448(var247).
;
;  ?-
;    find_ok(var492:int,var480:(int -> bool),var494:list,y:int),
;    mem[0:0](var492:int,var494:list,false:bool).
;
;  ?-
;    mem[0:0](var500:int,var499:list,true:bool),
;    find_ex(var500:int,var509:(int -> bool),var499:list,Not_found:exc).


; Note: The syntax is extended for higher-order functions (not supported by current SMT-LIB2)
(set-logic HORN)
(declare-datatypes () ((List (cons (head Int) (tail List)) (nil))))
(declare-datatypes () ((Opt (none) (some (content Int)))))
(declare-datatypes () ((Exc (not_found))))
(declare-fun mem_00  (Int List Bool) Bool)
(declare-fun find_ok  (Int ((Int) Bool) List Exc) Bool)
(declare-fun find_ex  (Int ((Int) Bool) List Exc) Bool)
(declare-fun var447 (Int) Bool)
(declare-fun var448 (Int) Bool)
(declare-fun var509 (Int) Bool)

(assert (forall ((x Int) (l List) (var220 Bool))
  (=> (and (not (var220))
           (= l nil))
      (mem_00 x l var220))))

(assert (forall ((x Int) (l List) (__v56 Bool) (var225 Int) (var226 List))
  (=> (and (mem_00 x var226 true)
           (__v56)
           (= l (cons var225 var226)))
      (mem_00 x l __v56))))

(assert (forall ((x Int) (l List) (__v56 Bool) (var226 List))
  (=> (and (mem_00 x var226 false)
           (__v56)
           (= (l (cons x var226))))
      (mem_00 x l __v56))))

(assert (forall ((x Int) (l List) (__v56 Bool) (var226 List) (var225 Int))
  (=> (and (mem_00 x var226 false)
           (or (> x var225) (< x var225))
           (not (__v56))
           (= l (cons var225 var226)))
      (mem_00 x l __v56))))

(assert (forall ((g Int) (p ((Int) Bool)) (l List) (__v77 Exc))
  (=> (and (= l nil)
           (= __v77 not_found))
      (find_ex g p l __v77))))

(assert (forall ((g Int) (p ((Int) Bool)) (l List) (__v106 Int) (var232 List))
  (=> (and (= g __v106)
           (p __v106)
           (= l (cons __v106 var232))
           (var446 __v106))
      (find_ok g p l __v106))))

(assert (forall ((g Int) (p ((Int) Bool)) (l List) (__v163 Int) (var240 List) (var239 Int))
  (=> (and (find_ok g p var240 __v163)
           (or (> g var239) (< g var239))
           (not (p var239))
           (= l (cons var239 var240))
           (not (var447 var239)))
      (find_ok g p l __v163))))

(assert (forall ((g Int) (p ((Int) Bool)) (l List) (__v169 Exc) (var248 List) (var247 Int))
  (=> (and (find_ex g p var248 __v169)
           (or (> g var247) (< g var239))
           (not (p var247))
           (= l (cons var247 var248))
           (not (var448 var247)))
      (find_ex g p l __v169))))

(assert (forall ((var492 Int) (var480 ((Int) Bool)) (var494 List) (y int))
  (=> (and (find_ok var492 var480 var494 y)
           (mem_00 var492 var494 false))
      false)))

(assert (forall ((var500 Int) (var499 List))
  (=> (and (mem_00 var500 var499 true)
           (find_ex var500 var509 var499 not_fond))
      false)))
(check-sat)