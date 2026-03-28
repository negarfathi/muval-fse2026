:- pred ff.
:- pred drop(int,list(int),list(int)).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode drop(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,in,out).


adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
ff :- A=:=0, B=1+C, C>=0, D>=0, E>=0, drop(E,[F|G],H), drop(D,H,I), 
          drop(B,I,J), drop(E,G,K), drop(D,K,L), drop(C,L,M), adt_new1(J,M,A).
