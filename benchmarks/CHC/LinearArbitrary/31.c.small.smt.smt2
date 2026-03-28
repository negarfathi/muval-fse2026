(set-logic HORN)

(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry B D)
        (and (= F (not (<= M (- 1))))
     (= G (not (<= K M)))
     (= H (and F E))
     (= I (and H G))
     (= J (not (<= K 0)))
     (= A B)
     (= C D)
     (= L 0)
     (= N M)
     (= I true)
     (= J true)
     (= E (not (<= K (- 1)))))
      )
      (main@.lr.ph K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry B D)
        (and (= E (not (<= M (- 1))))
     (= F (not (<= K (- 1))))
     (= G (not (<= M K)))
     (= H (and F E))
     (= I (and H G))
     (= A B)
     (= C D)
     (= L K)
     (not J)
     (= I true)
     (= J (not (<= M 0))))
      )
      (main@verifier.error L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph H A J C)
        (and (= E (not (<= H G)))
     (= D (ite B 1 0))
     (= I G)
     (= F (+ C D))
     (= G (+ 1 A))
     (= K F)
     (= E true)
     (= B (>= A J)))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph J A B D)
        (and (= C (>= A B))
     (= H (+ D E))
     (= E (ite C 1 0))
     (= F (+ 1 A))
     (= I H)
     (not G)
     (= G (not (<= J F))))
      )
      (main@verifier.error I J)
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
