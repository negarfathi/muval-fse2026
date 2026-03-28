(set-logic HORN)

(declare-fun str_invariant
             (Bool
              Bool
              Bool
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Bool
              Bool
              Int
              Int
              Bool
              Bool
              Int
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool)
             Bool)
(assert (forall ((A Int)
         (B Bool)
         (C Bool)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Bool)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Bool)
         (S1 Bool)
         (T1 Bool)
         (U1 Bool)
         (V1 Bool)
         (W1 Bool)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Bool)
         (A2 Bool)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool)
         (K2 Bool)
         (L2 Bool)
         (M2 Bool)
         (N2 Bool)
         (O2 Bool)
         (P2 Bool)
         (Q2 Bool)
         (R2 Bool)
         (S2 Bool)
         (T2 Bool)
         (U2 Bool)
         (V2 Int)
         (W2 Bool)
         (X2 Bool)
         (Y2 Int))
  (=> (and (str_invariant V
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
                             A
                             Y2
                             X2
                             W2
                             V2
                             U2
                             T2
                             S2
                             R2
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
                             G2
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
                             V1
                             U1
                             T1
                             S1
                             R1
                             Q1
                             P1
                             O1
                             N1
                             M1
                             L1
                             K1
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
                             Z
                             Y
                             X
                             W)
              (not (= C true)))
         false)
    ))
