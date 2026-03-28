:- pred ff.
:- pred butlast(list(int),list(int)).
:- pred len(list(int),int).
:- pred minus(int,int,int).
:- pred leq(int,int,bool).
:- pred last(list(int),int).
:- pred adt_new1(list(int),bool).

:- mode butlast(in,out).
:- mode len(in,out).
:- mode minus(in,in,out).
:- mode leq(in,in,out).
:- mode last(in,out).
:- mode adt_new1(in,out).

last([A],A).
last([A,A1|B],C) :- last([A1|B],C).
adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.

minus(A,B,C) :- C=0, A>=0, B-A>=1.
minus(A,B,C) :- C=A-B, B=<A, A>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
butlast([],[]).
butlast([A],[]).
butlast([A,A1|B],[A|C]) :- butlast([A1|B],C).

% (forall ((xs Lst)) (= (len (butlast xs)) (minus (len xs) 1))) ; G68

%ff :- A=1, B=\=C, butlast(D,E), len(E,C), len(D,F), minus(F,A,B).
ff :- A=1, B=\=C, butlast(D,E), len(E,C), len(D,F), B=F-A, B>=0.
ff :- A=1, B=\=C, butlast(D,E), len(E,C), len(D,F), B=0, F=<A-1.
