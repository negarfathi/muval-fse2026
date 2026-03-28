:- pred ff.
:- pred filter(list(int),list(int)).
:- pred len(list(int),int).
:- pred leq(int,int,bool).
:- pred less(int,int,bool).
:- pred p(int,bool).
:- pred f(int,int).

:- mode filter(in,out).
:- mode len(in,out).
:- mode leq(in,in,out).
:- mode less(in,in,out).
:- mode p(in,out).
:- mode f(in,out).

f(A,B) :- A= -1+B.
p(A,B) :- B=:=1, A>=1.
p(A,B) :- B=:=0, A=<0.

%FF
less(A,B,C) :- C=:=1, A>=0, B-A>=1.
less(A,B,C) :- C=:=0, B-A=<0, B>=0.
leq(A,B,C) :- C=:=1, A>=0, A=<B.
leq(A,B,C) :- C=:=0, A>=B+1, B>=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
filter([],[]).
filter([A|B],[A|C]) :- D=:=1, p(A,D), filter(B,C).
filter([A|B],C) :- D=:=0, p(A,D), filter(B,C).

ff :- filter(B,C), len(C,D), len(B,E), D>=E+1.