(assert (forall ((A Int)
         (B Int)
         (C Bool)
         (D Bool)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Bool)
         (S1 Bool)
         (T1 Bool)
         (U1 Bool)
         (V1 Bool)
         (W1 Bool)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Bool)
         (A2 Bool)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool)
         (K2 Bool)
         (L2 Bool)
         (M2 Bool)
         (N2 Bool)
         (O2 Bool)
         (P2 Bool)
         (Q2 Bool)
         (R2 Bool)
         (S2 Bool)
         (T2 Bool)
         (U2 Bool)
         (V2 Bool)
         (W2 Int)
         (X2 Bool)
         (Y2 Bool)
         (Z2 Int)
         (A3 Bool))
  (let ((a!1 (or (= T2 true)
                    (and (not (= V1 true))
                         (not (= U1 true))
                         (not (= P1 true))
                         (not (= K1 true)))))
           (a!2 (or (not (= (+ (- 1) W2) 0)) (not (= Q2 true))))
           (a!3 (or (not (= (+ (- 2) W2) 0))
                    (and (not (= P2 true)) (not (= O2 true)))))
           (a!4 (or (not (= (+ (- 3) W2) 0)) (not (= N2 true))))
           (a!5 (or (not (= (+ (- 4) W2) 0)) (not (= N2 true))))
           (a!6 (or (not (= (+ (- 5) W2) 0))
                    (and (not (= N2 true)) (not (= O2 true)) (not (= I2 true)))))
           (a!8 (and (not (= (+ (- 3) H) 0))
                     (not (= (+ (- 3) G) 0))
                     (not (= (+ (- 3) F) 0))
                     (not (= (+ (- 3) E) 0))))
           (a!9 (or (not (= V2 true))
                    (= R2 true)
                    (and (= (+ (- 1) W2) 0) (= Q2 true))
                    (and (= (+ (- 2) W2) 0) (or (= P2 true) (= O2 true)))
                    (and (= (+ (- 3) W2) 0) (= N2 true))
                    (and (= (+ (- 4) W2) 0) (= N2 true))
                    (and (= (+ (- 5) W2) 0)
                         (or (= N2 true) (= O2 true) (= I2 true)))))
           (a!10 (or (and (not (= T1 true))
                          (not (= S1 true))
                          (not (= R1 true))
                          (not (= Q1 true)))
                     (= P1 true)))
           (a!11 (or (>= (- 150 I) 0) (>= (+ (- 850) I) 0)))
           (a!12 (and (< (- 150 I) 0) (< (+ (- 850) I) 0)))
           (a!13 (or (and (not (= O1 true))
                          (not (= N1 true))
                          (not (= M1 true))
                          (not (= L1 true)))
                     (= K1 true)))
           (a!14 (or (not (= (+ (- 3) B) 0)) (not (= U true)))))
     (let ((a!7 (or (= V2 true) (and (not (= R2 true)) a!2 a!3 a!4 a!5 a!6))))
     (let ((a!15 (and (or (= V1 true) (= S 0))
                      a!1
                      (or (= (+ (- 3) H) 0)
                          (= (+ (- 3) G) 0)
                          (= (+ (- 3) F) 0)
                          (= (+ (- 3) E) 0)
                          (not (= R2 true)))
                      a!7
                      (or (= U1 true) (= R 0))
                      (or (not (= V1 true)) (not (= S 0)))
                      (or (not (= T2 true))
                          (= V1 true)
                          (= U1 true)
                          (= P1 true)
                          (= K1 true))
                      (or (= Q2 true) (= T 0))
                      (or a!8 (= R2 true))
                      a!9
                      (or (= T1 true)
                          (= S1 true)
                          (= R1 true)
                          (= Q1 true)
                          (not (= P1 true)))
                      (or (not (= U1 true)) (not (= R 0)))
                      (= J1 true)
                      (or (= P2 true) (= S 0))
                      (or (not (= Q2 true)) (not (= T 0)))
                      (= H2 true)
                      (or (= T1 true) (= Q 0))
                      a!10
                      (= I1 true)
                      (or (= O2 true) (= R 0))
                      (or (not (= P2 true)) (not (= S 0)))
                      (= G2 true)
                      (or (= S1 true) (= P 0))
                      (or (not (= T1 true)) (not (= Q 0)))
                      (= H1 true)
                      (or a!11 (not (= N2 true)))
                      (or (not (= O2 true)) (not (= R 0)))
                      (= F2 true)
                      (or (= R1 true) (= O 0))
                      (or (not (= S1 true)) (not (= P 0)))
                      (= G1 true)
                      (or (and (= M2 true) (= L2 true) (= K2 true) (= J2 true))
                          (not (= I2 true)))
                      (or a!12 (= N2 true))
                      (= E2 true)
                      (or (= Q1 true) (= N 0))
                      (or (not (= R1 true)) (not (= O 0)))
                      (= F1 true)
                      (or (= M2 true) (= Q 0))
                      (or (not (= M2 true))
                          (not (= L2 true))
                          (not (= K2 true))
                          (not (= J2 true))
                          (= I2 true))
                      (= D2 true)
                      (or (= O1 true)
                          (= N1 true)
                          (= M1 true)
                          (= L1 true)
                          (not (= K1 true)))
                      (or (not (= Q1 true)) (not (= N 0)))
                      (= E1 true)
                      (or (= L2 true) (= P 0))
                      (or (not (= M2 true)) (not (= Q 0)))
                      (= C2 true)
                      (or (= O1 true) (= M 0))
                      a!13
                      (= D1 true)
                      (or (= K2 true) (= O 0))
                      (or (not (= L2 true)) (not (= P 0)))
                      (= B2 true)
                      (or (= N1 true) (= L 0))
                      (or (not (= O1 true)) (not (= M 0)))
                      (= C1 true)
                      (or (= J2 true) (= N 0))
                      (or (not (= K2 true)) (not (= O 0)))
                      (= A2 true)
                      (or (= M1 true) (= K 0))
                      (or (not (= N1 true)) (not (= L 0)))
                      (= B1 true)
                      (or (not (= J2 true)) (not (= N 0)))
                      (= Z1 true)
                      (= (+ (- 1) Z2) 0)
                      (or (= L1 true) (= J 0))
                      (or (not (= M1 true)) (not (= K 0)))
                      (= A1 true)
                      (or (= U2 true) (= S 0))
                      (= Y1 true)
                      (= (- W2 A) 0)
                      (or (not (= L1 true)) (not (= J 0)))
                      (= Z true)
                      (or (not (= U2 true)) (not (= S 0)))
                      (= S2 true)
                      (= Y true)
                      (= X1 true)
                      (>= (+ (- 1) Z2) 0)
                      (= W1 true)
                      (or (= A3 true) (not (= D true)))
                      (or a!11 (not (= Y2 true)))
                      (>= (- 6 Z2) 0)
                      (or (not (= A3 true)) (= D true))
                      (or a!12 (= Y2 true))
                      (= X2 true)
                      (>= (+ (- 1) B) 0)
                      (= X true)
                      (>= (+ (- 1) Z2) 0)
                      (>= (- 6 B) 0)
                      (>= (- 6 Z2) 0)
                      (= (- B Z2) 0)
                      (= A3 a!14)
                      (= C true))))
       (=> a!15
           (str_invariant W
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
                          Z2
                          Y2
                          X2
                          W2
                          V2
                          U2
                          T2
                          S2
                          R2
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
                          G2
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
                          V1
                          U1
                          T1
                          S1
                          R1
                          Q1
                          P1
                          O1
                          N1
                          M1
                          L1
                          K1
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
                          Z
                          Y
                          X)))))
    ))
