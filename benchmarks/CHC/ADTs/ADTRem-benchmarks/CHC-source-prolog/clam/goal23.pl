:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred half(int,int).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode len(in,out).
:- mode half(in,out).
:- mode leq(in,in,out).


:- pred even(int,bool).
:- mode even(in,out).



%half(A,B) :- A=0, B=0.
%half(A,B) :- A=1, B=0.
% half(A,B) :- A=2+C, B=1+D, C>=0, half(C,D).

even(A,B) :- A=2*K, B=:=1.
even(A,B) :- A=2*K+1, B=:=0.

half(A,B) :- even(A,E), E=:=1,   A=2*B.
half(A,B) :- even(A,E), E=:=0, A-1=2*B.

len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A-B>=1, append(C,D,E), len(E,F), half(F,B), append(D,C,G), len(G,H),
          half(H,A).
ff :- A-B=< -1, append(C,D,E), len(E,F), half(F,B), append(D,C,G), len(G,H),
          half(H,A).
