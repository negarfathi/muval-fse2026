:- pred ff.
:- pred rotate(int,list(int),list(int)).
:- pred plus(int,int,int).
:- pred append(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred adt_equals(list(int),list(int),bool).

:- mode rotate(in,in,out).
:- mode plus(in,in,out).
:- mode append(in,in,out).
:- mode len(in,out).
:- mode adt_equals(in,in,out).


len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).

append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

plus(A,B,C) :- B=C-A, A>=0, C-A>=0.

rotate(A,B,B) :- A=0.
rotate(A,[],[]) :- A=1+B, B>=0.
rotate(A,[B|C],D) :- A=1+E, E>=0, append(C,[B],F), rotate(E,F,D).

adt_equals([],[A|B],C) :- C=:=0.
adt_equals([A|B],[],C) :- C=:=0.
adt_equals([],[],A) :- A=:=1.
adt_equals([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_equals([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_equals([A|B],[C|D],E) :- F=:=E, A=C, adt_equals(B,D,F).


ff :- A=:=0, B=1+C, D=1+E, C>=0, E>=0, rotate(E,F,G), rotate(B,G,H), 
          rotate(C,F,I), rotate(D,I,J), adt_equals(H,J,A).
