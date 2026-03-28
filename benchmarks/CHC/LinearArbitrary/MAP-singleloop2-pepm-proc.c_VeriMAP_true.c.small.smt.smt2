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
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= D (not (<= F 0)))
     (= A B)
     (= E 0)
     (= G 0)
     (= H (* 2 F))
     (not C)
     (= D true)
     (= C (not (<= 1 F))))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= C (not (<= 1 E)))
     (= D (* 2 E))
     (= A B)
     (= G 0)
     (= H 0)
     (not F)
     (not C)
     (= F (not (<= E 0))))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A I D K)
        (and (= E (not (<= K F)))
     (= C (ite B 2 (- 1)))
     (= F (+ 1 A))
     (= G (+ C D))
     (= H F)
     (= J G)
     (= E true)
     (= B (not (<= I A))))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A B E F)
        (and (= G (not (<= F I)))
     (= D (ite C 2 (- 1)))
     (= H (+ D E))
     (= I (+ 1 A))
     (= J I)
     (= K H)
     (not G)
     (= C (not (<= B A))))
      )
      (main@verifier.error J K)
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
