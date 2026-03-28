(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= G (= F 0))
     (= C E)
     (= D E)
     (= H 0)
     (= J 0)
     (= B true)
     (= G true)
     (= B (= A 0)))
      )
      (main@verifier.error H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry I)
        (and (= E (= D 0))
     (= B I)
     (= G 0)
     (= C I)
     (= H 0)
     (= A true)
     (not E)
     (= A (= J 0)))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph K A B D F)
        (and (= I (+ 1 B))
     (= C D)
     (= H (+ 10 A))
     (= J H)
     (= L I)
     (= G true)
     (= G (= E F)))
      )
      (main@verifier.error J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph H A B K L)
        (and (= I G) (= C K) (= F (+ 1 B)) (= G (+ 10 A)) (= J F) (not E) (= E (= D L)))
      )
      (main@.lr.ph H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@verifier.error A C B)
        (and (= E (not (<= B C))) (= F (and E D)) (= F true) (= D (<= A C)))
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
