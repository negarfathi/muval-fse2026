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

% (forall ((xs Lst) (ys Lst)) (= (butlast (append xs ys)) (ite (= ys nil) (butlast xs) (append xs (butlast ys))))) ; G49

ff :- A=:=0,
%      E=:=1, adt_new1(Ys,[],E), % Ys == [], % FF replace Ys with [] ?
      append(Xs,[],XYs), butlast(XYs,BXYs),
      butlast(Xs,BXs),
      adt_new1(BXYs,BXs,A).

ff :- A=:=0,
%      E=:=0, adt_new1(Ys,[],E), % Ys \== [], % FF replace Ys with [Y|Ys] ?
      append(Xs,[Y|Ys],XYs), butlast(XYs,BXYs),
      butlast([Y|Ys],BYs), append(Xs,BYs,XBYs),
      adt_new1(BXYs,XBYs,A).


%ff :- A=:=0, append(B,[],C), butlast(C,D), butlast(C,D), append(B,[],C),
%          butlast(B,E), butlast(C,D), append(B,[],C), adt_new1(D,E,A).
%ff :- A=:=0, B=:=0, append(C,D,E), butlast(E,F), butlast(E,F), append(C,D,E),
%          append(C,G,H), butlast(D,G), butlast(E,F), append(C,D,E),
%          adt_new1(D,[],A), adt_new1(F,H,B).
