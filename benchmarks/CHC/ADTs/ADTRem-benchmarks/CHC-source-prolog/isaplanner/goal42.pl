:- pred ff.
:- pred take(int,list(int),list(int)).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).


:- mode take(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,in,out).


adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).


take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).

% (forall ((n Int) (x Int) (xs Lst)) (=> (>= n 0) (= (take (+ 1 n) (cons x xs)) (cons x (take n xs))))) ; G42

ff :-  A=:=0, N1=1+N, N>=0, take(N1,[X|Xs],L), take(N,Xs,L1), adt_new1(L,[X|L1],A).  
