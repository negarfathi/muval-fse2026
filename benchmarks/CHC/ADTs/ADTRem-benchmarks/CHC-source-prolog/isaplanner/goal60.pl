:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred last(list(int),int).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),bool).

:- mode append(in,in,out).
:- mode last(in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,out).


adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.
last([A],A).
last([A,X|B],C) :- last([X|B],C).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

% (forall ((xs Lst) (ys Lst)) (=> (= ys nil) (= (last (append xs ys)) (last xs)))) ; G60


ff :- A-B>=1, append(C,[],E), last(E,B), last(C,A).
ff :- A-B=< -1, append(C,[],E), last(E,B), last(C,A).
