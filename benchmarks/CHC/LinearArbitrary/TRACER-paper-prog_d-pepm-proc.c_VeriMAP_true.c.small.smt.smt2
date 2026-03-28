(set-logic HORN)

(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_4| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
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
        (and (= D (not (<= 0 F))) (= B C) (= A true) (not D) (= A (= E 9999)))
      )
      (main@empty.loop E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_4 A B H)
        (and (= F D)
     (= D (+ 1 A))
     (= E (+ 1 B))
     (= G E)
     (= C true)
     (= C (not (<= H B))))
      )
      (main@_4 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@_4 A B C)
        (and (= E (+ 1 A)) (= F (+ 1 B)) (not D) (= D (not (<= C B))))
      )
      (main@verifier.error E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C (+ A B)) (= D true) (= D (not (<= 10000 C))))
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop E B)
        (and (= D 0) (not A) (= C B))
      )
      (main@_4 C D E)
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
