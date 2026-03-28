:- pred ff.
:- pred count(int,list(int),int).
:- pred append(list(int),list(int),list(int)).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).

:- mode count(in,in,out).
:- mode append(in,in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).

%FF
less(A,B,C) :- C=:=1, A>=0, B-A>=1.
less(A,B,C) :- C=:=0, B-A=<0, B>=0.

leq(A,B,C) :- C=:=1, A>=0, A=<B.
leq(A,B,C) :- C=:=0, A>=B+1, B>=0.
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).
ff :- count(B,C,D), append(C,E,F), count(B,F,G),  D>=G+1.
