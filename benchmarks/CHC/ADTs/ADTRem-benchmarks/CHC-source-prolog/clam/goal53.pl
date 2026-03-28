:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode len(in,out).
:- mode leq(in,in,out).


len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A-B=<0, append(C,[D],E), len(E,A), len(C,B).
ff :- A-B>=2, append(C,[D],E), len(E,A), len(C,B).
