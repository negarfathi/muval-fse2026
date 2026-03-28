:- pred ff.
:- pred drop(int,list(int),list(int)).
:- pred last(list(int),int).
:- pred len(list(int),int).
:- pred less(int,int,bool).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),bool).

:- mode drop(in,in,out).
:- mode last(in,out).
:- mode len(in,out).
:- mode less(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,out).

adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.
leq(A,B,C) :- C=:=1, A>=0, A=<B.
leq(A,B,C) :- C=:=0, A>=B+1, B>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).

%FF
less(A,B,C) :- C=:=1, A>=0, B-A>=1.
less(A,B,C) :- C=:=0, B-A=<0, B>=0.
last([A],A).
last([A,A1|B],C) :- last([A1|B],C).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).

% ; (forall ((n Int) (xs Lst)) (=> (>= n 0) (=> (less n (len xs)) (= (last (drop n xs)) (last xs))))) ; G64

ff :- N>=0, LD-LXs>=1, N=<LenXs-1,
      len(Xs,LenXs),
      drop(N,Xs,D), last(D,LD), last(Xs,LXs).

ff :- N>=0, LD-LXs=< -1, N=<LenXs-1,  
      len(Xs,LenXs),
      drop(N,Xs,D), last(D,LD), last(Xs,LXs).
