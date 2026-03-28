:- pred ff.
:- pred drop(int,list(int),list(int)).
:- pred len(list(int),int).
:- pred minus(int,int,int).
:- pred leq(int,int,bool).

:- mode drop(in,in,out).
:- mode len(in,out).
:- mode minus(in,in,out).
:- mode leq(in,in,out).



minus(A,B,C) :- C=0, A>=0, B-A>=1.
minus(A,B,C) :- C=A-B, B=<A, A>=0.


len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).

%FF
% ff :- M=\=LYs,   N>=0, drop(N,Xs,Ys), len(Ys,LYs), len(Xs,LXs), minus(LXs,N, M).
ff :- M=\=LYs,   N>=0, drop(N,Xs,Ys), len(Ys,LYs), len(Xs,LXs), M=LXs-N, M>=0.
ff :- M=\=LYs,   N>=0, drop(N,Xs,Ys), len(Ys,LYs), len(Xs,LXs), M=0, LXs=<N-1.


