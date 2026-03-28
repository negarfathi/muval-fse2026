:- pred ff.
:- pred last(list(int),int).
:- pred map_not(bool,bool).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),bool).

:- mode last(in,out).
:- mode map_not(in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,out).


adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.
map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.
last([A],A).
last([A,A1|B],C) :- last([A1|B],C).

% (forall ((x Int) (xs Lst)) (=> (not (= xs nil)) (= (last (cons x xs)) (last xs)))) ; G63


ff :- A-B>=1,
      last([C,C1|D],B), last([C1|D],A).

ff :- A-B=< -1,
      last([C,C1|D],B), last([C1|D],A).
