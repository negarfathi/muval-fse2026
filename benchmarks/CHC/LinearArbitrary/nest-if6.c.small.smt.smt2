(set-logic HORN)

(declare-fun |main@.loopexit2| ( Bool Bool Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Bool Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit4| ( Bool Bool ) Bool)
(declare-fun |main@_19| ( Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph8| ( Bool Bool Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= E (not (<= K 1)))
     (= F (not (<= C K)))
     (= G (not (<= K (- 1))))
     (= A H)
     (= B H)
     (= I 0)
     (= J (+ (- 1) K))
     (= D true)
     (= E true)
     (= D (and G F)))
      )
      (main@.lr.ph8 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@entry C)
        (and (= I (not (<= D G)))
     (= J (not (<= G (- 1))))
     (= E (and J I))
     (= F (+ (- 1) G))
     (= A C)
     (= B C)
     (not H)
     (= E true)
     (= H (not (<= G 1))))
      )
      (main@.loopexit4 I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph8 D E F G H K)
        (and (= B (not (<= K G)))
     (= C (and B A))
     (= I 1)
     (= J (+ K (* (- 1) G)))
     (= C true)
     (= A (not (<= J 1))))
      )
      (main@.lr.ph D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph8 E F G H I J)
        (and (= D (and B C))
     (= B (not (<= A 1)))
     (= A (+ J (* (- 1) H)))
     (not D)
     (= C (not (<= J H))))
      )
      (main@.loopexit2 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph E F G H I B K L)
        (and (= A G) (= D (+ 1 B)) (= J D) (= C true) (= C (not (<= K D))))
      )
      (main@.lr.ph E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph F G H I J B D K)
        (and (= A H) (= C (+ 1 B)) (not E) (= E (not (<= D C))))
      )
      (main@.loopexit2 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.loopexit2 E F G B I J)
        (and (= D (+ 1 B)) (= A G) (= H D) (= C true) (= C (not (<= I D))))
      )
      (main@.lr.ph8 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@.loopexit2 H I C D F A)
        (and (= B C) (= E (+ 1 D)) (not G) (= G (not (<= F E))))
      )
      (main@.loopexit4 H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@.loopexit4 B A)
        (= A true)
      )
      (main@_19 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@.loopexit4 A B)
        (not B)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@_19 A)
        (not A)
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
