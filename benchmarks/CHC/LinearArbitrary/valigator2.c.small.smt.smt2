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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (not (<= F 0)))
     (= B D)
     (= C D)
     (= H F)
     (= I G)
     (= A true)
     (= E true)
     (= A (= J 1)))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= F (not (<= G 0)))
     (= D E)
     (= C E)
     (= I H)
     (= B true)
     (not F)
     (= B (= A 1)))
      )
      (main@verifier.error G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph F G B A J)
        (and (= E (+ 1 A))
     (= D (+ (- 1) B))
     (= H D)
     (= I E)
     (= C true)
     (= C (not (<= B J))))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph G H C B D)
        (and (= A (+ (- 1) C)) (= F (+ 1 B)) (= I F) (not E) (= E (not (<= C D))))
      )
      (main@verifier.error G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@verifier.error A B C)
        (and (= F (= C D)) (= G (or F E)) (= D (+ A B)) (not G) (= E (not (<= 0 A))))
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
