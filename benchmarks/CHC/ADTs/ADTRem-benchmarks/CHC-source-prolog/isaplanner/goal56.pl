:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred drop(int,list(int),list(int)).
:- pred len(list(int),int).
:- pred minus(int,int,int).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode append(in,in,out).
:- mode drop(in,in,out).
:- mode len(in,out).
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
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

%ff :- A=:=0, append(B,C,D), drop(E,D,F), drop(E,B,G), len(B,H), minus(E,H,I), drop(I,C,J), append(G,J,K), adt_new1(F,K,A).
ff :- A=:=0, append(B,C,D), drop(E,D,F), drop(E,B,G), len(B,H), I=E-H, I>=0, drop(I,C,J), append(G,J,K), adt_new1(F,K,A).
ff :- A=:=0, append(B,C,D), drop(E,D,F), drop(E,B,G), len(B,H), I=0, E=<H-1, drop(I,C,J), append(G,J,K), adt_new1(F,K,A).
