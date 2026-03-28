(set-logic HORN)

(declare-fun |main@assume.exit| ( Int Int ) Bool)
(declare-fun |main@assume.exit2| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@assume.exit4| ( Int Int Int ) Bool)
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
        (and (= A C) (= B C) (= D true) (= D (not (<= F 0))))
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
        (and (= A true) (= A (not (<= B 0))))
      )
      (main@assume.exit2 B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@assume.exit2 D A)
        (and (= C 0) (= E 0) (= B true) (= B (not (<= D A))))
      )
      (main@assume.exit4 C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@assume.exit4 C H A)
        (and (= B (ite D 1 0))
     (= G F)
     (= E (+ A B))
     (= F (+ 1 C))
     (= I E)
     (= D true)
     (= D (not (<= H C))))
      )
      (main@assume.exit4 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@assume.exit4 D A B)
        (and (= C (ite E 1 0)) (= F (+ 1 D)) (= G (+ B C)) (not E) (= E (not (<= A D))))
      )
      (main@orig.main.exit F G)
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
