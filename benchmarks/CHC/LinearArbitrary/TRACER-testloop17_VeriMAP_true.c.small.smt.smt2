(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int ) Bool)
(declare-fun |main@.orig.main.exit_crit_edge| ( Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@orig.main.exit| ( Bool ) Bool)
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
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= D (not (<= F 0)))
     (= A B)
     (= E 0)
     (not C)
     (= D true)
     (= C (not (<= 2 F))))
      )
      (main@.lr.ph E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= C (not (<= 2 D))) (= A B) (not E) (not F) (not C) (= E (not (<= D 0))))
      )
      (main@orig.main.exit F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph A E)
        (and (= C (+ 1 A)) (= D C) (= B true) (= B (not (<= E C))))
      )
      (main@.lr.ph D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@.lr.ph D B)
        (and (= A (+ 1 D)) (not C) (= C (not (<= B A))))
      )
      (main@.orig.main.exit_crit_edge D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@.orig.main.exit_crit_edge A)
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
