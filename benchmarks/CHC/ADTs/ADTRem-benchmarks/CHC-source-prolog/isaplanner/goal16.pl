:- pred ff.
:- pred last(list(int),int).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),bool).

:- mode last(in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,out).


adt_new1([A|B],C) :- C=:=0.
adt_new1([],A) :- A=:=1.
last([A],A).
last([A,A1|B],C) :- last([A1|B],C).

% FF
ff :- A-B>=1, last([A],B).
ff :- A-B=< -1, last([A],B).

%ff :- A-B>=1, last([A|C],B).
%ff :- A-B=< -1, last([A|C],B).
%ff :- A=:=0, last([B|C],D), adt_new1(C,A).
