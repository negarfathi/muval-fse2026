% extracted from log

:- type tree(T) ---> leaf ; node( T, tree(T), tree(T) ).


%%%%%%%%%%%%%%% Predicate annotations %%%%%%%%%%%%%%%%%%

:- pred ff.

:- pred less(int,int,bool).
:- mode less(in,in,out).

:- pred nmax(int,int,int).
:- mode nmax(in,in,out).

:- pred mirror(tree(int),tree(int)).
:- mode mirror(in,out).

:- pred height(tree(int),int).
:- mode height(in,out).

:- pred leq(int,int,bool).
:- mode leq(in,in,out).


nmax(A,B,A) :- A>=0, B>=0, A>=B.
nmax(A,B,B) :- A>=0, B>=0, B>=A+1.

% nmax(A,B,B) :- C=:=1, A>=0, B>=0, less(A,B,C).
% nmax(A,B,A) :- C=:=0, A>=0, B>=0, less(A,B,C).
%
% less(A,B,R) :- R=:=0, A=1+C, B=0, C>=0.
% less(A,B,R) :- R=:=1, A=0, B=1+C, C>=0.
% less(A,B,C) :- A=1+D, B=1+E, D>=0, E>=0, less(D,E,C).
% less(A,B,C) :- C=:=1, A>=0, B-A>=1.
% less(A,B,C) :- C=:=0, B-A=<0, B>=0.
% 
% leq(A,B,C) :- C=:=1, C=:=1, less(A,B,C).
% leq(A,B,C) :- C=:=0, C=:=0, C=:=0, B-A>=1, less(A,B,C).
% leq(A,B,C) :- C=:=0, C=:=0, C=:=0, B-A=< -1, less(A,B,C).

mirror(leaf,leaf).
mirror(node(A,B,C),node(A,D,E)) :- mirror(C,D), mirror(B,E).

height(leaf,B) :- B=0.
height(node(A,B,C),D) :- D=1+E, height(B,F), height(C,G), nmax(F,G,E).

ff :- A-B>=1, mirror(C,D), height(D,B), height(C,A).
ff :- A-B=< -1, mirror(C,D), height(D,B), height(C,A).
