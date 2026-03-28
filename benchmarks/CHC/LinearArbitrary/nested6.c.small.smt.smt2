(set-logic HORN)

(declare-fun |main@.preheader| ( Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_17| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph16| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph10| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_5| ( Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= A H) (= B H) (= E 0) (= F D) (= C true) (= C (= D G)))
      )
      (main@_5 E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_5 D C F I)
        (and (= B (not (<= F H)))
     (= E H)
     (= G C)
     (= H (* 2 D))
     (= A true)
     (= B true)
     (= A (not (<= F D))))
      )
      (main@.lr.ph10 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_5 E D G H)
        (and (= C (not (<= G B)))
     (= B (* 2 E))
     (= F D)
     (= A true)
     (not C)
     (= A (not (<= G E))))
      )
      (main@._crit_edge E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph10 D E F G H I)
        (and (= A I) (= C true) (= C (= B 0)))
      )
      (main@_17 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph10 E F G A H I)
        (and (= B I) (not D) (= D (= C 0)))
      )
      (main@.preheader E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader B C D E F)
        (and (= A true) (= A (not (<= D C))))
      )
      (main@.lr.ph.preheader B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader B C D F G)
        (and (= E C) (not A) (= A (not (<= D C))))
      )
      (main@.loopexit B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@.lr.ph.preheader A D B E C)
        (and (= F true) (= F (not (<= E D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader B C D E G)
        (and (= F C) (not A) (= A (not (<= E C))))
      )
      (main@.lr.ph16 B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@.lr.ph A B C E F D)
        (and (= G true) (= G (not (<= F E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph C D E B F H)
        (and (= G B) (not A) (= A (not (<= F B))))
      )
      (main@.lr.ph16 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph16 C D E G A H)
        (and (= F (+ 1 A)) (= B true) (= B (not (<= E F))))
      )
      (main@.lr.ph C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph16 D E F H A I)
        (and (= C (+ 1 A)) (= G C) (not B) (= B (not (<= F C))))
      )
      (main@.loopexit D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_17 C D E A G H)
        (and (= F E) (= B true) (= B (= A E)))
      )
      (main@.loopexit C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@_17 A B F E C D)
        (and (not G) (= G (= E F)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.loopexit E A G D I J)
        (and (= C (+ 1 A)) (= F C) (= H D) (= B true) (= B (not (<= G C))))
      )
      (main@.lr.ph10 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.loopexit F B H E A I)
        (and (= C (+ 1 B)) (= G E) (not D) (= D (not (<= H C))))
      )
      (main@._crit_edge F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge A B F G)
        (and (= D C) (= E B) (= C (+ 1 A)))
      )
      (main@_5 D E F G)
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
