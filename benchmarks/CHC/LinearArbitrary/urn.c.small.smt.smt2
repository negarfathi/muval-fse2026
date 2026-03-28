(set-logic HORN)

(declare-fun |main@_24| ( Int Int ) Bool)
(declare-fun |main@_16| ( Int Int Int Int ) Bool)
(declare-fun |main@_13| ( Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry M)
        (and (= D (not (<= I (- 1))))
     (= E (not (<= H (- 1))))
     (= G (not (<= F 1)))
     (= B M)
     (= C M)
     (= F (+ H I))
     (= K H)
     (= L I)
     (= A true)
     (= D true)
     (= E true)
     (= G true)
     (= A (= J 1)))
      )
      (main@.lr.ph J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F G H I)
        (and (= C (not (<= H 1)))
     (= D (not (= B 0)))
     (= A I)
     (= E true)
     (= E (and D C)))
      )
      (main@_13 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F G H I)
        (and (= C (not (<= H 1))) (= D (not (= B 0))) (= A I) (not E) (= E (and D C)))
      )
      (main@_16 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_13 G B A H)
        (and (= D (+ 1 B)) (= E D) (= F C) (= C (+ (- 2) A)))
      )
      (main@_19 E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_16 H B D I)
        (and (= C (ite A (- 1) 0)) (= E (+ B C)) (= F E) (= G D) (= A (not (<= B 0))))
      )
      (main@_19 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_19 C D E H)
        (and (= A (+ C D)) (= F C) (= G D) (= B true) (= B (not (<= A E))))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_19 F E C A)
        (and (= B (+ F E)) (= G E) (= H F) (not D) (= D (not (<= B C))))
      )
      (main@._crit_edge G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge D E)
        (and (= C (or A B)) (= A (= D 0)) (= C true) (= B (= E 0)))
      )
      (main@_24 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@._crit_edge A B)
        (and (= E (or C D)) (= C (= A 0)) (not E) (= D (= B 0)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_24 A B)
        (and (= E (or C D)) (= C (= A 1)) (not E) (= D (= B 1)))
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
