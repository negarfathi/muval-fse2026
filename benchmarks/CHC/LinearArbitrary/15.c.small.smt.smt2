(set-logic HORN)

(declare-fun |main@tailrecurse.i| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@sum.exit| ( Int Int ) Bool)
(declare-fun |main@sum.exit.split| ( ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (not (<= 1 F))) (= C D) (= G 0) (= B true) (= E true) (= B (= A 2)))
      )
      (main@sum.exit F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= 1 E)))
     (= F E)
     (= B C)
     (= G 0)
     (= A true)
     (not D)
     (= A (= H 2)))
      )
      (main@tailrecurse.i E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@tailrecurse.i G C B D)
        (and (= A (+ (- 1) C)) (= F (+ B C)) (= H F) (= E true) (= E (not (<= D C))))
      )
      (main@sum.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@tailrecurse.i F B A I)
        (and (= D (+ (- 1) B))
     (= G D)
     (= E (+ A B))
     (= H E)
     (not C)
     (= C (not (<= I B))))
      )
      (main@tailrecurse.i F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@sum.exit A B)
        (and (= C true) (= C (not (<= A B))))
      )
      main@sum.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@sum.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
