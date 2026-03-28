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
%FF
ff :- A=:=0, B=1+C, C>=0, drop(B,[D|E],F), drop(C,E,G), adt_new1(F,G,A).

%ff :- A=:=0, B=1+C, drop(B,[D|E],F), drop(C,E,G), adt_new1(F,G,A).
%ff :- A=1+B, B=< -1, drop(A,[C|D],E), drop(B,D,F).
