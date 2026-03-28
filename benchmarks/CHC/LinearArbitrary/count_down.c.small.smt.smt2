(set-logic HORN)

(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_4| ( Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= F 0))) (= B C) (= A true) (= D true) (= A (= E 0)))
      )
      (main@empty.loop E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@_4 A E)
        (and (= C (+ (- 1) A)) (= D C) (= B true) (= B (not (<= A E))))
      )
      (main@_4 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@_4 D A)
        (and (= B (+ (- 1) D)) (not C) (= C (not (<= D A))))
      )
      (main@verifier.error D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (= A 0)))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@empty.loop B C)
        (= A true)
      )
      (main@empty.loop.body B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop D B)
        (and (not A) (= C B))
      )
      (main@_4 C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (main@empty.loop.body A B)
        true
      )
      (main@empty.loop A B)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
