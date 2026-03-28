:- pred ff.
:- pred count(int,list(int),int).
:- pred sort(list(int),list(int)).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred insort(int,list(int),list(int)).

:- mode count(in,in,out).
:- mode sort(in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).
:- mode insort(in,in,out).

insort(A,[],[A]).
insort(A,[B|C],[A,B|C]) :- A=<B-1.
insort(A,[B|C],[B|D]) :- A>=B, insort(A,C,D).

%FF
less(A,B,C) :- C=:=1, A>=0, B-A>=1.
less(A,B,C) :- C=:=0, B-A=<0, B>=0.

leq(A,B,C) :- C=:=1, A>=0, A=<B.
leq(A,B,C) :- C=:=0, A>=B+1, B>=0.
sort([],[]).
sort([A|B],C) :- sort(B,D), insort(A,D,C).
count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).
ff :- A-B>=1, count(C,D,B), sort(D,E), count(C,E,A).
ff :- A-B=< -1, count(C,D,B), sort(D,E), count(C,E,A).
