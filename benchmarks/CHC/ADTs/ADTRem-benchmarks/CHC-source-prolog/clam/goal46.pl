:- pred ff.
:- pred mem(int,list(int),bool).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred insort(int,list(int),list(int)).
:- pred sort(list(int),list(int)).

:- mode mem(in,in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).
:- mode insort(in,in,out).
:- mode sort(in,out).

sort([],[]).
sort([A|B],C) :- sort(B,D), insort(A,D,C).
% less(A,B,C) :- A=1+D, B=1+E, D>=0, E>=0, less(D,E,C).
% less(A,B,C) :- C=:=1, A>=0, B-A>=1.
% less(A,B,C) :- C=:=0, B-A=<0, B>=0.
% 
% leq(A,B,C) :- C=:=1, C=:=1, less(A,B,C).
% leq(A,B,C) :- C=:=0, C=:=0, C=:=0, C=:=0, B-A>=1, less(A,B,C).
% leq(A,B,C) :- C=:=0, C=:=0, C=:=0, C=:=0, B-A=< -1, less(A,B,C).
mem(A,[],B) :- B=:=0.
mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A=< -1, mem(A,C,D).
insort(A,[],[A]).
insort(A,[B|C],[A,B|C]) :- A=<B-1.
insort(A,[B|C],[B|D]) :- A>=B, insort(A,C,D).
ff :- A=:=0, insort(B,C,D), mem(B,D,A).
