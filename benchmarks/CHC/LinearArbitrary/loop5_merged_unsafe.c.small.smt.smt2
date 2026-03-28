(set-logic HORN)

(declare-fun |main@.lr.ph5| ( Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= I 0)))
     (= B C)
     (= G 0)
     (= H 0)
     (= I (* 2 F))
     (= A true)
     (= D true)
     (= A (= E 1)))
      )
      (main@.lr.ph5 E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (not (<= D 0)))
     (= B C)
     (= D (* 2 H))
     (= F 0)
     (= A true)
     (not E)
     (= A (= G 1)))
      )
      (main@._crit_edge F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G A B J)
        (and (= E (+ 1 A))
     (= D (+ 1 B))
     (= H E)
     (= I D)
     (= C true)
     (= C (not (<= J D))))
      )
      (main@.lr.ph5 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph5 H I A B D)
        (and (= C (+ 1 B)) (= F (+ 1 A)) (= G F) (not E) (= E (not (<= D C))))
      )
      (main@._crit_edge G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@._crit_edge B C D)
        (and (= A true) (= A (not (<= D (- 1)))))
      )
      (main@.lr.ph.preheader B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge D A B)
        (and (= E 0) (not C) (= C (not (<= B (- 1)))))
      )
      (main@orig.main.exit D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader C F A)
        (and (= D 0) (= E B) (= B (+ 1 A)))
      )
      (main@.lr.ph C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F A B I)
        (and (= D (+ 2 A))
     (= E (+ (- 1) B))
     (= G D)
     (= H E)
     (= C true)
     (= C (not (<= B I))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph G A C D)
        (and (= B (+ (- 1) C)) (= F (+ 2 A)) (= H F) (not E) (= E (not (<= C D))))
      )
      (main@orig.main.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B)
        (and (not C) (= D true) (= D (not (= A B))))
      )
      main@orig.main.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@orig.main.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
