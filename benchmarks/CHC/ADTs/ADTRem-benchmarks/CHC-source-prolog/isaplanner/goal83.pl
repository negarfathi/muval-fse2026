:- pred ff.
:- pred drop(int,list(int),list(int)).
:- pred take(int,list(int),list(int)).
:- pred plus(int,int,int).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode drop(in,in,out).
:- mode take(in,in,out).
:- mode plus(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,in,out).


adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
plus(A,B,C) :- B=C-A, A>=0, C-A>=0.
take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
ff :- A=:=0, B>=0, C>=0, drop(C,D,E), take(B,E,F), B+C=G, take(G,D,H),
          drop(C,H,I), adt_new1(F,I,A).
