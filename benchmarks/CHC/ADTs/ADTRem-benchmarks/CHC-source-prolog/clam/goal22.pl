:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred len(list(int),int).
:- pred even(int,bool).
:- pred leq(int,int,bool).
:- pred map_not(bool,bool).

:- mode append(in,in,out).
:- mode len(in,out).
:- mode even(in,out).
:- mode leq(in,in,out).
:- mode map_not(in,out).

%map_not(A,B) :- B=:=0, A=:=1.
%map_not(A,B) :- B=:=1, A=:=0.
%
%even(A,B) :- B=:=1, A=0.
%even(A,B) :- A=1+C, C>=0, even(C,D), map_not(D,B).
even(A,B) :- A=2*K, B=:=1.
even(A,B) :- A=2*K+1, B=:=0.
len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
%ff :- A#B, append(C,D,E), len(E,F), even(F,A), append(D,C,G), len(G,H), even(H,B).

ff :- F=2*F1, H=2*H1+1, append(C,D,E), len(E,F), append(D,C,G), len(G,H).
ff :- F=2*F1+1, H=2*H1, append(C,D,E), len(E,F), append(D,C,G), len(G,H).
