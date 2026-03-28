:- pred ff.
:- pred delete(int,list(int),list(int)).
:- pred mem(int,list(int),bool).
:- pred map_not(bool,bool).
:- pred leq(int,int,bool).

:- mode delete(in,in,out).
:- mode mem(in,in,out).
:- mode map_not(in,out).
:- mode leq(in,in,out).


map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.

%FF
%mem(A,[],false).
mem(A,[],C) :- C=:=0.

mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, D=:=0, D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, D=:=0, D=:=0, B-A=< -1, mem(A,C,D).
delete(A,[],[]).
delete(A,[A|B],C) :- delete(A,B,C).
delete(A,[B|C],[B|D]) :- B-A>=1, delete(A,C,D).
delete(A,[B|C],[B|D]) :- B-A=< -1, delete(A,C,D).
ff :- A=:=0, delete(B,C,D), mem(B,D,E), map_not(E,A).
