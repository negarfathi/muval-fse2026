:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred zip(list(int),list(int),list(pair(int,int))).
:- pred len(list(int),int).
:- pred take(int,list(int),list(int)).
:- pred drop(int,list(int),list(int)).
:- pred zappend(list(pair(int,int)),list(pair(int,int)),list(pair(int,int))).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode zip(in,in,out).
:- mode len(in,out).
:- mode take(in,in,out).
:- mode drop(in,in,out).
:- mode zappend(in,in,out).
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


zappend([],A,A).
zappend([A|B],C,[A|D]) :- zappend(B,C,D).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
zip([],A,[]).
zip(A,[],[]).
zip([A|B],[C|D],[(A,C)|E]) :- zip(B,D,E).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).


% (forall ((xs Lst) (ys Lst) (zs Lst)) (= (zip xs (append ys zs))
                  % (zappend (zip (take (len ys) xs) ys) (zip (drop (len ys) xs) zs)))) ; G86


ff :- append(B,C,D), zip(E,D,F), len(B,G), take(G,E,H), zip(H,B,I),
          len(B,J), drop(J,E,K), zip(K,C,L), zappend(I,L,M),
          A=:=0, adt_eqlistpairs(F,M,A).
