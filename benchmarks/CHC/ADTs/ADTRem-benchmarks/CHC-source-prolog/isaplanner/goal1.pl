:- pred ff.
:- pred take(int,list(int),list(int)).
:- pred drop(int,list(int),list(int)).
:- pred append(list(int),list(int),list(int)).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode take(in,in,out).
:- mode drop(in,in,out).
:- mode append(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,in,out).


adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).

% (forall ((n Int) (xs Lst)) (=> (>= n 0) (= (append (take n xs) (drop n xs)) xs))) ; G1

ff :- A=:=0, B>=0, take(B,C,D), drop(B,C,E), append(D,E,F), adt_new1(F,C,A).
