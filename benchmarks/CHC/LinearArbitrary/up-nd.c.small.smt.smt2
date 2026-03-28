(set-logic HORN)

(declare-fun |main@.preheader.thread| ( Bool ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.preheader| ( Int Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph5| ( Int Int Bool Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= E (not (<= C 0)))
     (= B G)
     (= F 0)
     (= H 0)
     (= A true)
     (= E true)
     (= A (= D 2)))
      )
      (main@.lr.ph5 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (not (<= E 0))) (= C D) (= B true) (not F) (= B (= A 2)))
      )
      (main@.preheader.thread F)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@.preheader.thread A)
        (= A true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@.preheader A B C D)
        (and (= C true) (= E true) (= E (not (<= 1 D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader F G A C)
        (and (= D 0) (= E C) (= A true) (not B) (= B (not (<= 1 C))))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph5 J K L A N F)
        (and (= G (not (<= J I)))
     (= B N)
     (= E (ite C D 1))
     (= H (+ E F))
     (= I (+ 1 A))
     (= M I)
     (= O H)
     (= G true)
     (= C (not (<= D 1))))
      )
      (main@.lr.ph5 J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@.lr.ph5 J K L A C G)
        (and (= I (not (<= J H)))
     (= B C)
     (= F (ite D E 1))
     (= H (+ 1 A))
     (= M (+ F G))
     (not I)
     (= D (not (<= E 1))))
      )
      (main@.preheader J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph A F D G)
        (and (= H (not (<= G F)))
     (= B (+ (- 1) F))
     (= C (+ 1 A))
     (= E true)
     (= H true)
     (= E (not (<= D C))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph A C I J)
        (and (= D (not (<= J C)))
     (= G E)
     (= E (+ 1 A))
     (= F (+ (- 1) C))
     (= H F)
     (= B true)
     (not D)
     (= B (not (<= I E))))
      )
      (main@.lr.ph G H I J)
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
