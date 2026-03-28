:- pred ff.
:- pred butlast(list(int),list(int)).
:- pred len(list(int),int).
:- pred minus(int,int,int).
:- pred take(int,list(int),list(int)).
:- pred leq(int,int,bool).
:- pred last(list(int),int).
:- pred adt_new1(list(int),list(int),bool).

:- mode butlast(in,out).
:- mode len(in,out).
:- mode minus(in,in,out).
:- mode take(in,in,out).
:- mode leq(in,in,out).
:- mode last(in,out).
:- mode adt_new1(in,in,out).

last([A],A).
last([A,X|B],C) :- last([X|B],C).

adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).
minus(A,B,C) :- C=0, A>=0, B-A>=1.
minus(A,B,C) :- C=A-B, B=<A, A>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
butlast([],[]).
butlast([A],[]).
butlast([A,A1|B],[A|C]) :- butlast([A1|B],C).

% see also goal48

% (forall ((xs Lst)) (= (butlast xs) (take (minus (len xs) 1) xs))) ; G50


% ff :- A=:=0, B=1, butlast(C,D), len(C,E), minus(E,B,F), take(F,C,G), adt_new1(D,G,A).
ff :- A=:=0, B=1, butlast(C,D), len(C,E), F=E-B, F>=0,  take(F,C,G), adt_new1(D,G,A).
ff :- A=:=0, B=1, butlast(C,D), len(C,E), F=0, E=<B-1,  take(F,C,G), adt_new1(D,G,A).


