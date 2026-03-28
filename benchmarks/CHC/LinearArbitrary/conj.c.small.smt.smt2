(set-logic HORN)

(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@_9| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_11| ( Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry G)
        (let ((a!1 (= E (and (not (<= 49 J)) (>= J 0)))))
  (and a!1
       (= I (= H 0))
       (= C G)
       (= F G)
       (= J (+ (- 1) D))
       (= K J)
       (= B true)
       (= E true)
       (= I true)
       (= B (= A 0))))
      )
      (main@verifier.error K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry I)
        (let ((a!1 (= D (and (not (<= 49 C)) (>= C 0)))))
  (and a!1
       (= G (= F 0))
       (= C (+ (- 1) H))
       (= B I)
       (= E I)
       (= K 1)
       (= L H)
       (= A true)
       (= D true)
       (not G)
       (= A (= J 0))))
      )
      (main@.lr.ph I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph D E A B)
        (and (= F (+ A B)) (= C true) (= C (not (<= F 49))))
      )
      (main@_9 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph C D E A)
        (and (= F (+ E A)) (not B) (= B (not (<= F 49))))
      )
      (main@_11 C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_9 D E A)
        (and (= C B) (= F (- 1)) (= B (+ (- 2) A)))
      )
      (main@_14 C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_11 H I D B)
        (and (= A (+ 2 B))
     (= E (ite C A B))
     (= F (ite C 1 D))
     (= G E)
     (= J F)
     (= C (not (<= 1 B))))
      )
      (main@_14 G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@_14 G C E A)
        (and (= B C) (= F true) (= F (= D E)))
      )
      (main@verifier.error.loopexit G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_14 E F G D)
        (and (= A F) (= H D) (= I E) (not C) (= C (= B G)))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (+ (- 1) A)))
      )
      (main@verifier.error C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (let ((a!1 (= B (and (not (<= 49 A)) (>= A 0)))))
  (and (not B) a!1))
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
