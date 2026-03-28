(set-logic HORN)

(declare-fun str_invariant
             (Bool
              Bool
              Bool
              Bool
              Bool
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
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool))
  (=> (and (str_invariant H1
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
              (not (= E1 true)))
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
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool))
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
                     (not (= I true))
                     (= C 0)
                     (= E true)
                     (= E1 true)
                     (not (= H true))
                     (= D true)
                     (or (= B1 true) (not (= A1 true)))
                     (= (- C1 W) 0)
                     (or (= B1 true) (not (= Q true)))
                     (= B true)
                     (or (not (= B1 true)) (= A1 true))
                     (or (not (= B1 true)) (= Q true))
                     (= P true)
                     (= A true)
                     (= D1 true))))
       (=> a!1
           (str_invariant H1
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
(assert (forall ((A Int)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Int)
         (G Bool)
         (H Bool)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Int)
         (N Int)
         (O Bool)
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
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Int)
         (R1 Bool)
         (S1 Bool)
         (T1 Bool)
         (U1 Int)
         (V1 Bool)
         (W1 Bool)
         (X1 Bool)
         (Y1 Int)
         (Z1 Bool)
         (A2 Bool)
         (B2 Int)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool)
         (K2 Bool)
         (L2 Int)
         (M2 Int)
         (N2 Int)
         (O2 Int)
         (P2 Bool))
  (let ((a!1 (= (- N2 (ite (= T1 true) (+ 1 C1) C1)) 0))
           (a!2 (= (- O2 (ite (= E2 true) (+ 1 D1) D1)) 0))
           (a!3 (or (and (= W true) (not (= T1 true))) (not (= W true))))
           (a!4 (or (and (>= I 9) (not (= P2 true))) (< I 9)))
           (a!5 (or (and (not (= P true)) (>= B2 10))
                    (and (= P true) (> B2 0))
                    (not (= A2 true))))
           (a!6 (and (or (not (= W true)) (= T1 true)) (= W true)))
           (a!8 (or (and (= V true) (not (= T1 true))) (not (= V true))))
           (a!9 (or (and (>= F 9) (not (= E2 true))) (< F 9)))
           (a!10 (or (and (not (= O true)) (<= B2 (- 10)))
                     (and (= O true) (< B2 0))
                     (not (= Z1 true))))
           (a!11 (and (or (= P true) (< B2 10)) (or (not (= P true)) (<= B2 0))))
           (a!12 (- U1
                    (ite (and (= Z true) (= K2 true))
                         (ite (= P2 true) (+ 2 I) I)
                         0)))
           (a!13 (or (and (not (= L true)) (>= Y1 10))
                     (and (= L true) (> Y1 0))
                     (not (= X1 true))))
           (a!14 (and (or (not (= V true)) (= T1 true)) (= V true)))
           (a!16 (and (or (= O true) (> B2 (- 10)))
                      (or (not (= O true)) (>= B2 0))))
           (a!17 (or (and (not (= K true)) (<= Y1 (- 10)))
                     (and (= K true) (< Y1 0))
                     (not (= W1 true))))
           (a!18 (and (or (= L true) (< Y1 10)) (or (not (= L true)) (<= Y1 0))))
           (a!19 (- Q1
                    (ite (and (= Y true) (= J2 true))
                         (ite (= E2 true) (+ 2 F) F)
                         0)))
           (a!20 (or (not (= G2 true))
                     (and (>= (+ 10 H1) 0) (>= (- 20 H1) 0))
                     (not (= I1 true))))
           (a!21 (and (or (= K true) (> Y1 (- 10)))
                      (or (not (= K true)) (>= Y1 0))))
           (a!22 (and (= G2 true) (or (< (+ 10 H1) 0) (< (- 20 H1) 0)))))
     (let ((a!7 (or a!6 (and (or (< I 9) (= P2 true)) (>= I 9)) (= D2 true)))
           (a!15 (or a!14 (and (or (< F 9) (= E2 true)) (>= F 9)) (= C2 true))))
     (let ((a!23 (and (str_invariant N1
                                     M1
                                     L1
                                     K1
                                     J1
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
                                     L
                                     K
                                     J
                                     I
                                     H
                                     G
                                     F
                                     E
                                     D)
                      (or (and (= D2 true) (= C2 true)) (not (= B true)))
                      (or (not (= D2 true)) (not (= C2 true)) (= B true))
                      a!1
                      (or (= K2 true) (not (= A2 true)))
                      (= (- A E1) 0)
                      (or (= I2 true) (not (= Z1 true)))
                      (or (not (= K2 true)) (= A2 true))
                      (or (not (= I2 true)) (= Z1 true))
                      (or (= J2 true) (not (= X1 true)))
                      a!2
                      (or (= H2 true) (not (= W1 true)))
                      (or (not (= J2 true)) (= X1 true))
                      (or (and a!3 a!4) (not (= D2 true)))
                      (or (not (= H2 true)) (= W1 true))
                      a!5
                      (= (- (+ N2 B2) A) 0)
                      a!7
                      (= (- M2 B2) 0)
                      (or (and a!8 a!9) (not (= C2 true)))
                      a!10
                      (or a!11 (= A2 true))
                      (= a!12 0)
                      (= (- L2 Y1) 0)
                      a!13
                      (= (+ (- N2 O2) Y1) 0)
                      a!15
                      (or a!16 (= Z1 true))
                      (not (= V1 true))
                      (or (= C true) (not (= B true)))
                      a!17
                      (or a!18 (= X1 true))
                      (= a!19 0)
                      (not (= S1 true))
                      a!20
                      (or (not (= C true)) (= B true))
                      (or a!21 (= W1 true))
                      (not (= R1 true))
                      (or a!22 (= I1 true))
                      (or (= G2 true) (not (= C true)) (not (= U true)))
                      (not (= P1 true))
                      (= (- M M2) 0)
                      (or (not (= G2 true)) (and (= C true) (= U true)))
                      (not (= F2 true))
                      (not (= O1 true))
                      (not (= X true)))))
       (=> a!23
           (str_invariant P2
                          E2
                          T1
                          I1
                          X
                          M
                          C
                          B
                          A
                          O2
                          N2
                          M2
                          L2
                          K2
                          J2
                          I2
                          H2
                          G2
                          F2
                          D2
                          C2
                          B2
                          A2
                          Z1
                          Y1
                          X1
                          W1
                          V1
                          U1
                          S1
                          R1
                          Q1
                          P1
                          O1)))))
    ))


(check-sat)
(exit)
