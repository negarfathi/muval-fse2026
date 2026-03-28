(set-logic HORN)

(declare-fun |main@.lr.ph5| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= 0 F)))
     (= E (not (<= F 0)))
     (= B C)
     (= H 0)
     (= I 0)
     (= A true)
     (not D)
     (= E true)
     (= A (= G 1)))
      )
      (main@.lr.ph5 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (not (<= 0 H)))
     (= F (not (<= H 0)))
     (= C D)
     (= G 0)
     (= B true)
     (not E)
     (not F)
     (= B (= A 1)))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G A B)
        (and (= D (+ 1 A))
     (= E (+ 2 B))
     (= H D)
     (= I E)
     (= C true)
     (= C (not (<= F D))))
      )
      (main@.lr.ph5 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph5 F I A B)
        (and (= D (+ 1 A)) (= E (+ 2 B)) (= G D) (= H E) (not C) (= C (not (<= F D))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F B A I)
        (and (= D (+ (- 1) B))
     (= E (+ (- 1) A))
     (= G D)
     (= H E)
     (= C true)
     (= C (not (<= B I))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph H C B D)
        (and (= A (+ (- 1) C)) (= F (+ (- 1) B)) (= G F) (not E) (= E (not (<= C D))))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C true) (= C (not (<= B A))))
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
