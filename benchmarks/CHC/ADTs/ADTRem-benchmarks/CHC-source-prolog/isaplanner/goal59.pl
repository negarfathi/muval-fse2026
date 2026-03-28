:- pred ff.
:- pred zip(list(int),list(int),list(pair(int,int))).
:- pred zdrop(int,list(pair(int,int)),list(pair(int,int))).
:- pred drop(int,list(int),list(int)).
:- pred leq(int,int,bool).

:- mode zip(in,in,out).
:- mode zdrop(in,in,out).
:- mode drop(in,in,out).
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


drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
zdrop(A,[],[]).
zdrop(A,B,B) :- A=0.
zdrop(A,[B|C],D) :- A=1+E, E>=0, zdrop(E,C,D).
zip([],A,[]).
zip(A,[],[]).
zip([A|B],[C|D],[(A,C)|E]) :- zip(B,D,E).

% (forall ((n Int) (xs Lst) (ys Lst)) (=> (>= n 0)
% (= (zdrop n (zip xs ys)) (zip (drop n xs) (drop n ys))))) ; G59

ff :-  N>=0, zip(Xs,Ys,Z), zdrop(N,Z,ZD), drop(N,Xs,DXs), drop(N,Ys,DYs), zip(DXs,DYs,Z1),
       A=:=0, adt_eqlistpairs(ZD,Z1,A).













