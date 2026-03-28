(set-logic HORN)

(declare-fun |main@_8| ( Int Int Int ) Bool)
(declare-fun |main@_3| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= E 1) (= F 1) (= C true) (= C (not (<= D 1))))
      )
      (main@.preheader D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= D 1) (not C) (= C (not (<= E 1))))
      )
      (main@verifier.error D E)
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
      (main@_3 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_3 G H C B)
        (and (= A (+ H (* (- 1) C)))
     (= E (+ A B))
     (= F (+ 1 C))
     (= I F)
     (= J E)
     (= D true)
     (= D (not (<= H F))))
      )
      (main@_3 G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_3 F G C B)
        (and (= A (+ G (* (- 1) C)))
     (= D (+ 1 C))
     (= H (+ A B))
     (not E)
     (= E (not (<= G D))))
      )
      (main@_8 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_8 E A C)
        (and (= D (+ 1 A)) (= F D) (= G C) (= B true) (= B (not (<= E D))))
      )
      (main@.preheader E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_8 F A D)
        (and (= B (+ 1 A)) (= E D) (not C) (= C (not (<= F B))))
      )
      (main@verifier.error E F)
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
