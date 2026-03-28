:- pred ff.
:- pred sort(list(int),list(int)).
:- pred sorted(list(int),bool).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred insort(int,list(int),list(int)).

:- mode sort(in,out).
:- mode sorted(in,out).
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

% FF
sorted([],A) :- A=:=1.
sorted([A],B) :- B=:=1.
sorted([A,B|C],D) :- D=:=0, A>=B+1.
sorted([A,B|C],D) :- sorted([B|C],D), A=<B.

sort([],[]).
sort([A|B],C) :- sort(B,D), insort(A,D,C).
ff :- A=:=0, sort(B,C), sorted(C,A).
