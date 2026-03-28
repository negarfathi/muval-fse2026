(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@_10| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@..preheader_crit_edge.us.preheader| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@entry.split.us.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_15| ( Int Int Int Int Int Bool Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= B (= K 0))
     (= F (not (<= J 0)))
     (= G (not (<= I J)))
     (= C E)
     (= D E)
     (= A true)
     (= B true)
     (= F true)
     (= G true)
     (= A (= H (- 1))))
      )
      (main@entry.split.us.preheader H I J K)
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
      (main@_10 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_10 B C E F G H)
        (and (= D (+ 1 B)) (= A true) (= A (not (<= F D))))
      )
      (main@_15 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_10 A D E F G H)
        (and (= B (+ 1 A)) (not C) (= C (not (<= F B))))
      )
      (main@..preheader_crit_edge.us.preheader D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@..preheader_crit_edge.us.preheader D A F G H)
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
        (main@..preheader_crit_edge.us.preheader A C E G B)
        (and (= D (+ 1 C)) (not G) (= F true) (= F (not (<= E D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@_15 A E C F G H I)
        (and (= D C) (= B true) (= B (not (<= A E))))
      )
      (main@_10 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@_15 F G A B C D E)
        (and (not H) (= H (not (<= F G))))
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
