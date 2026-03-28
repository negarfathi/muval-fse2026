(set-logic HORN)

(declare-fun |main@f.exit| ( Int ) Bool)
(declare-fun |main@f.exit.split| ( ) Bool)
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
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= C (not (<= E 1))) (= A B) (not D) (= C true) (= D (not (<= (- 1) E))))
      )
      (main@f.exit E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@f.exit D)
        (and (= F (not (<= E (- 1))))
     (= A (* 2 D))
     (= C (+ (- 1) A))
     (= E (ite B C D))
     (not F)
     (= B (not (<= 2 D))))
      )
      main@f.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@f.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
