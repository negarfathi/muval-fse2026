:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred rev(list(int),list(int)).
:- pred len(list(int),int).
:- pred plus(int,int,int).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode rev(in,out).
:- mode len(in,out).
:- mode plus(in,in,out).
:- mode leq(in,in,out).


plus(A,B,C) :- B=C-A, A>=0, C-A>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A-B>=1, append(C,D,E), rev(E,F), len(F,B), len(C,G), len(D,H),
          G+H=A.
ff :- A-B=< -1, append(C,D,E), rev(E,F), len(F,B), len(C,G), len(D,H),
          G+H=A.
