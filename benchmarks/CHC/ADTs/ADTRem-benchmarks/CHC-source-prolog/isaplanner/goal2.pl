:- pred ff.
:- pred count(int,list(int),int).
:- pred plus(int,int,int).
:- pred append(list(int),list(int),list(int)).
:- pred leq(int,int,bool).

:- mode count(in,in,out).
:- mode plus(in,in,out).
:- mode append(in,in,out).
:- mode leq(in,in,out).


append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
plus(A,B,C) :- B=C-A, A>=0, C-A>=0.
count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).
ff :- A-B>=1, count(C,D,E), count(C,F,G), E+G=B, append(D,F,H),
          count(C,H,A).
ff :- A-B=< -1, count(C,D,E), count(C,F,G), E+G=B, append(D,F,H), 
          count(C,H,A).
