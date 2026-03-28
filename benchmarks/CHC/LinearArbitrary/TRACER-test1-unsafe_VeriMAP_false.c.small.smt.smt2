(set-logic HORN)

(declare-fun |main@postcall| ( Bool ) Bool)
(declare-fun |main@postcall1| ( Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@__VERIFIER_assert.split| ( ) Bool)
(declare-fun |main@__VERIFIER_assert| ( Bool ) Bool)

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
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        main@entry
        (and (= B true) (= C (not (= A 0))))
      )
      (main@postcall C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        main@entry
        (and (not C) (not D) (= A (not (= B 0))))
      )
      (main@__VERIFIER_assert D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@postcall B)
        (and (= D (ite B 1 0))
     (= G (ite C D E))
     (= E (ite B 3 2))
     (= F true)
     (= C (= A 0)))
      )
      (main@postcall1 G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@postcall B)
        (and (= C (ite D E F))
     (= E (ite B 1 0))
     (= F (ite B 3 2))
     (not G)
     (not H)
     (= D (= A 0)))
      )
      (main@__VERIFIER_assert H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@postcall1 C)
        (and (= G (= E 7))
     (= H G)
     (= D (+ 4 C))
     (= E (ite B C D))
     (not F)
     (= B (= A 0)))
      )
      (main@__VERIFIER_assert H)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@__VERIFIER_assert A)
        (= A true)
      )
      main@__VERIFIER_assert.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@__VERIFIER_assert.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
