:- pred ff.
:- pred count(int,list(int),int).
:- pred leq(int,int,bool).
:- pred plus(int,int,int).

:- mode count(in,in,out).
:- mode leq(in,in,out).
:- mode plus(in,in,out).

plus(A,B,C) :- B=C-A, A>=0, C-A>=0.

count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).
ff :- A-B>=2, count(C,D,B), count(C,[C|D],A).
ff :- A-B=<0, count(C,D,B), count(C,[C|D],A).
