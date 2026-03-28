:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred id_list(list(int),list(int)).

:- mode append(in,in,out).
:- mode len(in,out).
:- mode id_list(in,out).

id_list([],[]).
id_list([A|B],[C|D]) :- A=C, id_list(B,D).
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
ff :- A-B>=1, id_list(C,C1), append(C,C1,D), len(D,B), len(C,E), 2*E=A.
ff :- A-B=< -1, id_list(C,C1), append(C,C1,D), len(D,B), len(C,E), 2*E=A.
