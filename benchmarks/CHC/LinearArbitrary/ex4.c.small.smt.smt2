(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_7| ( Int Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= G (= F 0)) (= C E) (= D E) (= H 0) (= B true) (= G true) (= B (= A 0)))
      )
      (main@verifier.error H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= A (= H 0)) (= B G) (= C G) (not E) (= A true) (= E (= D 0)))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph B E F)
        (and (= D (ite A 1 (- 1))) (= C 0) (= A (not (<= B (- 1)))))
      )
      (main@_7 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_7 J A B D F)
        (and (= C D) (= H (+ A B)) (= I H) (= G true) (= G (= E F)))
      )
      (main@verifier.error I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_7 F A H I J)
        (and (= B I) (= E (+ A H)) (= G E) (not D) (= D (= C J)))
      )
      (main@_7 F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@verifier.error E D)
        (and (= H (and F G))
     (= B (not (<= E (- 1))))
     (= C (and A B))
     (= A (not (<= D (- 1))))
     (= F (not (<= 0 D)))
     (not H)
     (not C)
     (= G (not (<= 1 E))))
      )
      main@verifier.error.split
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
