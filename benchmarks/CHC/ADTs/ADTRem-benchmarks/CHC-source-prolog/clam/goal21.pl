:- pred ff.
:- pred len(list(int),int).
:- pred append(list(int),list(int),list(int)).
:- pred rotate(int,list(int),list(int)).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode len(in,out).
:- mode append(in,in,out).
:- mode rotate(in,in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,in,out).


adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
rotate(A,B,B) :- A=0.
rotate(A,[],[]) :- A=1+B, B>=0.
rotate(A,[B|C],D) :- A=1+E, E>=0, append(C,[B],F), rotate(E,F,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
ff :- A=:=0, len(B,C), append(B,D,E), rotate(C,E,F), append(D,B,G), adt_new1(F,G,A).
