(set-logic HORN)

(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (not (<= K H)))
     (= F (or E D))
     (= G (not (<= K 0)))
     (= A C)
     (= B C)
     (= I 0)
     (= J H)
     (not F)
     (= G true)
     (= D (not (<= 1 K))))
      )
      (main@.lr.ph I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= 1 G)))
     (= E (not (<= G I)))
     (= F (or E D))
     (= A C)
     (= B C)
     (= J I)
     (not H)
     (not F)
     (= H (not (<= G 0))))
      )
      (main@verifier.error J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph A B H)
        (and (= E (+ (- 1) B))
     (= F D)
     (= G E)
     (= D (+ 1 A))
     (= C true)
     (= C (not (<= H D))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph A B D)
        (and (= F (+ (- 1) B)) (= C (+ 1 A)) (= G F) (not E) (= E (not (<= D C))))
      )
      (main@verifier.error G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (= B true) (= B (not (<= 0 A))))
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
