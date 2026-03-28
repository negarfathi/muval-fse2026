(set-logic HORN)

(declare-fun |main@_7| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int ) Bool)
(declare-fun |main@_9| ( Int Int Int ) Bool)
(declare-fun |main@_2| ( Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= B (= E 0)) (= A true) (= B true) (= A (= D 2)))
      )
      (main@empty.loop C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_2 F G H C)
        (and (= A F) (= D (+ 1 H)) (= E true) (= E (= B C)))
      )
      (main@_7 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_2 F G C I)
        (and (= A F) (= E (+ 1 C)) (= H E) (not D) (= D (= B I)))
      )
      (main@_2 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@_7 C E A)
        (and (= D B) (= B (* (- 1) A)))
      )
      (main@_9 C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_9 G D I)
        (and (= E (not (<= I D)))
     (= A G)
     (= F (+ (- 1) D))
     (= H F)
     (not C)
     (= E true)
     (= C (= B 0)))
      )
      (main@_9 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@_9 B G E)
        (and (= D (= C 0))
     (= A B)
     (= F (+ (- 1) G))
     (not H)
     (not D)
     (= H (not (<= E G))))
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
        (main@empty.loop B C E)
        (and (not A) (= D 0))
      )
      (main@_2 B C D E)
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
