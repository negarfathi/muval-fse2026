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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= F (= G 0)) (= C E) (= D E) (= I H) (= B true) (= F true) (= B (= A 0)))
      )
      (main@verifier.error G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (= F 0))
     (= C D)
     (= B D)
     (= H F)
     (= I G)
     (= A true)
     (not E)
     (= A (= J 0)))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph G H A B D)
        (and (= F (+ (- 1) B)) (= C (+ (- 1) A)) (= I F) (= E true) (= E (= C D)))
      )
      (main@verifier.error G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph F G A B J)
        (and (= D (+ (- 1) B)) (= E (+ (- 1) A)) (= H E) (= I D) (not C) (= C (= E J)))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@verifier.error A B C)
        (and (= E (= C 0)) (= F (or E D)) (not F) (= D (not (= A B))))
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
