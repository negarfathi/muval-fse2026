:- pred ff.
:- pred qrev(list(int),list(int)).
:- pred qreva(list(int),list(int),list(int)).
:- pred append(list(int),list(int),list(int)).
:- pred rev(list(int),list(int)).
:- pred new1(list(int),list(int),bool).
:- pred adt_equals(list(int),list(int),bool).

:- mode qrev(in,out).
:- mode qreva(in,in,out).
:- mode append(in,in,out).
:- mode rev(in,out).
:- mode new1(in,in,out).
:- mode adt_equals(in,in,out).


append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).

qreva([],A,A).
qreva([A|B],C,D) :- qreva(B,[A|C],D).

qrev(A,B) :- qreva(A,[],B).


adt_equals([],[A|B],C) :- C=:=0.
adt_equals([A|B],[],C) :- C=:=0.
adt_equals([],[],A) :- A=:=1.
adt_equals([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_equals([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_equals([A|B],[C|D],E) :- F=:=E, A=C, adt_equals(B,D,F).


ff :- A=:=0, qrev(B,C), rev(B,D), adt_equals(C,D,A).
