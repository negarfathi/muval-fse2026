(set-logic HORN)

(declare-fun |main@verifier.error| ( Int Bool ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= 5 E)))
     (= B C)
     (= F 0)
     (= G E)
     (= A true)
     (= D true)
     (= A (= H 4)))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (not (<= 5 F))) (= C D) (= B true) (not E) (not G) (= B (= A 4)))
      )
      (main@verifier.error F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F A B I)
        (and (= E (+ 1 B))
     (= D (+ A B))
     (= G D)
     (= H E)
     (= C true)
     (= C (not (<= I B))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph F A C D)
        (and (= B (+ 1 C)) (= G (+ A C)) (not E) (= E (not (<= D C))))
      )
      (main@verifier.error.loopexit F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit C A)
        (and (= D B) (= B (= A 10)))
      )
      (main@verifier.error C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@verifier.error A C)
        (and (= D (or B C)) (not D) (= B (not (= A 0))))
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
