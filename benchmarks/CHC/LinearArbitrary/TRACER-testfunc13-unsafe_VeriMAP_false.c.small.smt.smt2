(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@bar.exit.split| ( ) Bool)
(declare-fun |main@bar.exit| ( Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        main@entry
        (and (= B true) (= B (= A 0)))
      )
      (main@bar.exit C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@bar.exit A)
        (and (= C true) (not B) (= C (not (<= 1 A))))
      )
      main@bar.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@bar.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
