:- pred ff.
:- pred last(list(int),int).
:- pred append(list(int),list(int),list(int)).
:- pred butlast(list(int),list(int)).
:- pred map_not(bool,bool).
:- pred leq(int,int,bool).
:- pred adt_new1(list(int),list(int),bool).

:- mode last(in,out).
:- mode append(in,in,out).
:- mode butlast(in,out).
:- mode map_not(in,out).
:- mode leq(in,in,out).
:- mode adt_new1(in,in,out).


adt_new1([],[A|B],C) :- C=:=0.
adt_new1([A|B],[],C) :- C=:=0.
adt_new1([],[],A) :- A=:=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A>=1.
adt_new1([A|B],[C|D],E) :- E=:=0, C-A=< -1.
adt_new1([A|B],[C|D],E) :- F=:=E, A=C, adt_new1(B,D,F).
map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.
butlast([],[]).
butlast([A],[]).
butlast([A,A1|B],[A|C]) :- butlast([A1|B],C).

append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
last([A],A).
last([A,X|B],C) :- last([X|B],C).   

% (forall ((xs Lst)) (=> (not (= xs nil)) (= (butlast (append xs (cons (last xs) nil))) xs))) ; G48

ff :- A=:=0,
      last([X|Xs],L), append( [X|Xs] ,[L],Ys),  butlast(Ys,Zs), adt_new1( [X|Xs] ,Zs,A).

%FF
%ff :- A=:=0, last(B,C), append(B,[C],D), butlast(D,E), map_not(F,G),
%          adt_new1(E,B,A), adt_new1(B,[],F).
%ff :- A=:=0, last(B,C), append(B,[C],D), butlast(D,E), map_not(F,A),
%          adt_new1(B,[],F).
