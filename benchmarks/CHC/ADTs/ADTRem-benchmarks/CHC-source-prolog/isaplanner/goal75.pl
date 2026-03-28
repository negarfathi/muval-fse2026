:- pred ff.
:- pred filter(list(int),list(int)).
:- pred rev(list(int),list(int)).
:- pred leq(int,int,bool).
:- pred p(int,bool).
:- pred append(list(int),list(int),list(int)).
:- pred f(int,int).
:- pred adt_new1(list(int),list(int),bool).

:- mode filter(in,out).
:- mode rev(in,out).
:- mode leq(in,in,out).
:- mode p(in,out).
:- mode append(in,in,out).
:- mode f(in,out).
:- mode adt_new1(in,in,out).

f(A,B) :- A= -1+B.
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
p(A,B) :- B=:=1, A>=1.
p(A,B) :- B=:=0, A=<0.

adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
filter([],[]).
filter([A|B],[A|C]) :- D=:=1, p(A,D), filter(B,C).
filter([A|B],C) :- D=:=0, p(A,D), filter(B,C).
ff :- A=:=0, filter(B,C), rev(C,D), rev(B,E), filter(E,F), adt_new1(D,F,A).
