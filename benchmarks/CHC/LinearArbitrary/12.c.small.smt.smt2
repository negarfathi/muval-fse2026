(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_0| ( Int Int Int ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        main@entry
        (and (= B 67) (= C 34) (= A 8))
      )
      (main@_0 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@_0 A D C)
        (and (= B (+ 1 D)) (= F (+ 2 A)) (= G (+ 1 C)) (= E true) (= E (not (<= F D))))
      )
      (main@verifier.error F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_0 A C B)
        (and (= E (+ 1 C))
     (= F (+ 2 A))
     (= G (+ 1 B))
     (= H F)
     (= I E)
     (= J G)
     (not D)
     (= D (not (<= F C))))
      )
      (main@_0 H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C true) (= C (not (<= A B))))
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
