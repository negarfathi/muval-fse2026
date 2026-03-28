(set-logic HORN)

(declare-fun |main@_8| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@_5| ( Int Int Int ) Bool)
(declare-fun |main@_12| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_15| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        main@entry
        (and (= D (= C 0)) (= E 0) (= F 0) (= B true) (= D true) (= B (= A 0)))
      )
      (main@verifier.error E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        main@entry
        (and (= C (= B 0)) (= E 0) (= F 0) (= A true) (not C) (= A (= D 0)))
      )
      (main@.lr.ph D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph C D E)
        (and (= B true) (= B (= A 0)))
      )
      (main@_8 C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph C D E)
        (and (not B) (= B (= A 0)))
      )
      (main@_5 C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_5 E A B)
        (and (= D (+ 1 A)) (= F C) (= G D) (= C (+ 2 B)))
      )
      (main@_15 E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_8 E F G)
        (and (= D (and C B)) (= C (not (= A 0))) (= D true) (= B (not (<= F 3))))
      )
      (main@_12 E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_8 G F E)
        (and (= C (not (= A 0)))
     (= D (and C B))
     (= H E)
     (= I F)
     (not D)
     (= B (not (<= F 3))))
      )
      (main@_15 G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_12 E A B)
        (and (= D (+ 1 A)) (= F C) (= G D) (= C (+ 3 B)))
      )
      (main@_15 E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_15 B D E)
        (and (= F E) (= G D) (= C true) (= C (= A B)))
      )
      (main@verifier.error F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_15 E D C)
        (and (= F C) (= G D) (not B) (= B (= A E)))
      )
      (main@.lr.ph E F G)
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
