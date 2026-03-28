(set-logic HORN)

(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry C E)
        (and (= F (not (<= K (- 1))))
     (= G (not (<= I K)))
     (= H (not (<= I 0)))
     (= B C)
     (= D E)
     (= J I)
     (= L 0)
     (= A true)
     (= F true)
     (= G true)
     (= H true)
     (= A (= M 1)))
      )
      (main@.lr.ph J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph C H B J)
        (and (= D (not (<= C J)))
     (= F (+ (- 1) C))
     (= G F)
     (= E (ite A 1 B))
     (= I E)
     (= D true)
     (= A (= F H)))
      )
      (main@.lr.ph G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@.lr.ph E B D F)
        (and (= C (= A B))
     (= A (+ (- 1) E))
     (= H (ite C 1 D))
     (not G)
     (= G (not (<= E F))))
      )
      (main@verifier.error.loopexit H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (= A 1)))
      )
      (main@verifier.error C)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (not A)
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
