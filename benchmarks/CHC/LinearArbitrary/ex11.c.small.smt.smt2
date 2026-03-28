(set-logic HORN)

(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= H (not (<= G (- 1))))
     (= I (not (<= J 0)))
     (= B E)
     (= C E)
     (= D E)
     (= F (+ L K))
     (= G (+ F J))
     (= M K)
     (= N L)
     (= O J)
     (= A true)
     (= H true)
     (= I true)
     (= A (= P 2)))
      )
      (main@.lr.ph M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= J (not (<= I (- 1))))
     (= L (not (<= K 0)))
     (= C F)
     (= D F)
     (= E F)
     (= I (+ M K))
     (= M (+ G H))
     (= N M)
     (= B true)
     (= J true)
     (not L)
     (= B (= A 2)))
      )
      (main@verifier.error N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A B C K)
        (and (= E (+ (- 2) C))
     (= F (+ 1 A))
     (= G (+ 1 B))
     (= H F)
     (= I G)
     (= J E)
     (= D true)
     (= D (not (<= C K))))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph A B D E)
        (and (= C (+ (- 2) D)) (= G (+ 1 A)) (= H (+ 1 B)) (not F) (= F (not (<= D E))))
      )
      (main@verifier.error.loopexit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@verifier.error.loopexit A B)
        (and (= D C) (= C (+ A B)))
      )
      (main@verifier.error D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (not (<= A (- 1)))))
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
