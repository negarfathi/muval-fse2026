New13(v10,v9,v8,v7,v6,a,b,c,d,e) :-
    v7 >= (1 + v8),
    a = v10,
    v8 = c,
    v7 = d,
    e = v6,
    b = v9.
  
New13(a,b,c,d,e,f,g,h,i,j) :-
    New13(a,b,c,p,m,f,g,h,i,j),
    d <= c, m = (e + d), p = (1 + d).

(* newv1: i,  newv2: x *)
?- New13(x1,v69,x1,newv1,newv2,v70,v71,v72,v73,y1),
   New13(x2,v74,x2,newv1,newv2,v75,v76,v77,v78,y2),
   x2 >= x1, y1 >= (1 + y2), newv1 >= 0.

(* Original goal clause
  ?-
    New13(x1,v69,x1,0,0,v70,v71,v72,v73,y1),
    New13(x2,v74,x2,0,0,v75,v76,v77,v78,y2),
    x2 >= x1, y1 >= (1 + y2).
*)