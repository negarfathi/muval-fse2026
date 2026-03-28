:- pred ff.
:- pred append(list(int),list(int),list(int)).
:- pred count(int,list(int),int).
:- pred map_not(bool,bool).
:- pred leq(int,int,bool).

:- mode append(in,in,out).
:- mode count(in,in,out).
:- mode map_not(in,out).
:- mode leq(in,in,out).


map_not(A,B) :- B=:=0, A=:=1.
map_not(A,B) :- B=:=1, A=:=0.
count(A,[],B) :- B=0.
count(A,[A|B],C) :- C=1+D, count(A,B,D).
count(A,[B|C],D) :- B-A>=1, count(A,C,D).
count(A,[B|C],D) :- B-A=< -1, count(A,C,D).
append([],A,A).
append([A|B],C,[A|D]) :- append(B,C,D).

% (forall ((n Int) (h Int) (x Lst)) (=> (not (= n h)) (= (count n (append x (cons h nil))) (count n x)))) ; G77


ff :-
    NX-NXH>=1,
    N-H>=1,
    append(X,[H],XH),  count(N,XH,NXH), count(N,X,NX).

ff :-
    NX-NXH=< -1,
    N-H>=1,
    append(X,[H],XH),  count(N,XH,NXH), count(N,X,NX).

ff :-
    NX-NXH>=1,
    N-H=< -1,
    append(X,[H],XH),  count(N,XH,NXH), count(N,X,NX).

ff :-
    NX-NXH=< -1,
    N-H=< -1,
    append(X,[H],XH),  count(N,XH,NXH), count(N,X,NX).
