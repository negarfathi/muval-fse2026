(set-logic HORN)

(declare-fun |main@verifier.error.split.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry.split.us| ( Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= D (not (<= F 0)))
     (= A B)
     (= E 0)
     (not C)
     (= D true)
     (= C (not (<= 1 F))))
      )
      (main@entry.split.us E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@entry.split.us D B)
        (and (= E (not (<= D B)))
     (= C (+ 1 D))
     (= A true)
     (= E true)
     (= A (not (<= B D))))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry.split.us B F)
        (and (= C (not (<= B F)))
     (= D (+ 1 B))
     (= E D)
     (= A true)
     (not C)
     (= A (not (<= F B))))
      )
      (main@entry.split.us E F)
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
      main@verifier.error.split.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
