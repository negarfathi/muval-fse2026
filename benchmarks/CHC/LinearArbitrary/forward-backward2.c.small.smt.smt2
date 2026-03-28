(set-logic HORN)

(declare-fun |main@empty.loop.body| ( Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@_4| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
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
        (and (= B (= F 0)) (= C D) (= A true) (= B true) (= A (= E 0)))
      )
      (main@empty.loop D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_4 G I J C F)
        (and (= A I) (= D (+ G F)) (= H F) (= E true) (= E (= B C)))
      )
      (main@.preheader G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_4 C G H I J)
        (and (= E (+ C J)) (= A G) (= F E) (not D) (= D (= B I)))
      )
      (main@_4 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader G H B D)
        (and (= A B) (= E (+ H G)) (= F true) (= F (= C D)))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader F C H I)
        (and (= A H) (= E (+ C F)) (= G E) (not D) (= D (= B I)))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= E (and C D)) (= C (not (<= A 0))) (= E true) (= D (not (<= 0 B))))
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
        (main@empty.loop C D E F)
        (and (not A) (= B 0))
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
