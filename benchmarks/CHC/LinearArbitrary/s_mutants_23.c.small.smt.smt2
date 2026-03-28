(set-logic HORN)

(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (main@entry A)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (= E 0)) (= C D) (= B true) (= F true) (= G true) (= B (= A 0)))
      )
      (main@verifier.error G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= D (= C 0))
     (= B E)
     (= H 0)
     (= F 0)
     (= G 0)
     (= A true)
     (not D)
     (= A (= I 0)))
      )
      (main@.lr.ph E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph M D G I O)
        (and (= P (= N O))
     (= A M)
     (= C (ite E 1 (- 1)))
     (= F (ite E (- 1) 1))
     (= H (+ C D))
     (= L M)
     (= J (+ H I))
     (= K (+ F G))
     (= Q (+ J K))
     (= P true)
     (= E (= B 0)))
      )
      (main@verifier.error.loopexit Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph P D G H T)
        (and (= L (= K T))
     (= A P)
     (= C (ite E 1 (- 1)))
     (= F (ite E (- 1) 1))
     (= I (+ O H))
     (= J P)
     (= O (+ C D))
     (= M (+ I N))
     (= S M)
     (= N (+ F G))
     (= Q O)
     (= R N)
     (not L)
     (= E (= B 0)))
      )
      (main@.lr.ph P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (not (<= A (- 1)))))
      )
      (main@verifier.error C)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (not A)
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
