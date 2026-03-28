:- pred ff.
:- pred takewhile(list(int),list(int)).
:- pred dropwhile(list(int),list(int)).
:- pred append(list(int),list(int),list(int)).
:- pred leq(int,int,bool).
:- pred p(int,bool).
:- pred take(int,list(int),list(int)).
:- pred drop(int,list(int),list(int)).
:- pred f(int,int).
:- pred adt_new1(list(int),list(int),bool).

:- mode takewhile(in,out).
:- mode dropwhile(in,out).
:- mode append(in,in,out).
:- mode leq(in,in,out).
:- mode p(in,out).
:- mode take(in,in,out).
:- mode drop(in,in,out).
:- mode f(in,out).
:- mode adt_new1(in,in,out).

f(A,B) :- A= -1+B.
drop(A,[],[]).
drop(A,B,B) :- A=0.
drop(A,[B|C],D) :- A=1+E, E>=0, drop(E,C,D).
take(A,[],[]).
take(A,B,[]) :- A=0.
take(A,[B|C],[B|D]) :- A=1+E, E>=0, take(E,C,D).
p(A,B) :- B=:=1, A>=1.
p(A,B) :- B=:=0, A=<0.

adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
dropwhile([],[]).
dropwhile([A|B],C) :- D=:=1, p(A,D), dropwhile(B,C).
dropwhile([A|B],[A|B]) :- C=:=0, p(A,C).
takewhile([],[]).
takewhile([A|B],[A|C]) :- D=:=1, p(A,D), takewhile(B,C).
takewhile([A|B],[]) :- C=:=0, p(A,C).
ff :- A=:=0, takewhile(B,C), dropwhile(B,D), append(C,D,E), adt_new1(E,B,A).
