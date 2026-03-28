(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@entry.split| ( ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Bool) ) 
    (=>
      (and
        main@entry
        (and (= K (= I 0))
     (= G (+ D (* (- 1) E)))
     (= H (+ B (* (- 1) C)))
     (= I (ite F G H))
     (not J)
     (= K true)
     (= F (= A 0)))
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
