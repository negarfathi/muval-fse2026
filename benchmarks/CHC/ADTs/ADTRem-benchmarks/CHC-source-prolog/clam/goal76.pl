:- type tree(T) ---> leaf ; node( T, tree(T), tree(T) ).

:- pred ff.
:- pred revflat(tree(int),list(int)).
:- pred qrevaflat(tree(int),list(int),list(int)).
:- pred leq(int,int,bool).
:- pred qreva(list(int),list(int),list(int)).
:- pred append(list(int),list(int),list(int)).
:- pred rev(list(int),list(int)).
:- pred adt_new1(list(int),list(int),bool).

:- mode revflat(in,out).
:- mode qrevaflat(in,in,out).
:- mode leq(in,in,out).
:- mode qreva(in,in,out).
:- mode append(in,in,out).
:- mode rev(in,out).
:- mode adt_new1(in,in,out).

rev([],[]).
rev([A|B],C) :- rev(B,D), append(D,[A],C).
qreva([],A,A).
qreva([A|B],C,D) :- qreva(B,[A|C],D).

adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
qrevaflat(leaf,A,A).
qrevaflat(node(A,B,C),D,E) :- qrevaflat(C,D,F), qrevaflat(B,[A|F],E).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
revflat(leaf,[]).
revflat(node(A,B,C),D) :- revflat(B,E), revflat(C,F), append(E,[A|F],D).
ff :- A=:=0, revflat(B,C), append(C,D,E), qrevaflat(B,D,F), adt_new1(E,F,A).
