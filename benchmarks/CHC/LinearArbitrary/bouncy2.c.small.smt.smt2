(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool Bool ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (= E 0))
     (= C D)
     (= B true)
     (= F true)
     (not G)
     (= H true)
     (= B (= A 0)))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= D (= C 0)) (= B E) (= A true) (not D) (= A (= F 0)))
      )
      (main@.lr.ph E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@.lr.ph B D)
        (and (= A B) (= E true) (= F true) (not G) (= E (= C D)))
      )
      (main@verifier.error F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph D E)
        (and (= A D) (not C) (= C (= B E)))
      )
      (main@.lr.ph D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (not C) (= C (or B A)))
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
