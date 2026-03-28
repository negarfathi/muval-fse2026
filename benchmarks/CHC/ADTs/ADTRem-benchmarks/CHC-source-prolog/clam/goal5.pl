:- pred ff.
:- pred rev(list(int),list(int)).
:- pred len(list(int),int).
:- pred leq(int,int,bool).
:- pred append(list(int),list(int),list(int)).

:- mode rev(in,out).
:- mode len(in,out).
:- mode leq(in,in,out).
:- mode append(in,in,out).

append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
ff :- A-B>=1, rev(C,D), len(D,B), len(C,A).
ff :- A-B=< -1, rev(C,D), len(D,B), len(C,A).
