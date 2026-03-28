New13(a,b,c,v8,v7,v6,d,e,f) :-
     v7 <= 0, d = v8, v7 = e, f = v6.
  
New13(a,b,c,d,e,f,g,h,i) :-
    New13(a,b,c,d,o,l,g,h,i),
    e >= 1, l = (f + d), e = (1 + o).
  
?- New13(x1,v61,v66,x1,v61,0,v67,v68,v62),
   New13(x2,v61,v69,x2,v61,0,v70,v71,v62),
   x2 >= (1 + x1), v61 >= 1.
