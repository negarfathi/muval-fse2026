(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= E G) (= D true) (= D (= F G)))
      )
      (main@verifier.error E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= G F) (= H E) (not D) (= D (= E F)))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph G H A B)
        (and (= E (+ 1 A)) (= C (+ (- 1) B)) (= F E) (= D true) (= D (= C E)))
      )
      (main@verifier.error F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F G A B)
        (and (= D (+ (- 1) B)) (= E (+ 1 A)) (= H E) (= I D) (not C) (= C (= D E)))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@verifier.error A B C)
        (and (= D (* 2 A)) (= E (+ B C)) (not F) (= F (= D E)))
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
