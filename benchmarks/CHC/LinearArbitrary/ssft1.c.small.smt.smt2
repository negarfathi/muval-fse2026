(set-logic HORN)

(declare-fun |main@orig.main.exit| ( Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (not (<= I 0)))
     (= A C)
     (= B C)
     (= G 0)
     (= H F)
     (= D true)
     (= E true)
     (= D (not (<= F I))))
      )
      (main@.lr.ph G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph A B H)
        (and (= D (+ 1 A))
     (= E (+ (- 1) B))
     (= F D)
     (= G E)
     (= C true)
     (= C (not (<= H D))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph A B D)
        (and (= C (+ 1 A)) (= F (+ (- 1) B)) (= G F) (not E) (= E (not (<= D C))))
      )
      (main@orig.main.exit G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@orig.main.exit A)
        (and (not B) (= C true) (= C (not (<= 0 A))))
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
