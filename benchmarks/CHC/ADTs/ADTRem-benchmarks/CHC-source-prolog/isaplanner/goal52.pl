:- pred ff.
:- pred count(int,list(int),int).
:- pred rev(list(int),list(int)).
:- pred leq(int,int,bool).
:- pred append(list(int),list(int),list(int)).

:- mode count(in,in,out).
:- mode rev(in,out).
:- mode leq(in,in,out).
:- mode append(in,in,out).

append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).
ff :- A-B>=1, count(C,D,B), rev(D,E), count(C,E,A).
ff :- A-B=< -1, count(C,D,B), rev(D,E), count(C,E,A).
