(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_3| ( Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= D 0) (= C true) (= C (not (<= E 0))))
      )
      (main@_3 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@_3 A E)
        (and (= C (+ 1 A)) (= D C) (= B true) (= B (not (<= E A))))
      )
      (main@_3 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@_3 C D)
        (and (= A (+ 1 C)) (not B) (= B (not (<= D C))))
      )
      (main@verifier.error C D)
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
