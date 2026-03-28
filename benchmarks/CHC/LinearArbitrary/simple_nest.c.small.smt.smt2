(set-logic HORN)

(declare-fun |main@.loopexit| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= E 1)))
     (= B C)
     (= F 1)
     (= G 10)
     (= A true)
     (= D true)
     (= A (= H 1)))
      )
      (main@.preheader E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (not (<= E 1))) (= C D) (= G 1) (= B true) (not F) (= B (= A 1)))
      )
      (main@verifier.error G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.loopexit B D C G)
        (and (= E B) (= F C) (= A true) (= A (not (<= D B))))
      )
      (main@.preheader D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@.loopexit E C A B)
        (and (= F E) (not D) (= D (not (<= C E))))
      )
      (main@verifier.error F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader D B C G)
        (and (= E C) (= F B) (= A true) (= A (not (<= C 0))))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader E C B G)
        (and (= D C) (= F B) (not A) (= A (not (<= B 0))))
      )
      (main@.loopexit D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F B A I)
        (and (= E (+ (- 1) B))
     (= D (* 2 A))
     (= G E)
     (= H D)
     (= C true)
     (= C (not (<= B I))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph G B A I)
        (and (= E (* 2 A))
     (= D (+ (- 1) B))
     (= F E)
     (= H D)
     (not C)
     (= C (not (<= B I))))
      )
      (main@.loopexit F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (not (<= A 0))))
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
