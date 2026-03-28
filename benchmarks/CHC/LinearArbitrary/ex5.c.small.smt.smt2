(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (= E 0)) (= C D) (= G 0) (= H 0) (= B true) (= F true) (= B (= A 0)))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= D (= C 0)) (= B E) (= F 0) (= G 0) (= A true) (not D) (= A (= H 0)))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph I D E K)
        (and (= L (= J K))
     (= A I)
     (= F (ite C 1 0))
     (= G (+ D F))
     (= H I)
     (= N (+ E F))
     (= M (+ G (* (- 1) N)))
     (= O M)
     (= P N)
     (= L true)
     (= C (= B 0)))
      )
      (main@verifier.error O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph M D E P)
        (and (= J (= I P))
     (= A M)
     (= F (ite C 1 0))
     (= G (+ D F))
     (= H M)
     (= N L)
     (= K (+ E F))
     (= L (+ G (* (- 1) K)))
     (= O K)
     (not J)
     (= C (= B 0)))
      )
      (main@.lr.ph M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C true) (= C (not (<= A B))))
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
