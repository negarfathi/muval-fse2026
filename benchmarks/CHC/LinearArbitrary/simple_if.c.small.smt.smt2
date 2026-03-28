(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@_6| ( Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= D true) (= D (not (<= E 1))))
      )
      (main@.lr.ph E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (not E) (not F) (= E (not (<= D 1))))
      )
      (main@verifier.error F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph E A)
        (and (= C 1) (= D (ite B 2 3)) (= B (not (<= A 0))))
      )
      (main@_6 C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_6 A E F)
        (and (= D C) (= B true) (= B (not (<= F C))))
      )
      (main@_6 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) ) 
    (=>
      (and
        (main@_6 A B C)
        (and (not D) (= D (not (<= C E))))
      )
      (main@verifier.error.loopexit E)
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
