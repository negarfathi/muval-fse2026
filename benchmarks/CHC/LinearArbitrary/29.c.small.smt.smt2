(set-logic HORN)

(declare-fun |main@_7| ( Int Int Int ) Bool)
(declare-fun |main@_2| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D 1) (= A (not (<= C 1))) (= A true) (= B 1))
      )
      (main@.preheader B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader B C A)
        (and (= E A) (= D 0))
      )
      (main@_2 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_2 G H C B)
        (and (= E (+ A B))
     (= F (+ 1 C))
     (= I F)
     (= J E)
     (= D (not (<= G F)))
     (= D true)
     (= A (+ G (* (- 1) C))))
      )
      (main@_2 G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_2 F G C B)
        (and (= D (+ 1 C))
     (= H (+ A B))
     (= E (not (<= F D)))
     (not E)
     (= A (+ F (* (- 1) C))))
      )
      (main@_7 F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_7 B G D)
        (and (= E (+ 1 B))
     (= H D)
     (= A (not (<= G E)))
     (= C (not (<= D B)))
     (= A true)
     (= C true)
     (= F E))
      )
      (main@.preheader F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@_7 E B D)
        (and (= F (not (<= D E))) (= C (not (<= B A))) (not F) (= C true) (= A (+ 1 E)))
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
