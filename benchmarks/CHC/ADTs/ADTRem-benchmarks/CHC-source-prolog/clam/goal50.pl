:- pred ff.
:- pred sort(list(int),list(int)).
:- pred count(int,list(int),int).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred insort(int,list(int),list(int)).

:- mode sort(in,out).
:- mode count(in,in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).
:- mode insort(in,in,out).

insort(A,[],[A]).
insort(A,[B|C],[A,B|C]) :- A=<B-1.
insort(A,[B|C],[B|D]) :- A>=B, insort(A,C,D).

count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).

sort([],[]).
sort([A|B],C) :- sort(B,D), insort(A,D,C).

ff :- A-B>=1, sort(C,D), count(E,D,B), count(E,C,A).
ff :- A-B=< -1, sort(C,D), count(E,D,B), count(E,C,A).
