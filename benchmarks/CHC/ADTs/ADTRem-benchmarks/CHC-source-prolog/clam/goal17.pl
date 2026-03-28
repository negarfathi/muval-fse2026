:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred rev(list(int),list(int)).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode append(in,in,out).
:- mode rev(in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,in,out).


adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A=:=0, append(B,C,D), rev(D,E), rev(E,F), rev(B,G), rev(G,H), rev(C,I), 
          rev(I,J), append(H,J,K), adt_new1(F,K,A).
