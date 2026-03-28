:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred mem(int,list(int),bool).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode mem(in,in,out).
:- mode leq(in,in,out).


%FF
mem(A,[],R) :- R=:=0.
mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, D=:=0, D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, D=:=0, D=:=0, B-A=< -1, mem(A,C,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

%FF
% (=> (mem x t) (mem x (append l t)
ff :- R1=:=1, F=:=0, mem(X,T,R1), append(L,T,LT),  mem(X,LT,F).
