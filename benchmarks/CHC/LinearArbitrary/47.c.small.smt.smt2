(set-logic HORN)

(declare-fun |main@_9| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry F)
        (let ((a!1 (= C (and (not (<= 2 K)) (>= K 0)))))
  (and a!1
       (= H (not (<= I G)))
       (= B F)
       (= D F)
       (= E F)
       (= A true)
       (= C true)
       (= H true)
       (= A (= J 2))))
      )
      (main@empty.loop I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_9 C I B K)
        (let ((a!1 (ite (>= D 0)
                (or (not (<= K D)) (not (>= K 0)))
                (and (not (<= K D)) (not (<= 0 K))))))
  (and (= A (not (<= I C)))
       (= H F)
       (= D (+ G C))
       (= F (+ 1 C))
       (= G (+ (- 1) B))
       (= J G)
       (= E true)
       (= A true)
       (= E a!1)))
      )
      (main@_9 H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@_9 F A D H)
        (let ((a!1 (ite (>= G 0)
                (or (not (<= H G)) (not (>= H 0)))
                (and (not (<= H G)) (not (<= 0 H))))))
  (and (= I a!1)
       (= C (+ 1 F))
       (= E (+ (- 1) D))
       (= G (+ E F))
       (= B true)
       (not I)
       (= B (not (<= A F)))))
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop D F B)
        (and (= E B) (not A) (= C 1))
      )
      (main@_9 C D E F)
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
