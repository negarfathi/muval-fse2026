(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@.lr.ph6| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        main@entry
        (and (= C (not (<= 0 B)))
     (= D (not (<= H 0)))
     (= F 0)
     (= G 0)
     (= A true)
     (not C)
     (= D true)
     (= A (= E 1)))
      )
      (main@.lr.ph6 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        main@entry
        (and (= F (not (<= E 0)))
     (= D (not (<= 0 C)))
     (= G 0)
     (= H 0)
     (= B true)
     (not F)
     (not D)
     (= B (= A 1)))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph6 F A B I)
        (and (= D (+ 1 A))
     (= E (+ 1 B))
     (= G D)
     (= H E)
     (= C true)
     (= C (not (<= I D))))
      )
      (main@.lr.ph6 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph6 I A B C)
        (and (= E (+ 1 A)) (= F (+ 1 B)) (= G E) (= H F) (not D) (= D (not (<= C E))))
      )
      (main@.lr.ph G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph B A H)
        (and (= D (+ (- 1) B))
     (= E (+ (- 1) A))
     (= F D)
     (= G E)
     (= C true)
     (= C (not (<= B H))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph B A C)
        (and (= E (+ (- 1) A))
     (= F (+ (- 1) B))
     (= G E)
     (= H F)
     (not D)
     (= D (not (<= B C))))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C true) (= C (not (<= A B))))
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
