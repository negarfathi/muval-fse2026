(set-logic HORN)

(declare-fun |main@._crit_edge.thread| ( Int Bool ) Bool)
(declare-fun |main@._crit_edge| ( Int Bool Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Bool Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_9| ( Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= A D) (= E 0) (= F 0) (= C true) (= C (not (<= B 0))))
      )
      (main@.lr.ph B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (not D) (= D (not (<= C 0))))
      )
      (main@._crit_edge.thread C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@._crit_edge.thread C A)
        (and (= A true) (= B 0))
      )
      (main@_9 B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph I J K D E)
        (and (= F (not (<= I G)))
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) ) 
    (=>
      (and
        (main@.lr.ph I J B E F)
        (and (= H (not (<= I G)))
     (= A B)
     (= G (+ 1 F))
     (= K (ite D E F))
     (not H)
     (= D (= C 0)))
      )
      (main@._crit_edge I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge E A C)
        (and (= D C) (= A true) (= B true) (= B (not (<= C (- 1)))))
      )
      (main@_9 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) ) 
    (=>
      (and
        (main@._crit_edge A B C)
        (and (not D) (= B true) (= D (not (<= C (- 1)))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_9 A B)
        (and (not C) (= C (not (<= B A))))
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
