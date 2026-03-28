(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Bool ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph5| ( Int Bool Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (not (<= F 0)))
     (= B C)
     (= G 0)
     (= H 0)
     (= A true)
     (= E true)
     (= A (= D 1)))
      )
      (main@.lr.ph5 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (not (<= E 0))) (= C D) (= B true) (not F) (= B (= A 1)))
      )
      (main@.preheader F)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@.preheader A)
        (= A true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader F A B C)
        (and (= E C) (= A true) (= D B))
      )
      (main@.lr.ph D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G H A B)
        (and (= D (+ 1 B))
     (= E (+ 1 A))
     (= I E)
     (= J D)
     (= C true)
     (= C (not (<= H E))))
      )
      (main@.lr.ph5 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph5 E F G A B)
        (and (= C (+ 1 A)) (= H (+ 1 B)) (not D) (= D (not (<= G C))))
      )
      (main@.lr.ph.preheader E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph A C I)
        (and (= B (not (<= A 1)))
     (= F (+ (- 1) C))
     (= E (+ (- 1) A))
     (= G E)
     (= H F)
     (= D true)
     (= B true)
     (= D (not (<= C I))))
      )
      (main@.lr.ph G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@.lr.ph C E F)
        (and (= G (not (<= E F)))
     (= A (+ (- 1) C))
     (= B (+ (- 1) E))
     (= D true)
     (not G)
     (= D (not (<= C 1))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error
        true
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
