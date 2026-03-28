(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_7| ( Bool Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (not (<= F 0))) (= A C) (= B C) (not D) (= E true) (= D (= F 0)))
      )
      (main@.lr.ph F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph F A)
        (and (= C 0) (= D 0) (= E F) (= B (= A 0)))
      )
      (main@_7 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_7 K A B C O)
        (and (= E (not (<= O J)))
     (= F (not (<= O I)))
     (= G (and F E))
     (= H (+ (- 1) C))
     (= L I)
     (= M J)
     (= I (+ 1 A))
     (= J (+ 1 B))
     (= N H)
     (not D)
     (= G true)
     (= K true)
     (= D (= H 0)))
      )
      (main@_7 K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) ) 
    (=>
      (and
        (main@_7 A B C D I)
        (and (= K (not (<= I G)))
     (= L (and J K))
     (= J (not (<= I H)))
     (= E (+ (- 1) D))
     (= G (+ 1 B))
     (= H (+ 1 C))
     (not F)
     (= A true)
     (not L)
     (= F (= E 0)))
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
