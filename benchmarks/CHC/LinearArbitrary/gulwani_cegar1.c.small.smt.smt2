(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry M)
        (let ((a!1 (= I (and (not (<= 3 Q)) (>= Q 0))))
      (a!2 (= J (and (not (<= 3 P)) (>= P 0)))))
  (and (= E (not (<= Q (- 1))))
       (= F (not (<= 3 Q)))
       (= G (not (<= P (- 1))))
       (= H (not (<= 3 P)))
       a!1
       a!2
       (= K (and J I))
       (= O (= N 0))
       (= C M)
       (= D M)
       (= L M)
       (= R P)
       (= S Q)
       (= B true)
       (= E true)
       (= F true)
       (= G true)
       (= H true)
       (= K true)
       (= O true)
       (= B (= A 0))))
      )
      (main@verifier.error R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry R)
        (let ((a!1 (= H (and (not (<= 3 N)) (>= N 0))))
      (a!2 (= I (and (not (<= 3 O)) (>= O 0)))))
  (and (= D (not (<= N (- 1))))
       (= M (= L 0))
       (= E (not (<= 3 N)))
       (= F (not (<= O (- 1))))
       (= G (not (<= 3 O)))
       a!1
       a!2
       (= J (and I H))
       (= B R)
       (= K R)
       (= C R)
       (= P N)
       (= Q O)
       (= A true)
       (= D true)
       (not M)
       (= E true)
       (= F true)
       (= G true)
       (= J true)
       (= A (= S 0))))
      )
      (main@.lr.ph P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A B D F)
        (and (= C D)
     (= H (+ 2 B))
     (= I (+ 2 A))
     (= J H)
     (= K I)
     (= G true)
     (= G (= E F)))
      )
      (main@verifier.error J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A B J K)
        (and (= C J) (= G (+ 2 B)) (= F (+ 2 A)) (= H F) (= I G) (not E) (= E (= D K)))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= D (not (<= B 3))) (= E (and D C)) (= E true) (= C (= A 0)))
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
