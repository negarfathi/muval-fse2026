:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred last(list(int),int).
:- pred map_not(bool,bool).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),bool).

:- mode append(in,in,out).
:- mode last(in,out).
:- mode map_not(in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,out).


adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.
map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.
last([A],A).
last([A,X|B],C) :- last([X|B],C).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

% (forall ((xs Lst) (ys Lst)) (=> (not (= ys nil)) (= (last (append xs ys)) (last ys)))) ; G61

ff :- A-B>=1,
      append(C,[X|Xs],E), last(E,B), last([X|Xs],A).
ff :- A-B=< -1,
      append(C,[X|Xs],E), last(E,B), last([X|Xs],A).
