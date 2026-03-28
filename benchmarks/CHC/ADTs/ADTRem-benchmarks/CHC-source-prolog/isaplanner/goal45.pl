:- pred ff.
:- pred zip(list(int),list(int),list(pair(int,int))).
:- pred leq(int,int,bool).

:- mode zip(in,in,out).
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



zip([],A,[]).
zip(A,[],[]).
zip([A|B],[C|D],[(A,C)|E]) :- zip(B,D,E).

% (forall ((x Int) (xs Lst) (y Int) (ys Lst)) (= (zip (cons x xs) (cons y ys)) (zcons (mkpair x y) (zip xs ys)))) ; G45


ff :- zip([B|C],[D|E],F), zip(C,E,G),
      A=:=0,  adt_eqlistpairs(F,[(B,D)|G],A).

