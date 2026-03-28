(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (= E 0)) (= C D) (= B true) (= F true) (= G true) (= B (= A 0)))
      )
      (main@verifier.error G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= D (= C 0)) (= B F) (= E 1) (= A true) (not D) (= A (= G 0)))
      )
      (main@.lr.ph E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.lr.ph A C E)
        (and (= B C) (= G (* 2 A)) (= F true) (= F (= D E)))
      )
      (main@verifier.error.loopexit G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph A G H)
        (and (= B G) (= E (* 2 A)) (= F E) (not D) (= D (= C H)))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (not (<= A 0))))
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
        (not A)
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
