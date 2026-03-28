(set-logic HORN)

(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph13| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph9| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_21| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry I L F)
        (and (= B (= M 0))
     (= D (= C 0))
     (= H (= G 0))
     (= E F)
     (= K 0)
     (= N 0)
     (= A true)
     (= B true)
     (= D true)
     (= H true)
     (= A (= J 0)))
      )
      (main@.preheader1 I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry G I L)
        (and (= F (= E 0))
     (= A (= H 0))
     (= C (= M 0))
     (= D L)
     (= K 0)
     (= B true)
     (not F)
     (= A true)
     (= C true)
     (= B (= J 0)))
      )
      (main@.lr.ph13 G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.preheader1 H I A E B C)
        (and (= D E) (= J 0) (= K 0) (= G true) (= G (= F 0)))
      )
      (main@.preheader H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader1 D E F G H I)
        (and (= A G) (not C) (= C (= B 0)))
      )
      (main@.lr.ph9 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph9 B C E H I A)
        (and (= F 0) (= G (+ A (* (- 1) E))) (= D 0))
      )
      (main@_21 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph13 M N P Q A G I)
        (and (= J (= H I))
     (= B (mod L 2))
     (= D (+ L A))
     (= E (ite C 1 0))
     (= F G)
     (= L (+ 1 A))
     (= K (+ D E))
     (= O L)
     (= R K)
     (= J true)
     (= C (= B 0)))
      )
      (main@.preheader1 M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph13 K L M N A P Q)
        (and (= D (= C 0))
     (= B (+ 1 A))
     (= C (mod B 2))
     (= E (+ B A))
     (= F (ite D 1 0))
     (= J (+ E F))
     (= G P)
     (= O J)
     (not I)
     (= I (= H Q)))
      )
      (main@.lr.ph13 K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader C A F G)
        (and (= B C) (= H F) (= I G) (= E true) (= E (= D 0)))
      )
      (main@verifier.error H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.preheader J K E D)
        (and (= F 2) (= G E) (= H 1) (= A J) (= I D) (not C) (= C (= B 0)))
      )
      (main@.lr.ph F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@_21 S T A I K H M O)
        (and (= G (= F 0))
     (= P (= N O))
     (= B (mod K 2))
     (= D (+ A I))
     (= E (ite C 1 0))
     (= F (mod Q 2))
     (= J (ite G H I))
     (= Q (+ D E))
     (= R (+ J K))
     (= L M)
     (= U Q)
     (= V R)
     (= P true)
     (= C (= B 0)))
      )
      (main@.preheader S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@_21 O P A R I T U V)
        (and (= G (= F 0))
     (= L (= K V))
     (= B (mod I 2))
     (= D (+ A R))
     (= E (ite C 1 0))
     (= F (mod N 2))
     (= H (ite G T R))
     (= J U)
     (= M (+ H I))
     (= N (+ D E))
     (= Q N)
     (= S M)
     (not L)
     (= C (= B 0)))
      )
      (main@_21 O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph F A D B H J)
        (and (= C (+ 1 D))
     (= G H)
     (= L (+ F A))
     (= E (+ 1 F))
     (= M (+ D B))
     (= N L)
     (= O M)
     (= K true)
     (= K (= I J)))
      )
      (main@verifier.error N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph D A C B P Q)
        (and (= E P)
     (= K (+ D A))
     (= H (+ 1 C))
     (= I (+ 1 D))
     (= J (+ C B))
     (= L I)
     (= M K)
     (= N H)
     (= O J)
     (not G)
     (= G (= F Q)))
      )
      (main@.lr.ph L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C true) (= C (not (<= B A))))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
