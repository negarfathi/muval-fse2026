:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred even(int,bool).
:- pred leq(int,int,bool).
:- pred map_not(bool,bool).
:- pred id_list(list(int),list(int)).

:- mode append(in,in,out).
:- mode len(in,out).
:- mode even(in,out).
:- mode leq(in,in,out).
:- mode map_not(in,out).
:- mode id_list(in,out).

id_list([],[]).
id_list([A|B],[C|D]) :- A=C, id_list(B,D).
map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.

even(A,B) :- B=:=1, A=0.
even(A,B) :- A=1+C, C>=0, even(C,D), map_not(D,B).
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- id_list(B,B1), append(B,B1,C), len(C,D), D=2*E+1.
