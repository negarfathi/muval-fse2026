:- pred ff.
:- pred tsize(tree(int),int).
:- pred content(tree(int),list(int)).
:- pred append(list(int),list(int),list(int)).
:- pred tmember(tree(int),int,bool).
:- pred leq(int,int,bool).
:- pred tallless(tree(int),int,bool).
:- pred tallleq(tree(int),int,bool).
:- pred tsorted(tree(int),bool).
:- pred tcontains(tree(int),int,bool).
:- pred tremoveall(tree(int),list(int),tree(int)).
:- pred tremove(tree(int),int,tree(int)).
:- pred plus(int,int,int).
:- pred tinsert(tree(int),int,tree(int)).
:- pred tinsertall(tree(int),list(int),tree(int)).
:- pred height(tree(int),int).
:- pred less(int,int,bool).
:- pred nmax(int,int,int).
:- pred mem(int,list(int),bool).
:- pred len(list(int),int).

:- mode tsize(in,out).
:- mode content(in,out).
:- mode append(in,in,out).
:- mode tmember(in,in,out).
:- mode leq(in,in,out).
:- mode tallless(in,in,out).
:- mode tallleq(in,in,out).
:- mode tsorted(in,out).
:- mode tcontains(in,in,out).
:- mode tremoveall(in,in,out).
:- mode tremove(in,in,out).
:- mode plus(in,in,out).
:- mode tinsert(in,in,out).
:- mode tinsertall(in,in,out).
:- mode height(in,out).
:- mode less(in,in,out).
:- mode nmax(in,in,out).
:- mode mem(in,in,out).
:- mode len(in,out).



:- pred adt_equaltrees(tree(int),tree(int),bool).
:- mode adt_equaltrees(in,in,out).


adt_equaltrees(leaf,leaf,A) :- A=:=1.
adt_equaltrees(leaf,node(_,_,_),A) :- A=:=0.
adt_equaltrees(node(_,_,_),leaf,A) :- A=:=0.
adt_equaltrees(node(X1,L1,R1),node(X2,L2,R2),A) :- A=:=0, X1=\=X2.
adt_equaltrees(node(X1,L1,R1),node(X2,L2,R2),A) :- A=:=0, X1=X2, adt_equaltrees(L1,L2,A).
adt_equaltrees(node(X1,L1,R1),node(X2,L2,R2),A) :- A=:=0, X1=X2, adt_equaltrees(R1,R2,A).
adt_equaltrees(node(X1,L1,R1),node(X2,L2,R2),A) :- A=:=1, X1=X2, adt_equaltrees(L1,L2,A),  adt_equaltrees(R1,R2,A).


len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
mem(A,[],B) :- B=:=0.
mem(A,[A|B],C) :- C=:=1.
mem(A,[B|C],D) :- D=:=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A>=1, mem(A,C,D).
mem(A,[B|C],D) :- D=:=0, B-A=< -1, mem(A,C,D).
nmax(A,B,B) :- C=:=1, less(A,B,C).
nmax(A,B,A) :- C=:=0, less(A,B,C).
height(leaf,A) :- A=0.
height(node(A,B,C),D) :- D=1+E, height(B,F), height(C,G), nmax(F,G,E).
tinsertall(A,[],A).
tinsertall(A,[B|C],D) :- tinsertall(A,C,E), tinsert(E,B,D).

tremove(leaf,A,leaf).
tremove(node(A,B,C),D,node(A,E,C)) :- D=<A-1, tremove(B,D,E).
tremove(node(A,B,C),D,node(A,B,E)) :- A=<D-1, tremove(C,D,E).
tremove(node(A,leaf,B),A,B).
tremove(node(A,node(B,C,D),E),A,node(B,F,E)) :- tremove(node(B,C,D),B,F).
tremoveall(A,[],A).
tremoveall(A,[B|C],D) :- tremove(A,B,E), tremoveall(E,C,D).
tcontains(leaf,A,B) :- B=:=0.
tcontains(node(A,B,C),A,D) :- D=:=1.
tcontains(node(A,B,C),D,E) :- E=:=1, tcontains(B,D,E).
tcontains(node(A,B,C),D,E) :- E=:=1, tcontains(C,D,E).
tcontains(node(A,B,C),D,E) :- E=:=0, D-A>=1,
          tcontains(B,D,E), tcontains(C,D,E).
tcontains(node(A,B,C),D,E) :- E=:=0, D-A=< -1,
          tcontains(B,D,E), tcontains(C,D,E).
tsorted(leaf,A) :- A=:=1.
tsorted(node(A,B,C),D) :- D=:=1, tsorted(B,D),
          tsorted(C,D), tallleq(B,A,D), tallless(C,A,D).

tallleq(leaf,A,B) :- B=:=1.
tallleq(node(A,B,C),D,E) :- E=:=1, A=<D, tallleq(B,D,E),
          tallleq(C,D,E).
tallless(leaf,A,B) :- B=:=1.
tallless(node(A,B,C),D,E) :- E=:=1, A=<D-1, tallless(B,D,E),
          tallless(C,D,E).
tmember(leaf,A,B) :- B=:=0.
tmember(node(A,B,C),A,D) :- D=:=1.
tmember(node(A,B,C),D,E) :- F=:=1, D-A>=1, tmember(C,D,E), less(A,D,F).
tmember(node(A,B,C),D,E) :- F=:=0, D-A=< -1, tmember(B,D,E), less(A,D,F).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).
content(leaf,[]).
content(node(A,B,C),D) :- content(B,E), content(C,F), append(E,[A|F],D).
tsize(leaf,A) :- A=0.
tsize(node(A,B,C),D) :- D=1+E, tsize(B,F), tsize(C,G), F+G=E.
tinsert(leaf,A,node(A,leaf,leaf)).
tinsert(node(A,B,C),D,node(A,B,E)) :- A=<D-1, tinsert(C,D,E).
tinsert(node(A,B,C),D,node(A,E,C)) :- A>=D, tinsert(B,D,E).

plus(A,B,C) :- C=A+B, A>=0, B>=0.
leq(A,B,R) :- A=<B, R=:=1.
leq(A,B,R) :- A>=B+1, R=:=0.
less(A,B,R) :- A=<B-1, R=:=1.
less(A,B,R) :- A>=B, R=:=0.

%ffless
ff :- A=:=0, tinsert(B,C,D), tinsertall(D,E,F), append(E,[C],G),
          tinsertall(B,G,H), adt_equaltrees(F,H,A).

:- type tree(T) ---> leaf ; node( T, tree(T), tree(T) ).
