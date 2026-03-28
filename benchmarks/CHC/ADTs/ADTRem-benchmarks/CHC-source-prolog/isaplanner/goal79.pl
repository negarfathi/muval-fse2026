:- pred ff.
:- pred sorted(list(int),bool).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred insort(int,list(int),list(int)).
:- pred sort(list(int),list(int)).

:- mode sorted(in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).
:- mode insort(in,in,out).
:- mode sort(in,out).

sort([],[]).
sort([A|B],C) :- sort(B,D), insort(A,D,C).

%FF
less(A,B,R) :- R=:=0, A=1+C, B=0, C>=0.
less(A,B,R) :- R=:=1, A=0, B=1+C, C>=0.

less(A,B,C) :- A=1+D, B=1+E, D>=0, E>=0, less(D,E,C).
less(A,B,C) :- C=:=1, A>=0, B-A>=1.
less(A,B,C) :- C=:=0, B-A=<0, B>=0.
leq(A,B,C) :- C=:=1, A>=0, A=<B.
leq(A,B,C) :- C=:=0, A>=B+1, B>=0.

%FF
sorted([],A) :- A=:=1.
sorted([A],B) :- B=:=1.
sorted([A,B|C],D) :- D=:=0, A>=B+1.
sorted([A,B|C],D) :- sorted([B|C],D), A=<B.

insort(A,[],[A]).
insort(A,[B|C],[A,B|C]) :- A=<B-1.
insort(A,[B|C],[B|D]) :- A>=B, insort(A,C,D).


% (forall ((x Int) (l Lst)) (=> (sorted l) (sorted (insort x l)))) ; G79

ff :- A=:=0, E=:=1, sorted(C,E), insort(B,C,D), sorted(D,A).
