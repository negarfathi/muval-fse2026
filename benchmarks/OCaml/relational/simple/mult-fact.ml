let rec mult x y =
  if y = 0 then 0
  else x + mult x (y - 1)

let rec fact x =
  if x = 0 then 1
  else mult x (fact (x - 1))

let main x  =
  if x > 0 then assert (fact x > 0)

(* Require using PDR. *)
(* Otherwise add this lemma with -simple-template option.
   [@@@lemma
     "mult[0:0](x,y,r), x >= 1 && r < 0 => false"
   ]
*)


(***
   ----------------------------
   [D]:
   (i)  mult[0:0](x,y,var108) :- var108 = 0 /\ y = 0.

   (ii) mult[0:0](x,y,__v28) :-
          mult[0:0](x,var10,__v25),
          y <> 0 /\ y = (1 + var10) /\ __v28 = (x + __v25).

   (A) fact[0:0](x,var107) :- var107 = 1 /\ x = 0.

   (B) fact[0:0](x,__v64) :-
         fact[0:0](var16,__v61),
         mult[0:0](x,__v61,__v64), x <> 0 /\ x = (1 + var16).
   [Gamma]:
      mult[0:0](x:unknown,y:unknown,r:unknown) {},
         x >= 1 /\ r < 0 |=
         false [Induction ID: None]

   [Entailment]:
   fact[0:0](x,var23) {}, x >= 1 /\ var23 <= 0 |= false
   ----------------------------


   ------------------------------------------- Valid
         fact[0:0](var16',__v61'),
         mult[0:0](var16,__v61',__v61), var16 <> 0 /\ var16 = (1 + var16').
         var23 = 0 /\ __v61 = 0
       x <> 0 /\ x = (1 + var16).
     x >= 1 /\ var23 <= 0,
            not(var16 >= 1 /\ __v61 <= 0),
            not(x >= 1 /\ var23 < 0)
                                |= false
   -------------------------------------------
                   (B')

     (A'):__v61=1が加わってValid       (B')
   ------------------------------------------- Unfold(fact[0:0](...))
       fact[0:0](var16,__v61),
         var23 = 0 /\ __v61 = 0
       x <> 0 /\ x = (1 + var16).
     x >= 1 /\ var23 <= 0,
            not(var16 >= 1 /\ __v61 <= 0),
            not(x >= 1 /\ var23 < 0)
                                |= false
   -------------------------------------------
                   (i)

          (i)              (ii)
   ------------------------------------------- Unfold(mult[0:0](...))
       fact[0:0](var16,__v61),
       mult[0:0](x,__v61,var23),
       x <> 0 /\ x = (1 + var16).
     x >= 1 /\ var23 <= 0,
            not(var16 >= 1 /\ __v61 <= 0),
            not(x >= 1 /\ var23 < 0)
                                |= false
   ------------------------------------------- Lemma, Apply
       fact[0:0](var16,__v61),
       mult[0:0](x,__v61,var23),
       x <> 0 /\ x = (1 + var16).
     x >= 1 /\ var23 <= 0
                                |= false
   -------------------------------------------
                    (B)


     (A):var23=1が加わってValid      (B)
   ------------------------------------------- Unfold
     fact[0:0](x,var23) {},
     x >= 1 /\ var23 <= 0
                                |= false

 ***)
