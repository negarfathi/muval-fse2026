:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred last(list(int),int).
:- pred leq(int,int,bool).
:- pred filter(list(int),list(int)).
:- pred adt_new1(list(int),bool).

:- mode append(in,in,out).
:- mode last(in,out).
:- mode leq(in,in,out).
:- mode filter(in,out).
:- mode adt_new1(in,out).

adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.
filter([],[]).

last([A],A).
last([A,A1|B],C) :- last([A1|B],C).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A-B>=1, append(C,[A],D), last(D,B).
ff :- A-B=< -1, append(C,[A],D), last(D,B).
