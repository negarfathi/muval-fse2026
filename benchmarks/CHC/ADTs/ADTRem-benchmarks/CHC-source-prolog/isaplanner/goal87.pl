:- pred ff.
:- pred rev(list(int),list(int)).
:- pred zip(list(int),list(int),list(pair(int,int))).
:- pred zrev(list(pair(int,int)),list(pair(int,int))).
:- pred len(list(int),int).
:- pred leq(int,int,bool).
:- pred zappend(list(pair(int,int)),list(pair(int,int)),list(pair(int,int))).
:- pred append(list(int),list(int),list(int)).

:- mode rev(in,out).
:- mode zip(in,in,out).
:- mode zrev(in,out).
:- mode len(in,out).
:- mode leq(in,in,out).
:- mode zappend(in,in,out).
:- mode append(in,in,out).


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


append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
zappend([],A,A).
zappend([A|B],C,[A|D]) :- zappend(B,C,D).


len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
zrev([],[]).
zrev([A|B],C) :- zrev(B,D), zappend(D,[A],C).
zip([],A,[]).
zip(A,[],[]).
zip([A|B],[C|D],[(A,C)|E]) :- zip(B,D,E).
rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).


% (forall ((xs Lst) (ys Lst)) (=> (= (len xs) (len ys)) (= (zip (rev xs) (rev ys)) (zrev (zip xs ys))))) ; G87

ff :- LX=LY, len(X,LX), len(Y,LY),
      rev(X,RX), rev(Y,RY), zip(RX,RY,ZR),
      zip(X,Y,Z), zrev(Z,RZ),
      A=:=0, adt_eqlistpairs(ZR,RZ,A).




