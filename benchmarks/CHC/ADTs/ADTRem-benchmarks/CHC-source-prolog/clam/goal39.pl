:- pred ff.
:- pred mem(int,list(int),bool).
:- pred drop(int,list(int),list(int)).
:- pred leq(int,int,bool).

:- mode mem(in,in,out).
:- mode drop(in,in,out).
:- mode leq(in,in,out).


drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
mem(A,[],B) :- B=:=0.
mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A=< -1, mem(A,C,D).
ff :- A=:=1, A=:=1, A=:=1, B=:=0, A=:=1, C>=0, mem(D,E,B), mem(D,F,A), 
          drop(C,E,F).
