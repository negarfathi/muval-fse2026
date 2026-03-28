:- pred ff.
:- pred take(int,list(int),list(int)).
:- pred drop(int,list(int),list(int)).
:- pred minus(int,int,int).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode take(in,in,out).
:- mode drop(in,in,out).
:- mode minus(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,in,out).


adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
minus(A,B,C) :- C=0, A>=0, B-A>=1.
minus(A,B,C) :- C=A-B, B=<A, A>=0.
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).

%ff :- A=:=0, B>=0, C>=0, take(C,D,E), drop(B,E,F), minus(C,B,G), drop(B,D,H), take(G,H,I), adt_new1(F,I,A).
ff :- A=:=0, B>=0, C>=0, take(C,D,E), drop(B,E,F), G=C-B, G>=0, drop(B,D,H), take(G,H,I), adt_new1(F,I,A).
ff :- A=:=0, B>=0, C>=0, take(C,D,E), drop(B,E,F), G=0, C=<B-1, drop(B,D,H), take(G,H,I), adt_new1(F,I,A).
