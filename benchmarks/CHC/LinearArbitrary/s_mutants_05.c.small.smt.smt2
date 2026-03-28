(set-logic HORN)

(declare-fun |main@verifier.error| ( Int Bool ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@entry F)
        (and (= D (not (<= I 0)))
     (= H (= G 0))
     (= C F)
     (= E F)
     (= J I)
     (= B true)
     (= D true)
     (= H true)
     (= K true)
     (= B (= A 0)))
      )
      (main@verifier.error J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry J)
        (and (= C (not (<= G 0)))
     (= F (= E 0))
     (= B J)
     (= D J)
     (= H 0)
     (= I G)
     (= A true)
     (= C true)
     (not F)
     (= A (= K 0)))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph H B D F)
        (and (= A (+ 1 H)) (= C D) (= I (+ 2 B)) (= G true) (= G (= E F)))
      )
      (main@verifier.error.loopexit H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A B J K)
        (and (= H G) (= C J) (= F (+ 2 B)) (= G (+ 1 A)) (= I F) (not E) (= E (= D K)))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A C)
        (and (= E B) (= D C) (= B (not (<= 500 A))))
      )
      (main@verifier.error D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= D (or B C)) (not D) (= C (not (<= A 1000))))
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
