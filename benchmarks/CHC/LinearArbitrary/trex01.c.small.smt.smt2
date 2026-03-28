(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= D 1) (= C true) (= C (not (<= E 1))))
      )
      (main@.lr.ph D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (not D) (not E) (= D (not (<= C 1))))
      )
      (main@verifier.error E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph A E)
        (and (= C (* 2 A)) (= D C) (= B true) (= B (not (<= E C))))
      )
      (main@.lr.ph D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@.lr.ph D B)
        (and (= A (* 2 D)) (not C) (= C (not (<= B A))))
      )
      (main@verifier.error.loopexit D)
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
