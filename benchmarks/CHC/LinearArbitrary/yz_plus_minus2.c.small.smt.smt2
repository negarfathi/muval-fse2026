(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@_1| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        main@entry
        (and (= A true) (= A (= B (- 1))))
      )
      (main@empty.loop B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_1 A B D L)
        (and (= E (not (<= F L)))
     (= F (+ G D))
     (= G (+ 2 A))
     (= H (+ (- 1) B))
     (= I H)
     (= J G)
     (= K F)
     (= C true)
     (= E true)
     (= C (not (<= 10000 D))))
      )
      (main@_1 I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@_1 A C F H)
        (and (= I (not (<= G H)))
     (= B (+ (- 1) C))
     (= E (+ 2 A))
     (= G (+ E F))
     (= D true)
     (not I)
     (= D (not (<= 10000 F))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error
        true
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (main@empty.loop B)
        (= A true)
      )
      (main@empty.loop.body B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop E)
        (and (= C 0) (= D 0) (not A) (= B 0))
      )
      (main@_1 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        (main@empty.loop.body A)
        true
      )
      (main@empty.loop A)
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
