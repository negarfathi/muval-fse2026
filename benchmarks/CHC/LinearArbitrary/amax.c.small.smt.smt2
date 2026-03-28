(set-logic HORN)

(declare-fun |main@array_max.exit| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@tailrecurse.i| ( Int Int Int ) Bool)
(declare-fun |main@array_max.exit.split| ( ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (= H 0))
     (= F (and E D))
     (= G (not (<= I H)))
     (= A C)
     (= B C)
     (= J H)
     (= K (- 1))
     (= F true)
     (= G true)
     (= D (not (<= I 0))))
      )
      (main@tailrecurse.i I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= J 0)))
     (= E (= G 0))
     (= F (and E D))
     (= A C)
     (= B C)
     (= I (- 1))
     (not H)
     (= F true)
     (= H (not (<= J G))))
      )
      (main@array_max.exit I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.i H D C)
        (and (= E (not (<= H G)))
     (= F (ite A B C))
     (= B (+ H (* (- 1) D)))
     (= G (+ 1 D))
     (= I G)
     (= J F)
     (= E true)
     (= A (not (<= B C))))
      )
      (main@tailrecurse.i H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@tailrecurse.i I D C)
        (and (= F (not (<= I E)))
     (= E (+ 1 D))
     (= B (+ I (* (- 1) D)))
     (= G (ite A B C))
     (= H G)
     (not F)
     (= A (not (<= B C))))
      )
      (main@array_max.exit H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@array_max.exit A B)
        (and (= C true) (= C (not (<= B A))))
      )
      main@array_max.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@array_max.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
