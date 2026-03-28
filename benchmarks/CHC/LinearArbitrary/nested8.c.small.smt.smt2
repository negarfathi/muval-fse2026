(set-logic HORN)

(declare-fun |main@._crit_edge.us| ( Int Int Int Int ) Bool)
(declare-fun |main@entry.split.us| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph.us| ( Int Int Int Int ) Bool)
(declare-fun |main@.preheader.us| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@._crit_edge4.us| ( Int Int Int ) Bool)
(declare-fun |main@_12| ( Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= F (not (<= I 0)))
     (= A C)
     (= B C)
     (= G (+ E I))
     (= H 0)
     (not D)
     (= F true)
     (= D (not (<= I E))))
      )
      (main@entry.split.us G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry.split.us B C E)
        (and (= D 0) (= A true) (= A (not (<= E C))))
      )
      (main@.preheader.us B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph C E A F G H)
        (and (= D (+ 1 A)) (= B true) (= B (not (<= C D))))
      )
      (main@_12 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph E A B F G H)
        (and (= C (+ 1 B)) (not D) (= D (not (<= E C))))
      )
      (main@._crit_edge.us E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge.us D E A G)
        (and (= C (+ 1 A)) (= F C) (= B true) (= B (not (<= G C))))
      )
      (main@.preheader.us D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@._crit_edge.us D E A F)
        (and (= B (+ 1 A)) (not C) (= C (not (<= F B))))
      )
      (main@._crit_edge4.us D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@_12 D E F A B C)
        (and (= G (+ D E)) (= H true) (= H (not (<= F G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_12 D C E G H I)
        (and (= F C) (= A (+ D C)) (not B) (= B (not (<= E A))))
      )
      (main@.lr.ph D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader.us B C D E)
        (and (= A true) (= A (not (<= B D))))
      )
      (main@.lr.ph.us B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader.us B C D E)
        (and (not A) (= A (not (<= B D))))
      )
      (main@._crit_edge.us B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@.lr.ph.us C B D A)
        (and (= E (+ D B)) (= F (+ C D)) (= G true) (= G (not (<= E F))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph.us C F G H)
        (and (= E G) (= A (+ C G)) (= D (+ G F)) (not B) (= B (not (<= D A))))
      )
      (main@.lr.ph C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge4.us C A E)
        (and (= D B) (= B (+ 1 A)))
      )
      (main@entry.split.us C D E)
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
