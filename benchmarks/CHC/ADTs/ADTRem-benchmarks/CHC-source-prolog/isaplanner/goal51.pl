:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred butlast(list(int),list(int)).
:- pred leq(int,int,bool).
:- pred last(list(int),int).
:- pred adt_new1(list(int),list(int),bool).

:- mode append(in,in,out).
:- mode butlast(in,out).
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
butlast([],[]).
butlast([A],[]).
butlast([A,A1|B],[A|C]) :- butlast([A1|B],C).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).


% see also goal48

% (forall ((xs Lst) (x Int)) (= (butlast (append xs (cons x nil))) xs)) ; G51


ff :- A=:=0, append(B,[C],D), butlast(D,E), adt_new1(E,B,A).
