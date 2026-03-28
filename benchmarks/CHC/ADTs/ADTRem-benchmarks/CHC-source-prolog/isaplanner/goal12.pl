:- pred ff.
:- pred lmap(list(int),list(int)).
:- pred drop(int,list(int),list(int)).
:- pred leq(int,int,bool).
:- pred f(int,int).
:- pred p(int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode lmap(in,out).
:- mode drop(in,in,out).
:- mode leq(in,in,out).
:- mode f(in,out).
:- mode p(in,out).
:- mode adt_new1(in,in,out).

p(A,B) :- B=:=1, A>=1.
p(A,B) :- B=:=0, A=<0.
f(A,B) :- A= -1+B.

adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
lmap([],[]).
lmap([A|B],[C|D]) :- f(A,C), lmap(B,D).

% (forall ((n Int) (xs Lst)) (=> (>= n 0) (= (drop n (lmap xs)) (lmap (drop n xs))))) ; G12

ff :- A=:=0, D>=0, lmap(B,C), drop(D,C,E), drop(D,B,F), lmap(F,G), adt_new1(E,G,A).

