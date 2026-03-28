:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred even(int,bool).
:- pred plus(int,int,int).
:- pred leq(int,int,bool).
:- pred map_not(bool,bool).

:- mode append(in,in,out).
:- mode len(in,out).
:- mode even(in,out).
:- mode plus(in,in,out).
:- mode leq(in,in,out).
:- mode map_not(in,out).

%map_not(A,B) :- B=:=0, A=:=1.
%map_not(A,B) :- B=:=1, A=:=0.
%
%plus(A,B,C) :- A=1+D, C=1+E, B>=0, D>=0, plus(D,B,E).
%plus(A,B,C) :- B=C-A, A>=0, C-A>=0.
%even(A,B) :- B=:=1, A=0.
%even(A,B) :- A=1+C, C>=0, even(C,D), map_not(D,B).
even(A,B) :- A=2*K, B=:=1.
even(A,B) :- A=2*K+1, B=:=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

%ff :- A#B, append(C,D,E), len(E,F), even(F,A), len(C,G), len(D,H), G+H=I, even(I,B).
ff :- F=2*F1, I=2*I1+1, append(C,D,E), len(E,F), len(C,G), len(D,H), G+H=I.
ff :- F=2*F1+1, I=2*I1, append(C,D,E), len(E,F), len(C,G), len(D,H), G+H=I.
