let rec mult x y =
  if y = 0 then 0
  else x + mult x (y - 1)

let rec fact x =
  if x = 0 then 1
  else mult x (fact (x - 1))

let main x y = if x = y then assert (fact x = fact y)

(* Require -extract-entailment option. *)
(* Otherwise add the following lemma.
   [@@@lemma
     "mult[0:0](x,y,z) && mult[0:0](x,y,z'), z <> z' => false"
   ]
*)

(***
   ----------------------------
   [D]: 
   mult[0:0](x,y,var113) :- var113 = 0 /\ y = 0.

   mult[0:0](x,y,__v28) :-
     mult[0:0](x,var10,__v25),
     y <> 0 /\ y = (1 + var10) /\ __v28 = (x + __v25).

   (A) fact[0:0](x,var112) :- var112 = 1 /\ x = 0.

   (B) fact[0:0](x,__v64) :-
         fact[0:0](var16,__v61),
         mult[0:0](x,__v61,__v64), x <> 0 /\ x = (1 + var16).
   [Gamma]: 
   mult[0:0](x,y,z) {},
   mult[0:0](x,y,z') {}, z <> z' |=
     false [Induction ID: None]

   [Entailment]: 
   fact[0:0](x,var24) {},
   fact[0:0](x,var25) {}, var24 <> var25 |=
   false
   ----------------------------


         var16_B = var16_B'が言えるので、Lemmaがえて
         var24 = var25が言えてValid
   ------------------------------------------------------- Lemma
         fact[0:0](var16_B,__v61_B),
         mult[0:0](x,__v61_B,var24), x <> 0 /\ x = (1 + var16_B).
         fact[0:0](var16_B',__v61_B'),
         mult[0:0](x,__v61_B',var25), x <> 0 /\ x = (1 + var16_B').
       var24 <> var25 
                              |= false
   -------------------------------------------------------
                          (B')

          (A'):x=0でValid              (B')
   ------------------------------------------------------- Unfold(fact[0:0](x,var25))
         fact[0:0](var16,__v61),
         mult[0:0](x,__v61,var24), x <> 0 /\ x = (1 + var16).
      fact[0:0](x,var25) {},
      var24 <> var25 
                              |= false
   -------------------------------------------------------
                       (B)

    (A):他方もunfold、var24=1/\var25=1でValid    (B)
   ------------------------------------------------------- Unfold(fact[0:0](x,var24))
      fact[0:0](x,var24) {},
      fact[0:0](x,var25) {},
      var24 <> var25 
                              |= false
 ***)
