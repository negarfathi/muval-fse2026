(set-logic HORN)

(declare-fun |main@entry.split| ( ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Bool) (L Bool) ) 
    (=>
      (and
        (main@entry C)
        (and (= F (not (<= E 0)))
     (= I (not (<= 50 J)))
     (= L (not (<= 0 J)))
     (= A C)
     (= B C)
     (= H (+ (- 10) G))
     (= J (ite F G H))
     (= D true)
     (= I true)
     (not K)
     (= L true)
     (= D (not (<= G 5))))
      )
      main@entry.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@entry.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
