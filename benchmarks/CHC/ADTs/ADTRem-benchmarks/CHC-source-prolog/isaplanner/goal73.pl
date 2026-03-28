:- pred ff.
:- pred mem(int,list(int),bool).
:- pred map_not(bool,bool).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred insort(int,list(int),list(int)).
:- pred sort(list(int),list(int)).

:- mode mem(in,in,out).
:- mode map_not(in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).
:- mode insort(in,in,out).
:- mode sort(in,out).

sort([],[]).
sort([A|B],C) :- sort(B,D), insort(A,D,C).

%FF
less(A,B,C) :- C=:=1, A>=0, B-A>=1.
less(A,B,C) :- C=:=0, B-A=<0, B>=0.

leq(A,B,C) :- C=:=1, A>=0, A=<B.
leq(A,B,C) :- C=:=0, A>=B+1, B>=0.
map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.

mem(A,[],B) :- B=:=0.
mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A=< -1, mem(A,C,D).
insort(A,[],[A]).
insort(A,[B|C],[A,B|C]) :- A=<B-1.
insort(A,[B|C],[B|D]) :- A>=B, insort(A,C,D).

% (forall ((x Int) (y Int) (l Lst)) (=> (not (= x y)) (= (mem x (insort y l)) (mem x l)))) ; G73


ff :- X=<Y-1, A=:=1,  B=:=0, insort(Y,L,L1), mem(X,L1,A), mem(X,L,B).
ff :- X=<Y-1, A=:=0,  B=:=1, insort(Y,L,L1), mem(X,L1,A), mem(X,L,B).
ff :- X>=Y+1, A=:=1,  B=:=0, insort(Y,L,L1), mem(X,L1,A), mem(X,L,B).
ff :- X>=Y+1, A=:=0,  B=:=1, insort(Y,L,L1), mem(X,L1,A), mem(X,L,B).

















