:- pred ff.
:- pred zip(list(int),list(int),list(pair(int,int))).
:- pred ztake(int,list(pair(int,int)),list(pair(int,int))).
:- pred take(int,list(int),list(int)).
:- pred leq(int,int,bool).

:- mode zip(in,in,out).
:- mode ztake(in,in,out).
:- mode take(in,in,out).
:- mode leq(in,in,out).

:- pred adt_eqlistpairs(list(pair(int,int)),list(pair(int,int)),bool).
:- mode adt_eqlistpairs(in,in,out).

adt_eqlistpairs([],[],R) :- R=:=1.
adt_eqlistpairs([],[_|_],R) :- R=:=0.
adt_eqlistpairs([_|_],[],R) :- R=:=0.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R) :- R=:=0, A>=A1+1.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R) :- R=:=0, A=<A1-1.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R) :- R=:=0, B>=B1+1.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R) :- R=:=0, B=<B1-1.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R1) :- R1=:=R2, A=A1, B=B1, adt_eqlistpairs(L,L1,R2).


take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).
ztake(A,[],[]).
ztake(A,B,[]) :- A=0.
ztake(A,[B|C],[B|D]) :- A=1+E, E>=0, ztake(E,C,D).
zip([],A,[]).
zip(A,[],[]).
zip([A|B],[C|D],[(A,C)|E]) :- zip(B,D,E).

% (forall ((n Int) (xs Lst) (ys Lst)) (=> (>= n 0) (= (ztake n (zip xs ys)) (zip (take n xs) (take n ys))))) ; G84


ff :- N>=0, zip(Xs,Ys,Z), ztake(N,Z,ZT), take(N,Xs,TX), take(N,Ys,TY), zip(TX,TY,TZ),
      A=:=0,  adt_eqlistpairs(ZT, TZ,A).

