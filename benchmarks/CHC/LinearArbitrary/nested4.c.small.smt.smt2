(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@._crit_edge.us| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph.us| ( Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@_14| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@entry.split.us.preheader| ( Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= B (= M 0))
     (= H (not (<= L 0)))
     (= I (not (<= K L)))
     (= C G)
     (= D G)
     (= E G)
     (= F G)
     (= A true)
     (= B true)
     (= H true)
     (= I true)
     (= A (= J (- 1))))
      )
      (main@entry.split.us.preheader J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@entry.split.us.preheader C E G B)
        (and (= F (not (<= G B))) (= D 1) (= A true) (= F true) (= A (not (<= E 1))))
      )
      (main@.lr.ph C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@entry.split.us.preheader A B D E)
        (and (= F (not (<= D E))) (= C true) (not F) (= C (not (<= B 1))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.lr.ph B C D E F)
        (= A F)
      )
      (main@_14 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_14 B C E F G H)
        (and (= D (+ 1 B)) (= A true) (= A (not (<= F D))))
      )
      (main@.lr.ph.us B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_14 A D E F G H)
        (and (= B (+ 1 A)) (not C) (= C (not (<= F B))))
      )
      (main@._crit_edge.us D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.us A E C F G H I)
        (and (= D C) (= B true) (= B (not (<= A E))))
      )
      (main@_14 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph.us F G A B C D E)
        (and (not H) (= H (not (<= F G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@._crit_edge.us D A F G H)
        (and (= C (+ 1 A)) (= E C) (= B true) (= G true) (= B (not (<= F C))))
      )
      (main@.lr.ph D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@._crit_edge.us A C E G B)
        (and (= D (+ 1 C)) (not G) (= F true) (= F (not (<= E D))))
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
