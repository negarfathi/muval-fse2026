:- pred ff.
:- pred hasleftistproperty(heap(int),bool).
:- pred heapsort(list(int),list(int)).
:- pred hinsert(heap(int),int,heap(int)).
:- pred heapsorta(heap(int),list(int)).
:- pred hinsertall(list(int),heap(int),heap(int)).
:- pred qheapsort(list(int),list(int)).
:- pred merge(heap(int),heap(int),heap(int)).
:- pred qheapsorta(heap(int),list(int),list(int)).
:- pred mergea(int,heap(int),heap(int),heap(int)).
:- pred less(int,int,bool).
:- pred rank(heap(int),int).
:- pred hsize(heap(int),int).
:- pred plus(int,int,int).
:- pred rightheight(heap(int),int).
:- pred sorted(list(int),bool).
:- pred leq(int,int,bool).
:- pred rsorted(list(int),bool).
:- pred len(list(int),int).

:- mode hasleftistproperty(in,out).
:- mode heapsort(in,out).
:- mode hinsert(in,in,out).
:- mode heapsorta(in,out).
:- mode hinsertall(in,in,out).
:- mode qheapsort(in,out).
:- mode merge(in,in,out).
:- mode qheapsorta(in,in,out).
:- mode mergea(in,in,in,out).
:- mode less(in,in,out).
:- mode rank(in,out).
:- mode hsize(in,out).
:- mode plus(in,in,out).
:- mode rightheight(in,out).
:- mode sorted(in,out).
:- mode leq(in,in,out).
:- mode rsorted(in,out).
:- mode len(in,out).

len([],A) :- A=0.
len([A|B],C) :- C=1+D, len(B,D).
rsorted([],A) :- A=:=1.
rsorted([A],B) :- B=:=1.
rsorted([A,B|C],D) :- D=:=1, rsorted([B|C],D), leq(B,A,D).
sorted([],A) :- A=:=1.
sorted([A],B) :- B=:=1.
sorted([A,B|C],D) :- D=:=1, rsorted([B|C],D), leq(A,B,D).
rightheight(hleaf,A) :- A=0.
rightheight(heap(A,B,C,D),E) :- E=1+F, rightheight(D,F).

plus(A,B,C) :- C=A+B, A>=0, B>=0.

hsize(hleaf,A) :- A=0.
hsize(heap(A,B,C,D),E) :- E=1+F, hsize(C,G), hsize(D,H), plus(G,H,F).
rank(hleaf,A) :- A=0.
rank(heap(A,B,C,D),A).

leq(A,B,R) :- A=<B, R=:=1.
leq(A,B,R) :- A>=B+1, R=:=0.

less(A,B,R) :- A=<B-1, R=:=1.
less(A,B,R) :- A>=B, R=:=0.

mergea(A,B,C,heap(D,A,B,C)) :- E=:=1, D=1+F, leq(G,H,E), rank(B,H), rank(C,G),
          rank(C,F).
mergea(A,B,C,heap(D,A,C,B)) :- E=:=0, D=1+F, leq(G,H,E), rank(B,H), rank(C,G),
          rank(B,F).

qheapsorta(hleaf,A,A).
qheapsorta(heap(A,B,C,D),E,F) :- merge(C,D,G), qheapsorta(G,[B|E],F).
qheapsort(A,B) :- hinsertall(A,hleaf,C), qheapsorta(C,[],B).

merge(A,hleaf,A).
merge(hleaf,A,A).
merge(heap(A,B,C,D),heap(E,F,G,H),I) :- J=:=1, less(F,B,J), mergea(B,C,K,I),
          merge(D,heap(E,F,G,H),K).
merge(heap(A,B,C,D),heap(E,F,G,H),I) :- J=:=0, less(F,B,J), mergea(F,G,K,I),
          merge(heap(A,B,C,D),H,K).

heapsorta(hleaf,[]).
heapsorta(heap(A,B,C,D),[B|E]) :- merge(C,D,F), heapsorta(F,E).

hinsertall([],A,A).
hinsertall([A|B],C,D) :- hinsertall(B,C,E), hinsert(E,A,D).

heapsort(A,B) :- hinsertall(A,hleaf,C), heapsorta(C,B).

hasleftistproperty(hleaf,A) :- A=:=1.
hasleftistproperty(heap(A,B,C,D),E) :- E=:=1, A=1+F,
          hasleftistproperty(C,E), hasleftistproperty(D,E), leq(G,H,E),
          rightheight(C,H), rightheight(D,G), rightheight(D,F).

hinsert(A,B,C) :- D=1, merge(heap(D,B,hleaf,hleaf),A,C).

%ffless
ff :- A=:=1, B-C=<0, hinsert(D,E,F), hsize(F,B), hsize(D,C),
          hasleftistproperty(D,A).
ff :- A=:=1, B-C>=2, hinsert(D,E,F), hsize(F,B), hsize(D,C),
          hasleftistproperty(D,A).
:- type heap(T) ---> hleaf ; heap( T, T, heap(T), heap(T) ).
