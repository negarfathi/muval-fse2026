(set-logic HORN)

(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@entry A E)
        (and (= G (= F 0)) (= D E) (= C true) (= G true) (not H) (= C (= B 0)))
      )
      (main@verifier.error H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry E H)
        (and (= D (= C 0)) (= B H) (= F 1) (= G 1) (= A true) (not D) (= A (= I 0)))
      )
      (main@.lr.ph E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) ) 
    (=>
      (and
        (main@.lr.ph B E H J L)
        (and (= M (= K L))
     (= A B)
     (= F (ite D 1 0))
     (= I J)
     (= G (+ E F))
     (= N (+ G H))
     (= M true)
     (= D (not (<= C 5))))
      )
      (main@verifier.error.loopexit N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph L D F O P)
        (and (= I (= H P))
     (= A L)
     (= E (ite C 1 0))
     (= G O)
     (= K (+ J F))
     (= J (+ D E))
     (= M J)
     (= N K)
     (not I)
     (= C (not (<= B 5))))
      )
      (main@.lr.ph L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (= A 0)))
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
        (= A true)
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
