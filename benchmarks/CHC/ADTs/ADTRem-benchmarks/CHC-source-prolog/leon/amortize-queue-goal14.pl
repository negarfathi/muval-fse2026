:- pred ff.
:- pred qpop(queue(int),queue(int)).
:- pred butlast(list(int),list(int)).
:- pred enqueue(queue(int),int,queue(int)).
:- pred amortizequeue(list(int),list(int),queue(int)).
:- pred less(int,int,bool).
:- pred isempty(queue(int),bool).
:- pred leq(int,int,bool).
:- pred isamortized(queue(int),bool).
:- pred plus(int,int,int).
:- pred len(list(int),int).
:- pred qlen(queue(int),int).
:- pred append(list(int),list(int),list(int)).
:- pred qrev(list(int),list(int)).
:- pred queuetolst(queue(int),list(int)).
:- pred qreva(list(int),list(int),list(int)).


:- mode qpop(in,out).
:- mode butlast(in,out).
:- mode enqueue(in,in,out).
:- mode amortizequeue(in,in,out).
:- mode less(in,in,out).
:- mode isempty(in,out).
:- mode leq(in,in,out).
:- mode isamortized(in,out).
:- mode plus(in,in,out).
:- mode len(in,out).
:- mode qlen(in,out).
:- mode append(in,in,out).
:- mode qrev(in,out).
:- mode queuetolst(in,out).
:- mode qreva(in,in,out).

:- pred adt_new1(list(int),list(int),bool).
:- mode adt_new1(in,in,out).

adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).

qreva([],A,A).
qreva([A|B],C,D) :- qreva(B,[A|C],D).
queuetolst(queue(A,B),C) :- qrev(B,D), append(A,D,C).
qlen(queue(A,B),C) :- len(A,D), len(B,E), plus(D,E,C).
isamortized(queue(A,B),C) :- len(B,D), len(A,E), leq(D,E,C).
isempty(queue([],[]),A) :- A=:=1, A=:=1.
qrev(A,B) :- qreva(A,[],B).
amortizequeue(A,B,queue(A,B)) :- C=:=1, leq(D,E,C), len(A,E), len(B,D).
amortizequeue(A,B,queue(C,[])) :- D=:=0, leq(E,F,D), len(A,F), len(B,E),
          append(A,G,C), qrev(B,G).
enqueue(queue(A,B),C,D) :- amortizequeue(A,[C|B],D).
butlast([],[]).
butlast([A],[]).
butlast([A,A1|B],[A|C]) :- butlast([A1|B],C).
qpop(queue(A,[B|C]),queue(A,C)).
qpop(queue(A,[]),queue(B,[])) :- butlast(A,B).

len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

plus(A,B,C) :- C=A+B, A>=0, B>=0.
leq(A,B,R) :- A=<B, R=:=1.
leq(A,B,R) :- A>=B+1, R=:=0.
less(A,B,R) :- A=<B-1, R=:=1.
less(A,B,R) :- A>=B, R=:=0.

%ffless
ff :- A=:=0, queuetolst(queue(B,C),D), append(D,[E],F),
          enqueue(queue(B,C),E,G), queuetolst(G,H), adt_new1(F,H,A).
:- type queue(T) ---> queue( list(T), list(T) ).
