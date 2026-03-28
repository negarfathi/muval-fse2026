(set-logic HORN)

(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry C)
        (let ((a!1 (= D (and (not (<= 101 M)) (>= M 0)))))
  (and (= E (not (<= J (- 1))))
       (= F (<= J M))
       (= G (and E D))
       (= H (and G F))
       (= I (not (<= M J)))
       (= A C)
       (= B C)
       (= K 0)
       (= L J)
       (= H true)
       (= I true)
       a!1))
      )
      (main@.lr.ph K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Bool) (L Bool) ) 
    (=>
      (and
        (main@entry C)
        (let ((a!1 (= D (and (not (<= 101 J)) (>= J 0)))))
  (and a!1
       (= E (not (<= I (- 1))))
       (= F (<= I J))
       (= G (and E D))
       (= H (and G F))
       (= A C)
       (= B C)
       (not K)
       (= L true)
       (= H true)
       (= K (not (<= J I)))))
      )
      (main@verifier.error L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph B A H)
        (and (= E (+ 1 A))
     (= F D)
     (= G E)
     (= D (+ 1 B))
     (= C true)
     (= C (not (<= H E))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.lr.ph F A D)
        (and (= C (+ 1 A)) (= B (+ 1 F)) (not E) (= E (not (<= D C))))
      )
      (main@verifier.error.loopexit F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (not (<= 100 A))))
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
