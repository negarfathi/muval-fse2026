:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred mem(int,list(int),bool).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode mem(in,in,out).
:- mode leq(in,in,out).


mem(A,[],B) :- B=:=0.
mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A=< -1, mem(A,C,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A=:=1, A=:=1, B=:=0, append(C,D,E), mem(F,E,B), mem(F,C,A).
ff :- A=:=1, A=:=1, A=:=1, B=:=0, append(C,D,E), mem(F,E,B), mem(F,D,A).
