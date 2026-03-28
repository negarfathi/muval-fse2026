:- pred ff.
:- pred qreva(list(int),list(int),list(int)).
:- pred rev(list(int),list(int)).
:- pred leq(int,int,bool).
:- pred append(list(int),list(int),list(int)).
:- pred adt_new1(list(int),list(int),bool).

:- mode qreva(in,in,out).
:- mode rev(in,out).
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
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
qreva([],A,A).
qreva([A|B],C,D) :- qreva(B,[A|C],D).
ff :- A=:=0, qreva(B,[],C), rev(C,D), adt_new1(D,B,A).
