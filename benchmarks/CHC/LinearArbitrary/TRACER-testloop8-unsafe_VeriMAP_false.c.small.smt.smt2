(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@.lr.ph5| ( Int Int Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Bool ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@orig.main.exit.loopexit| ( Int ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        main@entry
        (and (= D (= C 0))
     (= F (= E 0))
     (= B true)
     (= D true)
     (= F true)
     (= G true)
     (= B (= A 1)))
      )
      (main@orig.main.exit G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        main@entry
        (and (= B (= H 0))
     (= D (= C 0))
     (= G 0)
     (= F 0)
     (= A true)
     (= B true)
     (not D)
     (= A (= E 1)))
      )
      (main@.lr.ph5 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph5 J A B D)
        (and (= G (+ 1 B)) (= I G) (= F (+ 1 A)) (= H F) (= E true) (= E (= C D)))
      )
      (main@.lr.ph H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph5 G A B J)
        (and (= E (+ 1 A)) (= I F) (= F (+ 1 B)) (= H E) (not D) (= D (= C J)))
      )
      (main@.lr.ph5 G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph B A H)
        (and (= E (+ (- 1) A))
     (= G E)
     (= D (+ (- 1) B))
     (= F D)
     (= C true)
     (= C (not (<= B H))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.lr.ph C B D)
        (and (= A (+ (- 1) C)) (= F (+ (- 1) B)) (not E) (= E (not (<= C D))))
      )
      (main@orig.main.exit.loopexit F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@orig.main.exit.loopexit A)
        (and (= C B) (= B (= A 0)))
      )
      (main@orig.main.exit C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@orig.main.exit B)
        (and (= B true) (not A))
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
