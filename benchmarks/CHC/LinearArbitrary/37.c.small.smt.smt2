(set-logic HORN)

(declare-fun |main@.lr.ph5| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= A D) (= E 0) (= F 0) (= B true) (= B (not (<= C 0))))
      )
      (main@.lr.ph5 C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G A B)
        (and (= E (+ 1 A))
     (= D (+ 2 B))
     (= H E)
     (= I D)
     (= C true)
     (= C (not (<= F E))))
      )
      (main@.lr.ph5 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G A B)
        (and (= C (+ 1 A)) (= E (+ 2 B)) (= H E) (not D) (= D (not (<= F C))))
      )
      (main@._crit_edge F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@._crit_edge F B E)
        (and (= C (not (<= F I)))
     (= A B)
     (= G 0)
     (= H E)
     (= D true)
     (= C true)
     (= D (not (<= I 0))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@._crit_edge G B F)
        (and (= E (not (<= D 0)))
     (= A B)
     (= H F)
     (= C true)
     (not E)
     (= C (not (<= G D))))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F A B I)
        (and (= E (+ 1 A))
     (= D (+ 1 B))
     (= G E)
     (= H D)
     (= C true)
     (= C (not (<= I E))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph G A B D)
        (and (= C (+ 1 A)) (= F (+ 1 B)) (= H F) (not E) (= E (not (<= D C))))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C (* 2 A)) (= D true) (= D (not (<= C B))))
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
