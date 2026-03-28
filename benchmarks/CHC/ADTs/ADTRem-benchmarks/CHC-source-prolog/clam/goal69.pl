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


insort(A,[],[A]).
insort(A,[B|C],[A,B|C]) :- A=<B-1.
insort(A,[B|C],[B|D]) :- A>=B, insort(A,C,D).

map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.

mem(A,[],B) :- B=:=0.
mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A=< -1, mem(A,C,D).


ff :- A=:=1, B=:=0, C=:=0, D-E>=1, mem(E,F,B),
          mem(E,G,A), insort(D,F,G).
ff :- A=:=1, B=:=0, C=:=0, D-E=< -1, mem(E,F,B),
          mem(E,G,A), insort(D,F,G).
