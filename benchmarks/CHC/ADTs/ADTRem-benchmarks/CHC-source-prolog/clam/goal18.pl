:- pred ff.
:- pred rev(list(int),list(int)).
:- pred append(list(int),list(int),list(int)).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode rev(in,out).
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
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
ff :- A=:=0, rev(B,C), append(C,D,E), rev(E,F), rev(D,G), append(G,B,H), 
          adt_new1(F,H,A).
