(set-logic HORN)

(declare-fun |main@LeafBlock.i| ( Int ) Bool)
(declare-fun |main@NodeBlock.i| ( Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= C true) (= C (not (<= 2 D))))
      )
      (main@LeafBlock.i D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (not C) (= C (not (<= 2 D))))
      )
      (main@NodeBlock.i D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@NodeBlock.i B)
        (and (= C (= B 2)) (= E (ite C 3 D)) (= D (ite A 4 0)) (= F E) (= A (= B 3)))
      )
      (main@orig.main.exit F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@LeafBlock.i A)
        (and (= D (ite B C 0)) (= C (+ 1 A)) (= E D) (= B (= A 1)))
      )
      (main@orig.main.exit E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@orig.main.exit A)
        (and (= C true) (not B) (= C (not (<= A 4))))
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
