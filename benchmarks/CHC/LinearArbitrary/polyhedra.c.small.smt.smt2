(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)

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
        (main@entry B)
        (and (= A B) (= E 2) (= F 1) (= D true) (= D (not (<= 1 C))))
      )
      (main@verifier.error E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= D 1) (= A B) (= E 2) (not C) (= C (not (<= 1 F))))
      )
      (main@.lr.ph D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph C B I)
        (and (= A (* 2 F))
     (= G F)
     (= E (+ A B))
     (= F (+ 1 C))
     (= H E)
     (= D true)
     (= D (not (<= I C))))
      )
      (main@.lr.ph G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph C B D)
        (and (= A (* 2 F))
     (= G (+ A B))
     (= F (+ 1 C))
     (= H G)
     (= I F)
     (not E)
     (= E (not (<= D C))))
      )
      (main@verifier.error H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (not C) (= C (not (<= A B))))
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
