(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= I (<= U R))
     (= J (not (<= Q (- 1))))
     (= K (and I H))
     (= L (and K J))
     (= M (not (<= Q U)))
     (= N (not L))
     (= O (or N M))
     (= P (not (<= U Q)))
     (= A G)
     (= B G)
     (= C G)
     (= D G)
     (= E G)
     (= F G)
     (= S Q)
     (= T 0)
     (not O)
     (= P true)
     (= H (not (<= U (- 1)))))
      )
      (main@.lr.ph R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Int) (T Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= H (not (<= Q (- 1))))
     (= I (<= Q T))
     (= J (not (<= P (- 1))))
     (= K (and I H))
     (= L (and K J))
     (= M (not (<= P Q)))
     (= N (not L))
     (= O (or N M))
     (= A G)
     (= B G)
     (= C G)
     (= D G)
     (= E G)
     (= F G)
     (= S 0)
     (not R)
     (not O)
     (= R (not (<= Q P))))
      )
      (main@verifier.error S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F A B I)
        (and (= E (+ 1 B))
     (= G D)
     (= H E)
     (= D (+ 1 A))
     (= C true)
     (= C (not (<= I D))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph H A B D)
        (and (= F (+ 1 B)) (= G F) (= C (+ 1 A)) (not E) (= E (not (<= D C))))
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
