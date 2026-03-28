(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@entry D)
        (let ((a!1 (= H (and (not (<= 4 E)) (>= E 0))))
      (a!2 (= L (and (not (<= 210 K)) (>= K 0)))))
  (and a!1
       (= I (= M G))
       (= J (and I H))
       a!2
       (= B D)
       (= C D)
       (= E (+ (- 1) F))
       (= G (* 3 F))
       (= K (+ (- 2) M))
       (= N M)
       (= O 0)
       (= A true)
       (= J true)
       (= L true)
       (= A (= P 210))))
      )
      (main@.lr.ph N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@entry E)
        (let ((a!1 (= I (and (not (<= 4 F)) (>= F 0))))
      (a!2 (= N (and (not (<= 210 M)) (>= M 0)))))
  (and a!1
       (= K (and J I))
       (= J (= L H))
       a!2
       (= F (+ (- 1) G))
       (= H (* 3 G))
       (= C E)
       (= D E)
       (= M (+ (- 2) L))
       (= B true)
       (= K true)
       (not N)
       (= B (= A 210))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph C A J)
        (let ((a!1 (ite (>= D 0)
                (or (not (<= J D)) (not (>= J 0)))
                (and (not (<= J D)) (not (<= 0 J))))))
  (and (= B (not (<= 199 A)))
       (= D (+ (- 1) C))
       (= G (+ 1 A))
       (= H F)
       (= I G)
       (= F (+ 1 C))
       (= E true)
       (= B true)
       (= E a!1)))
      )
      (main@.lr.ph H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph E C G)
        (let ((a!1 (ite (>= F 0)
                (or (not (<= G F)) (not (>= G 0)))
                (and (not (<= G F)) (not (<= 0 G))))))
  (and (= H a!1)
       (= A (+ 1 E))
       (= B (+ 1 C))
       (= F (+ (- 1) E))
       (= D true)
       (not H)
       (= D (not (<= 199 C)))))
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
