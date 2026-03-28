:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred plus(int,int,int).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode len(in,out).
:- mode plus(in,in,out).
:- mode leq(in,in,out).


plus(A,B,C) :- B=C-A, A>=0, C-A>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A-B>=1, append(C,D,E), len(E,B), len(C,F), len(D,G), F+G=A.
ff :- A-B=< -1, append(C,D,E), len(E,B), len(C,F), len(D,G), F+G=A.
