(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_14| ( Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= H (not (<= L R)))
     (= I (not (<= Q L)))
     (= J (or H G))
     (= K (or J I))
     (= N (not (<= P M)))
     (= A E)
     (= B E)
     (= C E)
     (= D E)
     (= M (+ R (* (- 1) L)))
     (= O 0)
     (= R (* 2 F))
     (not K)
     (not N)
     (= G (not (<= 1 F))))
      )
      (main@_14 O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_14 C G H I)
        (and (= D (not (<= I B)))
     (= F E)
     (= B (+ C H))
     (= E (+ 1 C))
     (= A true)
     (= D true)
     (= A (not (<= G C))))
      )
      (main@_14 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@_14 G A C E)
        (and (= H (not (<= E D)))
     (= F (+ 1 G))
     (= D (+ G C))
     (= B true)
     (not H)
     (= B (not (<= A G))))
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
