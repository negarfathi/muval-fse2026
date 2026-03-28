(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@_1| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)

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
        (and (= A true) (= A (= B 99)))
      )
      (main@empty.loop B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_1 G C H P)
        (and (= D (= G 1))
     (= I (not (<= P H)))
     (= B (+ 2 C))
     (= E (ite A B C))
     (= F (ite D (- 1) 0))
     (= J (+ E F))
     (= K (+ 1 H))
     (= L (+ 1 (* (- 1) G)))
     (= M L)
     (= N J)
     (= O K)
     (= I true)
     (= A (= G 0)))
      )
      (main@_1 M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@_1 H C J K)
        (and (= A (= H 0))
     (= L (not (<= K J)))
     (= F (ite D (- 1) 0))
     (= B (+ 2 C))
     (= E (ite A B C))
     (= G (+ 1 (* (- 1) H)))
     (= I (+ 1 J))
     (= M (+ E F))
     (not L)
     (= D (= H 1)))
      )
      (main@verifier.error M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (not (<= 101 A))))
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