(assert (forall ((A Int)
         (B Bool)
         (C Bool)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Bool)
         (V Int)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Int)
         (H1 Bool)
         (I1 Bool)
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
         (U1 Bool)
         (V1 Bool)
         (W1 Bool)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Bool)
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
         (M2 Bool)
         (N2 Int)
         (O2 Bool)
         (P2 Bool)
         (Q2 Bool)
         (R2 Bool)
         (S2 Bool)
         (T2 Bool)
         (U2 Bool)
         (V2 Bool)
         (W2 Bool)
         (X2 Bool)
         (Y2 Bool)
         (Z2 Bool)
         (A3 Bool)
         (B3 Bool)
         (C3 Int)
         (D3 Bool)
         (E3 Bool)
         (F3 Int)
         (G3 Int)
         (H3 Bool)
         (I3 Bool)
         (J3 Bool)
         (K3 Int)
         (L3 Int)
         (M3 Int)
         (N3 Int)
         (O3 Bool)
         (P3 Bool)
         (Q3 Bool)
         (R3 Bool)
         (S3 Bool)
         (T3 Int)
         (U3 Bool)
         (V3 Bool)
         (W3 Bool)
         (X3 Bool)
         (Y3 Bool)
         (Z3 Bool)
         (A4 Bool)
         (B4 Bool)
         (C4 Bool)
         (D4 Bool)
         (E4 Int)
         (F4 Bool)
         (G4 Bool)
         (H4 Bool)
         (I4 Bool)
         (J4 Bool)
         (K4 Bool)
         (L4 Bool)
         (M4 Bool)
         (N4 Bool)
         (O4 Bool)
         (P4 Int)
         (Q4 Bool)
         (R4 Bool)
         (S4 Bool)
         (T4 Bool)
         (U4 Bool)
         (V4 Bool)
         (W4 Bool)
         (X4 Bool)
         (Y4 Bool)
         (Z4 Bool)
         (A5 Int)
         (B5 Bool)
         (C5 Bool)
         (D5 Bool)
         (E5 Bool)
         (F5 Bool)
         (G5 Bool)
         (H5 Bool)
         (I5 Bool)
         (J5 Bool)
         (K5 Bool)
         (L5 Int)
         (M5 Bool)
         (N5 Bool)
         (O5 Bool)
         (P5 Bool)
         (Q5 Bool)
         (R5 Bool)
         (S5 Int)
         (T5 Bool)
         (U5 Bool)
         (V5 Int)
         (W5 Int)
         (X5 Bool)
         (Y5 Bool)
         (Z5 Bool))
  (let ((a!1 (or (= Z2 true)
                    (and (not (= Y1 true))
                         (not (= X1 true))
                         (not (= S1 true))
                         (not (= M1 true)))))
           (a!2 (or (not (= (+ (- 1) C3) 0)) (not (= V2 true))))
           (a!3 (or (not (= (+ (- 2) C3) 0))
                    (and (not (= U2 true)) (not (= T2 true)))))
           (a!4 (or (not (= (+ (- 3) C3) 0)) (not (= S2 true))))
           (a!5 (or (not (= (+ (- 4) C3) 0)) (not (= S2 true))))
           (a!6 (or (not (= (+ (- 5) C3) 0))
                    (and (not (= S2 true)) (not (= T2 true)) (not (= M2 true)))))
           (a!8 (and (not (= (+ (- 3) N3) 0))
                     (not (= (+ (- 3) M3) 0))
                     (not (= (+ (- 3) L3) 0))
                     (not (= (+ (- 3) K3) 0))))
           (a!9 (or (not (= B3 true))
                    (= W2 true)
                    (and (= (+ (- 1) C3) 0) (= V2 true))
                    (and (= (+ (- 2) C3) 0) (or (= U2 true) (= T2 true)))
                    (and (= (+ (- 3) C3) 0) (= S2 true))
                    (and (= (+ (- 4) C3) 0) (= S2 true))
                    (and (= (+ (- 5) C3) 0)
                         (or (= S2 true) (= T2 true) (= M2 true)))))
           (a!10 (or (and (not (= W1 true))
                          (not (= V1 true))
                          (not (= U1 true))
                          (not (= T1 true)))
                     (= S1 true)))
           (a!11 (or (>= (- 150 T3) 0) (>= (+ (- 850) T3) 0)))
           (a!12 (and (< (- 150 T3) 0) (< (+ (- 850) T3) 0)))
           (a!13 (or (and (not (= Q1 true))
                          (not (= P1 true))
                          (not (= O1 true))
                          (not (= N1 true)))
                     (= M1 true)))
           (a!14 (ite (and (= (+ (- 2) V5) 0) (not (= J3 true)))
                      2
                      (ite (= A3 true) 5 (ite (= Z2 true) 4 3))))
           (a!16 (or (not (= (+ (- 3) G3) 0))
                     (not (= (+ (- 3) A) 0))
                     (not (= E3 true))))
           (a!17 (or (not (= (+ (- 3) G3) 0)) (not (= Y2 true)))))
     (let ((a!7 (or (= B3 true) (and (not (= W2 true)) a!2 a!3 a!4 a!5 a!6)))
           (a!15 (ite (or (= B3 true) (= Y2 true) (= (+ (- 6) V5) 0))
                      6
                      (ite (= (+ (- 1) V5) 0) (ite (= X5 true) 2 1) a!14))))
     (let ((a!18 (and (str_invariant X
                                     W
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
                                     J
                                     I
                                     H
                                     G
                                     F
                                     E
                                     D
                                     C
                                     B
                                     A
                                     V5
                                     U5
                                     T5
                                     S5
                                     R5
                                     Q5
                                     P5
                                     O5
                                     N5
                                     M5
                                     K5
                                     J5
                                     I5
                                     H5
                                     G5
                                     F5
                                     E5
                                     D5
                                     C5
                                     B5
                                     Z4
                                     Y4
                                     X4
                                     W4
                                     V4
                                     U4
                                     T4
                                     S4
                                     R4
                                     Q4
                                     O4
                                     N4
                                     M4
                                     L4
                                     K4
                                     J4
                                     I4
                                     H4
                                     G4
                                     F4
                                     D4
                                     C4
                                     B4
                                     A4
                                     Z3
                                     Y3
                                     X3
                                     W3
                                     V3
                                     U3
                                     S3
                                     R3
                                     Q3
                                     P3
                                     O3)
                      (or (= Y1 true) (= C2 0))
                      a!1
                      (or (= (+ (- 3) N3) 0)
                          (= (+ (- 3) M3) 0)
                          (= (+ (- 3) L3) 0)
                          (= (+ (- 3) K3) 0)
                          (not (= W2 true)))
                      a!7
                      (or (= X1 true) (= R1 0))
                      (or (not (= Y1 true)) (not (= C2 0)))
                      (or (not (= Z2 true))
                          (= Y1 true)
                          (= X1 true)
                          (= S1 true)
                          (= M1 true))
                      (or (= V2 true) (= N2 0))
                      (or a!8 (= W2 true))
                      a!9
                      (or (= W1 true)
                          (= V1 true)
                          (= U1 true)
                          (= T1 true)
                          (not (= S1 true)))
                      (or (not (= X1 true)) (not (= R1 0)))
                      (not (= L1 true))
                      (or (= U2 true) (= C2 0))
                      (or (not (= V2 true)) (not (= N2 0)))
                      (not (= L2 true))
                      (or (= W1 true) (= G1 0))
                      a!10
                      (not (= K1 true))
                      (or (= T2 true) (= R1 0))
                      (or (not (= U2 true)) (not (= C2 0)))
                      (not (= K2 true))
                      (or (= V1 true) (= V 0))
                      (or (not (= W1 true)) (not (= G1 0)))
                      (not (= J1 true))
                      (or a!11 (not (= S2 true)))
                      (or (not (= T2 true)) (not (= R1 0)))
                      (not (= J2 true))
                      (or (= U1 true) (= K 0))
                      (or (not (= V1 true)) (not (= V 0)))
                      (not (= I1 true))
                      (or (and (= R2 true) (= Q2 true) (= P2 true) (= O2 true))
                          (not (= M2 true)))
                      (or a!12 (= S2 true))
                      (not (= I2 true))
                      (or (= T1 true) (= W5 0))
                      (or (not (= U1 true)) (not (= K 0)))
                      (not (= H1 true))
                      (or (= R2 true) (= G1 0))
                      (or (not (= R2 true))
                          (not (= Q2 true))
                          (not (= P2 true))
                          (not (= O2 true))
                          (= M2 true))
                      (not (= H2 true))
                      (or (= Q1 true)
                          (= P1 true)
                          (= O1 true)
                          (= N1 true)
                          (not (= M1 true)))
                      (or (not (= T1 true)) (not (= W5 0)))
                      (not (= F1 true))
                      (or (= Q2 true) (= V 0))
                      (or (not (= R2 true)) (not (= G1 0)))
                      (not (= G2 true))
                      (or (= Q1 true) (= L5 0))
                      a!13
                      (not (= E1 true))
                      (or (= P2 true) (= K 0))
                      (or (not (= Q2 true)) (not (= V 0)))
                      (not (= F2 true))
                      (or (= P1 true) (= A5 0))
                      (or (not (= Q1 true)) (not (= L5 0)))
                      (not (= D1 true))
                      (or (= O2 true) (= W5 0))
                      (or (not (= P2 true)) (not (= K 0)))
                      (not (= E2 true))
                      (or (= O1 true) (= P4 0))
                      (or (not (= P1 true)) (not (= A5 0)))
                      (not (= C1 true))
                      (or (not (= O2 true)) (not (= W5 0)))
                      (not (= D2 true))
                      (= (- C3 V5) 0)
                      (or (= N1 true) (= E4 0))
                      (or (not (= O1 true)) (not (= P4 0)))
                      (not (= B1 true))
                      (or (= A3 true) (= C2 0))
                      (not (= B2 true))
                      (= (- F3 a!15) 0)
                      (or (not (= N1 true)) (not (= E4 0)))
                      (not (= A1 true))
                      (or (not (= A3 true)) (not (= C2 0)))
                      (not (= X2 true))
                      (not (= Z true))
                      (not (= A2 true))
                      (>= (+ (- 1) F3) 0)
                      (not (= Z1 true))
                      (or (and (= Z5 true) (= Y5 true)) (not (= I3 true)))
                      (or a!11 (not (= E3 true)))
                      (>= (- 6 F3) 0)
                      (or (not (= Z5 true)) (not (= Y5 true)) (= I3 true))
                      (or a!12 (= E3 true))
                      (not (= D3 true))
                      (>= (+ (- 1) G3) 0)
                      (not (= Y true))
                      (>= (+ (- 1) F3) 0)
                      (>= (- 6 G3) 0)
                      (>= (- 6 F3) 0)
                      (= (- G3 F3) 0)
                      (= Z5 a!16)
                      (= Y5 a!17)
                      (not (= H3 true)))))
       (=> a!18
           (str_invariant X5
                          J3
                          Y2
                          N2
                          C2
                          R1
                          G1
                          V
                          K
                          W5
                          L5
                          A5
                          P4
                          E4
                          T3
                          N3
                          M3
                          L3
                          K3
                          I3
                          H3
                          G3
                          F3
                          E3
                          D3
                          C3
                          B3
                          A3
                          Z2
                          X2
                          W2
                          V2
                          U2
                          T2
                          S2
                          R2
                          Q2
                          P2
                          O2
                          M2
                          L2
                          K2
                          J2
                          I2
                          H2
                          G2
                          F2
                          E2
                          D2
                          B2
                          A2
                          Z1
                          Y1
                          X1
                          W1
                          V1
                          U1
                          T1
                          S1
                          Q1
                          P1
                          O1
                          N1
                          M1
                          L1
                          K1
                          J1
                          I1
                          H1
                          F1
                          E1
                          D1
                          C1
                          B1
                          A1
                          Z
                          Y)))))
    ))


(check-sat)
(exit)
