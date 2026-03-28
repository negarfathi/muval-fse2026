(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Bool Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Bool Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= A D) (= E 0) (= F 0) (= B true) (= B (not (<= C 0))))
      )
      (main@.lr.ph B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= D 0) (not C) (= C (not (<= E 0))))
      )
      (main@verifier.error C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph I J K D E)
        (and (= F (not (<= J G)))
     (= A K)
     (= G (+ 1 E))
     (= H (ite C D E))
     (= L H)
     (= M G)
     (= F true)
     (= C (= B 0)))
      )
      (main@.lr.ph I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph J L B E F)
        (and (= H (not (<= L G)))
     (= A B)
     (= G (+ 1 F))
     (= I (ite D E F))
     (= K I)
     (not H)
     (= D (= C 0)))
      )
      (main@verifier.error J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@verifier.error A B C)
        (and (= F (and D E))
     (= D (not (<= B (- 1))))
     (= A true)
     (not F)
     (= E (not (<= C B))))
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
