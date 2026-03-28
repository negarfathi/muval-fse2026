(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool Bool ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= D true) (not E) (= F true) (= D (not (<= 1 C))))
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
        (and (= D 1) (= E 1) (= A B) (not C) (= C (not (<= 1 F))))
      )
      (main@.lr.ph D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph E B C)
        (and (= A (+ 2 E)) (= F (+ A B)) (= D true) (= D (not (<= F C))))
      )
      (main@verifier.error.loopexit E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph A B H)
        (and (= F D) (= G E) (= D (+ 2 A)) (= E (+ D B)) (not C) (= C (not (<= E H))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A B)
        (and (= D (not (<= 8 A))) (= E C) (= F D) (= C (not (<= B 29))))
      )
      (main@verifier.error E F)
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
