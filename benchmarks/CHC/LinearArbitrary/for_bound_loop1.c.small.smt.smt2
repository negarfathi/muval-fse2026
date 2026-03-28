(set-logic HORN)

(declare-fun |main@empty.loop.body| ( Int Int Int ) Bool)
(declare-fun |main@_3| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= B D) (= A true) (= A (= E 0)))
      )
      (main@empty.loop C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_3 I A D G)
        (and (= E (not (= F 0)))
     (= J (= F G))
     (= C D)
     (= H (+ 1 I))
     (= B true)
     (= E true)
     (= J true)
     (= B (not (<= A I))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_3 E I J K)
        (and (= C (not (= D 0)))
     (= F (= D K))
     (= B J)
     (= G (+ 1 E))
     (= H G)
     (= A true)
     (= C true)
     (not F)
     (= A (not (<= I E))))
      )
      (main@_3 H I J K)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop B C D)
        (= A true)
      )
      (main@empty.loop.body B C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop C D E)
        (and (not A) (= B 0))
      )
      (main@_3 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C)
        true
      )
      (main@empty.loop A B C)
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
