:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred count(int,list(int),int).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode count(in,in,out).
:- mode leq(in,in,out).


count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A-B=<0, append(C,[D],E), count(D,E,A), count(D,C,B).
ff :- A-B>=2, append(C,[D],E), count(D,E,A), count(D,C,B).
