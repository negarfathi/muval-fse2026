:- pred ff.
:- pred take(int,list(int),list(int)).
:- pred rev(list(int),list(int)).
:- pred len(list(int),int).
:- pred minus(int,int,int).
:- pred drop(int,list(int),list(int)).
:- pred leq(int,int,bool).
:- pred append(list(int),list(int),list(int)).
:- pred adt_new1(list(int),list(int),bool).

:- mode take(in,in,out).
:- mode rev(in,out).
:- mode len(in,out).
:- mode minus(in,in,out).
:- mode drop(in,in,out).
:- mode leq(in,in,out).
:- mode append(in,in,out).
:- mode adt_new1(in,in,out).

append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
minus(A,B,C) :- C=0, A>=0, B-A>=1.
minus(A,B,C) :- C=A-B, B=<A, A>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).

%ff :- A=:=0, take(B,C,D), rev(D,E), len(C,F), minus(F,B,G), rev(C,H), drop(G,H,I), adt_new1(E,I,A).
ff :- A=:=0, take(B,C,D), rev(D,E), len(C,F), G=F-B, G>=0, rev(C,H), drop(G,H,I), adt_new1(E,I,A).
ff :- A=:=0, take(B,C,D), rev(D,E), len(C,F), G=0, F=<B-1, rev(C,H), drop(G,H,I), adt_new1(E,I,A).
