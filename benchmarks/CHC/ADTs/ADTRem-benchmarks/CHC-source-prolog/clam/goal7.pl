:- pred ff.
:- pred qreva(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred plus(int,int,int).
:- pred leq(int,int,bool).
:- pred rev(list(int),list(int)).
:- pred append(list(int),list(int),list(int)).

:- mode qreva(in,in,out).
:- mode len(in,out).
:- mode plus(in,in,out).
:- mode leq(in,in,out).
:- mode rev(in,out).
:- mode append(in,in,out).

append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).

plus(A,B,C) :- B=C-A, A>=0, C-A>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
qreva([],A,A).
qreva([A|B],C,D) :- qreva(B,[A|C],D).
ff :- A-B>=1, qreva(C,D,E), len(E,B), len(C,F), len(D,G), F+G=A.
ff :- A-B=< -1, qreva(C,D,E), len(E,B), len(C,F), len(D,G), F+G=A.
