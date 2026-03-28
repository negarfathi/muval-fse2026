:- pred ff.
:- pred zip(list(int),list(int),list(pair(int,int))).
:- pred leq(int,int,bool).

:- mode zip(in,in,out).
:- mode leq(in,in,out).

:- pred adt_eqlistpairs(list(pair(int,int)),list(pair(int,int)),bool).
:- mode adt_eqlistpairs(in,in,out).



zip([],A,[]).
zip(A,[],[]).
zip([A|B],[C|D],[(A,C)|E]) :- zip(B,D,E).

adt_eqlistpairs([],[],R) :- R=:=1.
adt_eqlistpairs([],[_|_],R) :- R=:=0.
adt_eqlistpairs([_|_],[],R) :- R=:=0.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R) :- R=:=0, A>=A1+1.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R) :- R=:=0, A=<A1-1.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R) :- R=:=0, B>=B1+1.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R) :- R=:=0, B=<B1-1.
adt_eqlistpairs([(A,B)|L],[(A1,B1)|L1],R1) :- R1=:=R2, A=A1, B=B1, adt_eqlistpairs(L,L1,R2).


% (forall ((x Int) (xs Lst) (ys Lst))
% (= (zip (cons x xs) ys) (ite (= ys nil) znil
                                        %(zcons (mkpair x (head ys)) (zip xs (tail ys)))))) ; G44

ff :- zip([X|Xs],[],[_|_]).

ff :- R=:=0,
      zip([X|Xs],[Y|Ys],Z),
      zip(Xs,Ys,Z1),
      adt_eqlistpairs(Z,[(X,Y)|Z1],R).

