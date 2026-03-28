(set-logic HORN)

(declare-fun str_invariant
             (Bool
              Bool
              Bool
              Bool
              Bool
              Int
              Int
              Bool
              Bool
              Int
              Int
              Int
              Int
              Int
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Int
              Bool
              Bool
              Int
              Bool
              Bool
              Bool
              Int
              Bool
              Bool
              Int
              Bool
              Bool)
             Bool)
(assert (forall ((A Bool)
         (B Bool)
         (C Int)
         (D Bool)
         (E Bool)
         (F Int)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Int)
         (K Bool)
         (L Bool)
         (M Int)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Bool)
         (B1 Bool)
         (C1 Int)
         (D1 Int)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool))
  (=> (and (str_invariant I1
                             H1
                             G1
                             F1
                             E1
                             D1
                             C1
                             B1
                             A1
                             Z
                             Y
                             X
                             W
                             V
                             U
                             T
                             S
                             R
                             Q
                             P
                             O
                             N
                             M
                             L
                             K
                             J
                             I
                             H
                             G
                             F
                             E
                             D
                             C
                             B
                             A)
              (not (= F1 true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Int)
         (D Bool)
         (E Bool)
         (F Int)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Int)
         (K Bool)
         (L Bool)
         (M Int)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Bool)
         (B1 Bool)
         (C1 Int)
         (D1 Int)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool))
  (let ((a!1 (and (or (and (= O true) (= N true)) (not (= A1 true)))
                     (or (= U true) (not (= L true)))
                     (or (not (= O true)) (not (= N true)) (= A1 true))
                     (or (not (= U true)) (= L true))
                     (= Z 0)
                     (or (= S true) (not (= K true)))
                     (= X 0)
                     (or (= T true) (not (= I true)))
                     (or (not (= S true)) (= K true))
                     (or (not (= T true)) (= I true))
                     (or (= R true) (not (= H true)))
                     (= Y 0)
                     (or (not (= R true)) (= H true))
                     (= (+ (- X Z) M) 0)
                     (= O true)
                     (= (- W M) 0)
                     (not (= L true))
                     (= F 0)
                     (= (- V J) 0)
                     (= (+ (- X Y) J) 0)
                     (= N true)
                     (not (= K true))
                     (= G true)
                     (= F1 true)
                     (not (= I true))
                     (= C 0)
                     (= E true)
                     (= (- D1 Z) 0)
                     (not (= H true))
                     (= D true)
                     (or (= B1 true) (not (= A1 true)))
                     (= (- C1 Y) 0)
                     (or (= B1 true) (not (= Q true)))
                     (= B true)
                     (or (not (= B1 true)) (= A1 true))
                     (or (not (= B1 true)) (= Q true))
                     (= P true)
                     (= A true)
                     (= E1 true))))
       (=> a!1
           (str_invariant I1
                          H1
                          G1
                          F1
                          E1
                          D1
                          C1
                          B1
                          A1
                          Z
                          Y
                          X
                          W
                          V
                          U
                          T
                          S
                          R
                          Q
                          P
                          O
                          N
                          M
                          L
                          K
                          J
                          I
                          H
                          G
                          F
                          E
                          D
                          C
                          B
                          A)))
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Int)
         (E Bool)
         (F Int)
         (G Bool)
         (H Bool)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Int)
         (N Bool)
         (O Int)
         (P Bool)
         (Q Int)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Int)
         (B1 Int)
         (C1 Int)
         (D1 Int)
         (E1 Int)
         (F1 Bool)
         (G1 Bool)
         (H1 Int)
         (I1 Int)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Int)
         (S1 Bool)
         (T1 Bool)
         (U1 Int)
         (V1 Bool)
         (W1 Bool)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Int)
         (A2 Bool)
         (B2 Bool)
         (C2 Int)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool)
         (K2 Bool)
         (L2 Bool)
         (M2 Int)
         (N2 Int)
         (O2 Int)
         (P2 Int)
         (Q2 Int)
         (R2 Bool))
  (let ((a!1 (= (- O2 (ite (= V1 true) (+ 1 C1) C1)) 0))
           (a!2 (= (- P2 (ite (= G2 true) (+ 1 D1) D1)) 0))
           (a!3 (or (and (= W true) (not (= V1 true))) (not (= W true))))
           (a!4 (or (and (>= I 9) (not (= R2 true))) (< I 9)))
           (a!5 (or (and (not (= P true)) (>= C2 10))
                    (and (= P true) (> C2 0))
                    (not (= B2 true))))
           (a!6 (and (or (not (= W true)) (= V1 true)) (= W true)))
           (a!8 (or (and (= V true) (not (= V1 true))) (not (= V true))))
           (a!9 (or (and (>= F 9) (not (= G2 true))) (< F 9)))
           (a!10 (or (and (not (= N true)) (<= C2 (- 10)))
                     (and (= N true) (< C2 0))
                     (not (= A2 true))))
           (a!11 (and (or (= P true) (< C2 10)) (or (not (= P true)) (<= C2 0))))
           (a!12 (- U1
                    (ite (and (= Y true) (= L2 true))
                         (ite (= R2 true) (+ (- 1) I) I)
                         0)))
           (a!13 (or (and (not (= L true)) (>= Z1 10))
                     (and (= L true) (> Z1 0))
                     (not (= Y1 true))))
           (a!14 (and (or (not (= V true)) (= V1 true)) (= V true)))
           (a!16 (and (or (= N true) (> C2 (- 10)))
                      (or (not (= N true)) (>= C2 0))))
           (a!17 (or (not (= H2 true))
                     (>= (+ (- 40 I1) H1) 0)
                     (not (= K1 true))))
           (a!18 (or (and (not (= K true)) (<= Z1 (- 10)))
                     (and (= K true) (< Z1 0))
                     (not (= X1 true))))
           (a!19 (and (or (= L true) (< Z1 10)) (or (not (= L true)) (<= Z1 0))))
           (a!20 (- R1
                    (ite (and (= X true) (= K2 true))
                         (ite (= G2 true) (+ (- 1) F) F)
                         0)))
           (a!21 (and (= H2 true) (< (+ (- 40 I1) H1) 0)))
           (a!22 (and (or (= K true) (> Z1 (- 10)))
                      (or (not (= K true)) (>= Z1 0)))))
     (let ((a!7 (or a!6 (and (or (< I 9) (= R2 true)) (>= I 9)) (= E2 true)))
           (a!15 (or a!14 (and (or (< F 9) (= G2 true)) (>= F 9)) (= D2 true))))
     (let ((a!23 (and (str_invariant O1
                                     N1
                                     M1
                                     L1
                                     J1
                                     I1
                                     H1
                                     G1
                                     F1
                                     E1
                                     D1
                                     C1
                                     B1
                                     A1
                                     Y
                                     X
                                     W
                                     V
                                     U
                                     T
                                     S
                                     R
                                     Q
                                     P
                                     N
                                     M
                                     L
                                     K
                                     J
                                     I
                                     H
                                     G
                                     F
                                     E
                                     C)
                      (or (and (= E2 true) (= D2 true)) (not (= A true)))
                      (or (not (= E2 true)) (not (= D2 true)) (= A true))
                      a!1
                      (or (= L2 true) (not (= B2 true)))
                      (= (- Q2 E1) 0)
                      (or (= J2 true) (not (= A2 true)))
                      (or (not (= L2 true)) (= B2 true))
                      (or (not (= J2 true)) (= A2 true))
                      (or (= K2 true) (not (= Y1 true)))
                      a!2
                      (or (= I2 true) (not (= X1 true)))
                      (or (not (= K2 true)) (= Y1 true))
                      (or (and a!3 a!4) (not (= E2 true)))
                      (or (not (= I2 true)) (= X1 true))
                      a!5
                      (= (+ (- O2 Q2) C2) 0)
                      a!7
                      (= (- N2 C2) 0)
                      (or (and a!8 a!9) (not (= D2 true)))
                      a!10
                      (or a!11 (= B2 true))
                      (= a!12 0)
                      (= (- M2 Z1) 0)
                      (or (= B true) (not (= A true)))
                      a!13
                      (= (+ (- O2 P2) Z1) 0)
                      a!15
                      (or a!16 (= A2 true))
                      (not (= W1 true))
                      a!17
                      (or (not (= B true)) (= A true))
                      a!18
                      (or a!19 (= Y1 true))
                      (= a!20 0)
                      (not (= T1 true))
                      (or a!21 (= K1 true))
                      (or a!22 (= X1 true))
                      (not (= S1 true))
                      (= (- O Q2) 0)
                      (or (= H2 true) (not (= B true)) (not (= U true)))
                      (not (= Q1 true))
                      (= (- D P2) 0)
                      (or (not (= H2 true)) (and (= B true) (= U true)))
                      (not (= F2 true))
                      (not (= P1 true))
                      (not (= Z true)))))
       (=> a!23
           (str_invariant R2
                          G2
                          V1
                          K1
                          Z
                          O
                          D
                          B
                          A
                          Q2
                          P2
                          O2
                          N2
                          M2
                          L2
                          K2
                          J2
                          I2
                          H2
                          F2
                          E2
                          D2
                          C2
                          B2
                          A2
                          Z1
                          Y1
                          X1
                          W1
                          U1
                          T1
                          S1
                          R1
                          Q1
                          P1)))))
    ))


(check-sat)
(exit)
