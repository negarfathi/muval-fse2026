(set-logic HORN)

(declare-fun |main@_11| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_20| ( Int Int Bool Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_17| ( Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= G (not (<= L N)))
     (= H (not (<= J (- 1))))
     (= I (and H G))
     (= B F)
     (= C F)
     (= D F)
     (= E F)
     (= A true)
     (= I true)
     (= A (= K 1)))
      )
      (main@_11 J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= G (not (<= M O)))
     (= H (not (<= J (- 1))))
     (= I (and H G))
     (= B F)
     (= C F)
     (= D F)
     (= E F)
     (= A true)
     (not L)
     (not I)
     (= A (= K 1)))
      )
      (main@_20 J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_11 H I K L M)
        (and (= F (not (<= C L)))
     (= G (or F E))
     (= A (* (- 2) M))
     (= B (+ A K))
     (= C (+ B H))
     (= D (+ K (* (- 1) M)))
     (not J)
     (= G true)
     (= E (not (<= D L))))
      )
      (main@_20 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_11 H I J K L)
        (and (= F (not (<= C K)))
     (= G (or F E))
     (= A (* (- 2) L))
     (= B (+ A J))
     (= C (+ B H))
     (= D (+ J (* (- 1) L)))
     (not G)
     (= E (not (<= D K))))
      )
      (main@_17 H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_17 C D F G H)
        (and (= B (>= G A)) (= A (+ F (* (- 1) C))) (= E B))
      )
      (main@_20 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_20 J K A F D E)
        (and (= C (not (<= D 0)))
     (= G D)
     (= H E)
     (= I F)
     (= A true)
     (not B)
     (= C true)
     (= B (= F J)))
      )
      (main@.lr.ph G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Bool) ) 
    (=>
      (and
        (main@_20 E A C D G B)
        (and (= H (not (<= G 0))) (not F) (not H) (= C true) (= F (= D E)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph I G A Q R)
        (and (= H (= M Q))
     (= J (not (<= I R)))
     (= E (= G A))
     (= C (ite B (- 1) 1))
     (= D (+ (- 1) A))
     (= L (ite E F G))
     (= M (ite E F D))
     (= F (+ C G))
     (= N K)
     (= O L)
     (= P M)
     (= K (+ (- 1) I))
     (not H)
     (= J true)
     (= B (not (<= G Q))))
      )
      (main@.lr.ph N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Bool) ) 
    (=>
      (and
        (main@.lr.ph M I B K N)
        (and (= O (not (<= M N)))
     (= G (= I B))
     (= L (= J K))
     (= A (+ (- 1) M))
     (= J (ite G H E))
     (= D (ite C (- 1) 1))
     (= E (+ (- 1) B))
     (= F (ite G H I))
     (= H (+ D I))
     (not O)
     (not L)
     (= C (not (<= I K))))
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
