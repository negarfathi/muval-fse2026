(set-logic HORN)

(declare-fun |main@.lr.ph| ( Bool Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Bool Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_8| ( Bool Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= F (not (<= H 0)))
     (= G (= E 10))
     (= A C)
     (= B C)
     (= D true)
     (= F true)
     (= D (not (<= H 9))))
      )
      (main@.lr.ph G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= F (not (<= I 0)))
     (= G (= E 10))
     (= A C)
     (= H 0)
     (= B C)
     (= D true)
     (not F)
     (= D (not (<= I 9))))
      )
      (main@verifier.error G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph A B)
        (and (= C 0) (= E 0) (= D (ite A 1 0)))
      )
      (main@_8 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_8 F G A I B)
        (and (= D (+ A I))
     (= E (+ 1 B))
     (= H D)
     (= J E)
     (= C true)
     (= C (not (<= G E))))
      )
      (main@_8 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@_8 G I A B C)
        (and (= H F) (= D (+ 1 C)) (= F (+ A B)) (not E) (= E (not (<= I D))))
      )
      (main@verifier.error G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@verifier.error A B C)
        (and (= D (= B C)) (= E (not A)) (not F) (= F (or E D)))
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
