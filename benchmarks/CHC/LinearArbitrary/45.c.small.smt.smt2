(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@_14| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (not (<= I 0)))
     (= F (and E D))
     (= G (= J I))
     (= A C)
     (= B C)
     (= H J)
     (= F true)
     (= G true)
     (= D (not (<= J 0))))
      )
      (main@._crit_edge H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (not (<= H 0)))
     (= F (and E D))
     (= G (= I H))
     (= A C)
     (= B C)
     (= J H)
     (= K I)
     (= F true)
     (not G)
     (= D (not (<= I 0))))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph J K D C)
        (and (= G (= H F))
     (= E (ite B 0 C))
     (= F (+ D (* (- 1) E)))
     (= A (ite B D 0))
     (= H (+ C (* (- 1) A)))
     (= I H)
     (= G true)
     (= B (not (<= C D))))
      )
      (main@._crit_edge I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph I J D C)
        (and (= F (= H G))
     (= A (ite B D 0))
     (= H (+ C (* (- 1) A)))
     (= G (+ D (* (- 1) E)))
     (= E (ite B 0 C))
     (= K G)
     (= L H)
     (not F)
     (= B (not (<= C D))))
      )
      (main@.lr.ph I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@._crit_edge E F A)
        (and (= C (not (<= E 0))) (= D (and C B)) (= D true) (= B (<= E A)))
      )
      (main@_14 E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@._crit_edge B A C)
        (and (= F (and D E)) (= D (<= B C)) (not F) (= E (not (<= B 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_14 A B)
        (and (= C true) (= C (not (<= A B))))
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
