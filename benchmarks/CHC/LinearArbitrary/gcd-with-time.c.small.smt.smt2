(set-logic HORN)

(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (not (<= H 0)))
     (= B D)
     (= C D)
     (= I G)
     (= J H)
     (= K 1)
     (= A true)
     (not E)
     (= F true)
     (= A (= L 0)))
      )
      (main@.lr.ph I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@entry E)
        (and (= B (= A 0))
     (= C E)
     (= D E)
     (not F)
     (not H)
     (= B true)
     (= I true)
     (= H (not (<= G 0))))
      )
      (main@verifier.error I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph F E B O)
        (and (= H (not (<= J O)))
     (= A (ite D 20 24))
     (= C (ite D 0 F))
     (= I (+ F (* (- 1) G)))
     (= G (ite D E 0))
     (= J (+ E (* (- 1) C)))
     (= K (+ A B))
     (= L I)
     (= M J)
     (= N K)
     (= H true)
     (= D (not (<= F E))))
      )
      (main@.lr.ph L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@.lr.ph G E B J)
        (and (= K (not (<= I J)))
     (= A (ite D 20 24))
     (= F (+ G (* (- 1) H)))
     (= C (ite D 0 G))
     (= H (ite D E 0))
     (= I (+ E (* (- 1) C)))
     (= L (+ A B))
     (not K)
     (= D (not (<= G E))))
      )
      (main@verifier.error.loopexit L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (not (<= 50 A))))
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
