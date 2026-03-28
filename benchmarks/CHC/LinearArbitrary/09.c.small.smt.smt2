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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (not (<= L (- 1))))
     (= F (not (<= J L)))
     (= G (and E D))
     (= H (and G F))
     (= I (not (<= J 0)))
     (= A C)
     (= B C)
     (= K 0)
     (= M L)
     (= H true)
     (= I true)
     (= D (not (<= J (- 1)))))
      )
      (main@.lr.ph J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= L (- 1))))
     (= E (not (<= J (- 1))))
     (= F (not (<= L J)))
     (= G (and E D))
     (= H (and G F))
     (= A C)
     (= B C)
     (= K J)
     (not I)
     (= H true)
     (= I (not (<= L 0))))
      )
      (main@verifier.error K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph H A J C)
        (and (= E (not (<= H G)))
     (= D (ite B 1 0))
     (= I G)
     (= F (+ C D))
     (= G (+ 1 A))
     (= K F)
     (= E true)
     (= B (>= A J)))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph J A B D)
        (and (= C (>= A B))
     (= H (+ D E))
     (= I H)
     (= E (ite C 1 0))
     (= F (+ 1 A))
     (not G)
     (= G (not (<= J F))))
      )
      (main@verifier.error I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (not C) (= C (= A B)))
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
