:- pred ff.
:- pred count(int,list(int),int).
:- pred map_not(bool,bool).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred insort(int,list(int),list(int)).
:- pred sort(list(int),list(int)).

:- mode count(in,in,out).
:- mode map_not(in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).
:- mode insort(in,in,out).
:- mode sort(in,out).

sort([],[]).
sort([A|B],C) :- sort(B,D), insort(A,D,C).

map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.
count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).
insort(A,[],[A]).
insort(A,[B|C],[A,B|C]) :- A=<B-1.
insort(A,[B|C],[B|D]) :- A>=B, insort(A,C,D).
ff :- A=:=1, B=:=0, C-D>=1, E-F>=1, insort(E,G,H), count(F,H,D), count(F,G,C).
ff :- A=:=1, B=:=0, C-D=< -1, E-F>=1, insort(C,G,H), count(D,H,F), count(D,G,E).
ff :- A=:=1, B=:=0, C-D=< -1, E-F>=1, insort(E,G,H), count(F,H,D), count(F,G,C).
ff :- A=:=1, B=:=0, C-D=< -1, E-F=< -1, insort(E,G,H), count(F,H,D), count(F,G,C).
