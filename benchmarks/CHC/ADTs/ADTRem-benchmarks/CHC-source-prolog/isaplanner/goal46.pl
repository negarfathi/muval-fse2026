:- pred ff.
:- pred zip(list(int),list(int),list(pair(int,int))).
:- pred leq(int,int,bool).
:- pred adt_new1(list(pair(int,int)),bool).

:- mode zip(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,out).


adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.
zip([],A,[]).
zip(A,[],[]).
zip([A|B],[C|D],[(A,C)|E]) :- zip(B,D,E).
ff :- zip([],B,[_|_]).
