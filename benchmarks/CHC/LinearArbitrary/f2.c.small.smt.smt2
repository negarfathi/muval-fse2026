(set-logic HORN)

(declare-fun |main@_7| ( Int Int Int Int ) Bool)
(declare-fun |main@_16| ( Int Int Int Int ) Bool)
(declare-fun |main@_21| ( Int Int Int Int ) Bool)
(declare-fun |main@_10| ( Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_24| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_14| ( Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (= E 0)) (= C D) (= G 0) (= H 0) (= B true) (= F true) (= B (= A 0)))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= D (= C 0)) (= B E) (= G 0) (= H 0) (= A true) (not D) (= A (= F 0)))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_10 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_7 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_7 E F A B)
        (and (= D (+ 1 A)) (= G C) (= H D) (= C (+ 2 B)))
      )
      (main@_24 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_10 D E F G)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_19 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_10 D E F G)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_14 D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@_14 B C D E)
        (and (= A true) (= A (not (<= D 3))))
      )
      (main@_16 B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_14 D E C B)
        (and (= F B) (= G C) (not A) (= A (not (<= C 3))))
      )
      (main@_24 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_16 E F A B)
        (and (= D (+ 1 A)) (= G C) (= H D) (= C (+ 3 B)))
      )
      (main@_24 E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@_19 B C D E)
        (and (= A true) (= A (not (<= D E))))
      )
      (main@_21 B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_19 D E C B)
        (and (= F B) (= G C) (not A) (= A (not (<= C B))))
      )
      (main@_24 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_21 E F A B)
        (and (= D (* (- 1) A)) (= G C) (= H D) (= C (* (- 1) B)))
      )
      (main@_24 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_24 B D F G)
        (and (= A B) (= H G) (= I F) (= E true) (= E (= C D)))
      )
      (main@verifier.error H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_24 F G E D)
        (and (= A F) (= H D) (= I E) (not C) (= C (= B G)))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@verifier.error A C)
        (and (= B (* 3 A)) (= D true) (= D (not (<= C B))))
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
