:- pred ff.
:- pred sort(list(int),list(int)).
:- pred len(list(int),int).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred insort(int,list(int),list(int)).

:- mode sort(in,out).
:- mode len(in,out).
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
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
sort([],[]).
sort([A|B],C) :- sort(B,D), insort(A,D,C).
ff :- A-B>=1, sort(C,D), len(D,B), len(C,A).
ff :- A-B=< -1, sort(C,D), len(D,B), len(C,A).
