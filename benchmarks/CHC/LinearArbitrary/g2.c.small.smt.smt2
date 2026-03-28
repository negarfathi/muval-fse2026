(set-logic HORN)

(declare-fun |main@assume.exit| ( Int Int ) Bool)
(declare-fun |main@assume.exit4| ( Int Int Int Int ) Bool)
(declare-fun |main@assume.exit2| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= D true) (= D (not (<= E 0))))
      )
      (main@assume.exit E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@assume.exit B C)
        (and (= A true) (= A (not (<= C 0))))
      )
      (main@assume.exit2 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@assume.exit2 C E)
        (and (= B 0) (= D 0) (= A true) (= A (not (<= E C))))
      )
      (main@assume.exit4 B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@assume.exit4 D I B K)
        (and (= E (not (<= K G)))
     (= C (ite A 1 0))
     (= F (+ B C))
     (= G (+ 1 D))
     (= H G)
     (= J F)
     (= E true)
     (= A (not (= D I))))
      )
      (main@assume.exit4 H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@assume.exit4 E A C F)
        (and (= G (not (<= F H)))
     (= D (ite B 1 0))
     (= H (+ 1 E))
     (= I (+ C D))
     (not G)
     (= B (not (= E A))))
      )
      (main@orig.main.exit H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B)
        (and (not C) (not D) (= D (not (= A B))))
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
