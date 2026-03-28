(set-logic HORN)

(declare-fun |main@empty.loop.body| ( Int Int Int Int ) Bool)
(declare-fun |main@_9| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@_4| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_11| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= B (= G 0)) (= C D) (= A true) (= B true) (= A (= E 0)))
      )
      (main@empty.loop D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_4 F G H I C)
        (and (= A F) (= D (+ H I)) (= E true) (= E (= B C)))
      )
      (main@_9 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_4 F G C I J)
        (and (= A F) (= E (+ C I)) (= H E) (not D) (= D (= B J)))
      )
      (main@_4 F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_9 D E F B)
        (and (= C B) (= A true) (= A (not (<= F 0))))
      )
      (main@_11 C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_11 H B D F)
        (and (= A B) (= E (+ H F)) (= G true) (= G (= C D)))
      )
      (main@verifier.error H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_11 C G H I)
        (and (= A G) (= E (+ C I)) (= F E) (not D) (= D (= B H)))
      )
      (main@_11 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (= B true) (= B (not (<= 0 A))))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop B C D E)
        (= A true)
      )
      (main@empty.loop.body B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop B C E F)
        (and (not A) (= D 0))
      )
      (main@_4 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D)
        true
      )
      (main@empty.loop A B C D)
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
