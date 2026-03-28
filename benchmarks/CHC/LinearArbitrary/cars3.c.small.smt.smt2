(set-logic HORN)

(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Bool) (W Bool) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (main@entry Y)
        (let ((a!1 (= U (and (not (<= 11 T)) (>= T 0)))))
  (and (= J (not (<= P 5)))
       (= K (not (<= 0 R)))
       (= L (not (<= R P)))
       (= M (or K J))
       (= N (or M L))
       a!1
       (= V (= Q R))
       (= W (and V U))
       (= A1 (= Z 0))
       (= C Y)
       (= D Y)
       (= E Y)
       (= F Y)
       (= G Y)
       (= H Y)
       (= I Y)
       (= O (* 2 S))
       (= Q (+ O (* (- 1) P)))
       (= T (+ 5 S))
       (= X Y)
       (= B1 75)
       (= C1 0)
       (= B true)
       (not N)
       (= W true)
       (= A1 true)
       (= B (= A 0))))
      )
      (main@verifier.error B1 C1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Bool) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) ) 
    (=>
      (and
        (main@entry A1)
        (let ((a!1 (= S (and (not (<= 11 R)) (>= R 0)))))
  (and (= I (not (<= O 5)))
       (= J (not (<= 0 Q)))
       a!1
       (= T (= P Q))
       (= U (and T S))
       (= K (not (<= Q O)))
       (= L (or J I))
       (= M (or L K))
       (= X (= W 0))
       (= C A1)
       (= N (* 2 Y))
       (= V A1)
       (= B1 75)
       (= B A1)
       (= D A1)
       (= E A1)
       (= F A1)
       (= G A1)
       (= H A1)
       (= P (+ N (* (- 1) O)))
       (= R (+ 5 Y))
       (= Z Y)
       (= C1 0)
       (= A true)
       (= U true)
       (not M)
       (not X)
       (= A (= D1 0))))
      )
      (main@.lr.ph Z A1 B1 C1 D1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph I L E J N)
        (let ((a!1 (= B (and (not (<= 11 A)) (>= A 0)))))
  (and a!1
       (= O (= M N))
       (= A (+ 5 I))
       (= C L)
       (= G (+ H I))
       (= H (ite F 1 (- 1)))
       (= P (+ 1 J))
       (= K L)
       (= Q (+ E I))
       (= B true)
       (= O true)
       (= F (= D 0))))
      )
      (main@verifier.error.loopexit P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph H Q E I T)
        (let ((a!1 (= B (and (not (<= 11 A)) (>= A 0)))))
  (and a!1
       (= L (= K T))
       (= A (+ 5 H))
       (= C Q)
       (= M (+ E H))
       (= R M)
       (= G (ite F 1 (- 1)))
       (= J Q)
       (= O (+ 1 I))
       (= P N)
       (= S O)
       (= N (+ G H))
       (= B true)
       (not L)
       (= F (= D 0))))
      )
      (main@.lr.ph P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@verifier.error.loopexit A C)
        (and (= D C) (= E B) (= B (* 5 A)))
      )
      (main@verifier.error D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C (+ A B)) (not D) (= D (not (<= C 74))))
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
