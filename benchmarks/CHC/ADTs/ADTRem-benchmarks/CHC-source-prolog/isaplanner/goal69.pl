:- pred ff.
:- pred delete(int,list(int),list(int)).
:- pred len(list(int),int).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).

:- mode delete(in,in,out).
:- mode len(in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).

%FF
less(A,B,C) :- C=:=1, A>=0, B-A>=1.
less(A,B,C) :- C=:=0, B-A=<0, B>=0.

leq(A,B,C) :- C=:=1, A>=0, A=<B.
leq(A,B,C) :- C=:=0, A>=B+1, B>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
delete(A,[],[]).
delete(A,[A|B],C) :- delete(A,B,C).
delete(A,[B|C],[B|D]) :- B-A>=1, delete(A,C,D).
delete(A,[B|C],[B|D]) :- B-A=< -1, delete(A,C,D).

ff :- delete(B,C,D), len(D,E), len(C,F), E>=F+1.
