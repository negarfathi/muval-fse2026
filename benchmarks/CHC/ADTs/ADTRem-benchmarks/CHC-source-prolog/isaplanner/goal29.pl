:- pred ff.
:- pred ins1(int,list(int),list(int)).
:- pred mem(int,list(int),bool).
:- pred leq(int,int,bool).

:- mode ins1(in,in,out).
:- mode mem(in,in,out).
:- mode leq(in,in,out).



%FF
%mem(A,[],false).
mem(A,[],C) :- C=:=0.

mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, D=:=0, D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, D=:=0, D=:=0, B-A=< -1, mem(A,C,D).
ins1(A,[],[A]).
ins1(A,[A|B],[A|B]).
ins1(A,[B|C],[B|D]) :- B-A>=1, ins1(A,C,D).
ins1(A,[B|C],[B|D]) :- B-A=< -1, ins1(A,C,D).
ff :- A=:=0, ins1(B,C,D), mem(B,D,A).
