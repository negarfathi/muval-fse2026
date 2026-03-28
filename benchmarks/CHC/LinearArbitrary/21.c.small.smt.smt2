(set-logic HORN)

(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_11| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry G A)
        (and (= E (= D 0))
     (= I (= H 0))
     (= F G)
     (= J 0)
     (= K 0)
     (= C true)
     (= E true)
     (= I true)
     (= C (= B 0)))
      )
      (main@verifier.error J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry H L)
        (and (= B (= I 0))
     (= E (= D 0))
     (= G 0)
     (= K 0)
     (= C H)
     (= F 0)
     (= J 0)
     (= A true)
     (= B true)
     (not E)
     (= A (= M 0)))
      )
      (main@.preheader F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.preheader H I J K E D L M)
        (and (= A L) (= G D) (= F E) (= C true) (= C (= B 0)))
      )
      (main@._crit_edge F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.preheader D E F G H I J K)
        (and (= A J) (not C) (= C (= B 0)))
      )
      (main@.lr.ph D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph E F G H C D M N)
        (and (= B (= E F))
     (= L (ite B 1 0))
     (= I D)
     (= J (ite A 1 0))
     (= K C)
     (= A (not B)))
      )
      (main@_11 E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_11 L M N O A B C D P Q)
        (and (= E P)
     (= K H)
     (= H (+ A B))
     (= J I)
     (= I (+ C D))
     (= G true)
     (= G (= F Q)))
      )
      (main@._crit_edge J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_11 H I J K A M B O P Q)
        (and (= C P) (= F (+ B O)) (= G (+ A M)) (= L G) (= N F) (not E) (= E (= D Q)))
      )
      (main@_11 H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@._crit_edge O N E H J L A B)
        (and (= M (= K L))
     (= D (+ E F))
     (= F (ite C 1 0))
     (= G (+ 1 H))
     (= I J)
     (= P O)
     (= Q N)
     (= M true)
     (= C (>= O N)))
      )
      (main@verifier.error P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@._crit_edge J K B D N O R S)
        (and (= G (= F O))
     (= C (ite A 1 0))
     (= E N)
     (= M I)
     (= Q K)
     (= H (+ B C))
     (= I (+ 1 D))
     (= L H)
     (= P J)
     (not G)
     (= A (>= J K)))
      )
      (main@.preheader L M N O P Q R S)
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
