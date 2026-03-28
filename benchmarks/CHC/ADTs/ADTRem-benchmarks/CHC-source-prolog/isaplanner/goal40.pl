:- pred ff.
:- pred take(int,list(int),list(int)).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),bool).

:- mode take(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,out).


adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.
take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).

%ff :- A=:=0, B=0, take(B,C,D), adt_new1(D,A).
ff :- B=0, take(B,C,[_|D]).
