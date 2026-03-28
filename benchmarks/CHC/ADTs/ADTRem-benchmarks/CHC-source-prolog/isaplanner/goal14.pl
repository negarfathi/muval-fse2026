:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred filter(list(int),list(int)).
:- pred leq(int,int,bool).
:- pred p(int,bool).
:- pred f(int,int).
:- pred adt_new1(list(int),list(int),bool).

:- mode append(in,in,out).
:- mode filter(in,out).
:- mode leq(in,in,out).
:- mode p(in,out).
:- mode f(in,out).
:- mode adt_new1(in,in,out).

f(A,B) :- A= -1+B.
p(A,B) :- B=:=1, A>=1.
p(A,B) :- B=:=0, A=<0.

adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
filter([],[]).
%filter([A|B],[A|C]) :- D=:=1, p(A,D), filter(B,C).
%filter([A|B],C) :- D=:=0, p(A,D), filter(B,C).
filter([A|B],[A|C]) :- A>=1, filter(B,C).
filter([A|B],C) :- A=<0, filter(B,C).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A=:=0, append(B,C,D), filter(D,E), filter(B,F), filter(C,G), 
          append(F,G,H), adt_new1(E,H,A).
