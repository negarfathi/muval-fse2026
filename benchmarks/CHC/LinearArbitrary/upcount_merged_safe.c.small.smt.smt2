(set-logic HORN)

(declare-fun |main@.lr.ph| ( Bool Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Bool Int Int Int ) Bool)
(declare-fun |main@.lr.ph5| ( Bool Int Int Int Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int Bool ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= B (= J 0))
     (= E (not (<= G (- 1))))
     (= C D)
     (= H 0)
     (= I G)
     (= A true)
     (= B true)
     (= E true)
     (= A (= F 1)))
      )
      (main@.lr.ph5 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@entry F)
        (and (= J (not (<= G (- 1))))
     (= B (= A 1))
     (= E F)
     (= H 0)
     (= I 1)
     (= D true)
     (not J)
     (= B true)
     (= D (= C 0)))
      )
      (main@orig.main.exit H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader C F G B)
        (and (= D B) (= E 1) (= A true) (= A (not (<= B 0))))
      )
      (main@.lr.ph C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@.preheader G A D B)
        (and (= E D) (= F 1) (not C) (= C (not (<= B 0))))
      )
      (main@orig.main.exit E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G H A B K)
        (and (= D (+ (- 1) B))
     (= E (+ 1 A))
     (= I E)
     (= J D)
     (= C true)
     (= C (not (<= B K))))
      )
      (main@.lr.ph5 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G I A C D)
        (and (= B (+ (- 1) C)) (= H (+ 1 A)) (not E) (= E (not (<= C D))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph F B A I J)
        (and (= E (+ (- 1) B))
     (= D (+ 1 A))
     (= G E)
     (= H D)
     (= C true)
     (= C (not (<= B I))))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@.lr.ph J C B D F)
        (and (= A (+ (- 1) C))
     (= G (+ 1 B))
     (= H F)
     (= I G)
     (not E)
     (= E (not (<= C D))))
      )
      (main@orig.main.exit H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B D)
        (and (= F (and E D)) (not C) (= F true) (= E (not (= A B))))
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
