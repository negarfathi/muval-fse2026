(set-logic HORN)

(declare-fun str_invariant
             (Bool
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
              Bool)
             Bool)
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
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
         (H1 Int)
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
         (Z1 Bool))
  (=> (and (str_invariant U1
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
                             A
                             Z1
                             Y1
                             X1
                             W1
                             V1)
              (not (= G1 true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
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
         (I1 Int)
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
         (A2 Bool))
  (let ((a!1 (and (and (not (= L1 true)) (not (= K1 true))) (= J1 true)))
           (a!3 (and (= H true)
                     (= G true)
                     (or (not (= J1 true)) (and (= J1 true) (= E true)))))
           (a!4 (and (or (not (= L1 true)) (= K1 true) (= J1 true))
                     (or (= L1 true) (not (= K1 true)) (= J1 true))
                     (or (or (= L1 true) (= K1 true)) (not (= J1 true)))))
           (a!5 (and (= J1 true) (or (not (= J1 true)) (not (= E true)))))
           (a!6 (or (and (= E1 true)
                         (not (= S1 true))
                         (= Q1 true)
                         (= P1 true)
                         (= O1 true)
                         (= N true)
                         (>= (+ (- 35) I1) 0)
                         (>= (- 200 I1) 0)
                         (= M true)
                         (not (= R1 true)))
                    (not (= T true))))
           (a!7 (and (and (not (= L1 true)) (not (= K1 true)))
                     (not (= J1 true))))
           (a!8 (and (or (not (= F true)) (not (= S true))) (= F true)))
           (a!9 (or (and (= C1 true) (or (= B1 true) (= A1 true) (= Z true)))
                    (not (= C1 true))
                    (not (= H1 true))))
           (a!10 (or (not (= C1 true))
                     (and (not (= B1 true)) (not (= A1 true)) (not (= Z true))))))
     (let ((a!2 (or (and (= L1 true) (not (= K1 true)) (not (= J1 true)))
                    (and (not (= L1 true)) (= K1 true) (not (= J1 true)))
                    a!1
                    (not (= G true)))))
     (let ((a!11 (and a!2
                      (or a!3 (not (= R true)))
                      (or (= B true) (or (= L1 true) (= K1 true)) (= J1 true))
                      (= H true)
                      (or a!4 (= G true))
                      (or (not (= H true)) (not (= G true)) a!5 (= R true))
                      a!6
                      (or (= A true) (not (= S true)))
                      (or (and (= F true) (= S true))
                          (not (= F true))
                          (not (= E true)))
                      (or (not (= B true)) a!7)
                      (= D true)
                      (not (= M true))
                      (not (= N true))
                      (or (not (= E1 true))
                          (= S1 true)
                          (not (= Q1 true))
                          (not (= P1 true))
                          (not (= O1 true))
                          (not (= N true))
                          (< (+ (- 35) I1) 0)
                          (< (- 200 I1) 0)
                          (not (= M true))
                          (= R1 true)
                          (= T true))
                      (not (= W true))
                      (or (not (= A true)) (= S true))
                      (or a!8 (= E true))
                      (= C true)
                      (not (= J true))
                      (= L true)
                      (not (= V true))
                      (= Q true)
                      a!9
                      (not (= F true))
                      (= A2 true)
                      (= K true)
                      (= P true)
                      (not (= E1 true))
                      (or (= F1 true) (not (= D1 true)))
                      (or (and a!10 (= C1 true)) (= H1 true))
                      (= Z1 true)
                      (= O true)
                      (not (= U E1))
                      (not (= C1 true))
                      (or (not (= F1 true)) (= D1 true))
                      (= I true)
                      (not (= D1 true))
                      (= Y true)
                      (not (= B1 true))
                      (= X true)
                      (not (= A1 true))
                      (= Y1 true)
                      (not (= Z true))
                      (= X1 true)
                      (= W1 true)
                      (= G1 true))))
       (=> a!11
           (str_invariant V1
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
                          A2
                          Z1
                          Y1
                          X1
                          W1)))))
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
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
         (K1 Int)
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
         (W2 Bool)
         (X2 Bool)
         (Y2 Bool)
         (Z2 Bool)
         (A3 Bool)
         (B3 Bool)
         (C3 Bool)
         (D3 Bool)
         (E3 Bool)
         (F3 Bool)
         (G3 Bool)
         (H3 Bool)
         (I3 Bool)
         (J3 Bool)
         (K3 Bool)
         (L3 Bool)
         (M3 Bool)
         (N3 Bool)
         (O3 Bool)
         (P3 Int)
         (Q3 Bool)
         (R3 Bool)
         (S3 Bool)
         (T3 Bool)
         (U3 Bool)
         (V3 Bool)
         (W3 Bool)
         (X3 Bool)
         (Y3 Bool)
         (Z3 Bool))
  (let ((a!1 (and (and (not (= S3 true)) (not (= R3 true))) (= Q3 true)))
           (a!3 (and (= L2 true)
                     (= K2 true)
                     (or (not (= Q3 true)) (and (= Q3 true) (= I2 true)))))
           (a!4 (and (or (not (= S3 true)) (= R3 true) (= Q3 true))
                     (or (= S3 true) (not (= R3 true)) (= Q3 true))
                     (or (or (= S3 true) (= R3 true)) (not (= Q3 true)))))
           (a!5 (and (= Q3 true) (or (not (= Q3 true)) (not (= I2 true)))))
           (a!6 (or (and (= L3 true)
                         (not (= N2 true))
                         (= R1 true)
                         (= G1 true)
                         (= V true)
                         (= S2 true)
                         (>= (+ (- 35) P3) 0)
                         (>= (- 200 P3) 0)
                         (= R2 true)
                         (not (= C2 true)))
                    (not (= Z2 true))))
           (a!7 (or (and (= Z3 true) (not (= Y1 true)))
                    (and (not (= Z3 true)) (= Y1 true))
                    (not (= C3 true))))
           (a!8 (and (or (not (= W2 true)) (not (= Z2 true)))
                     (= Z2 true)
                     (= E1 true)))
           (a!9 (or (and (= J2 true) (= X2 true))
                    (and (not (= J2 true)) (or (= X2 true) (= D true)))
                    (not (= I2 true))))
           (a!10 (and (and (not (= S3 true)) (not (= R3 true)))
                      (not (= Q3 true))))
           (a!11 (and (or (not (= Z3 true)) (= Y1 true))
                      (or (= Z3 true) (not (= Y1 true)))))
           (a!12 (and (or (not (= W2 true)) (not (= Z2 true)))
                      (or (and (= W2 true) (= Z2 true))
                          (not (= Z2 true))
                          (not (= E1 true)))))
           (a!13 (or (and (= L3 true) (not (= F1 true))) (not (= J2 true))))
           (a!14 (or (= J2 true) (and (not (= X2 true)) (not (= D true)))))
           (a!16 (or (not (= B3 true)) (and (= Y2 true) (not (= W1 true)))))
           (a!17 (and (or (not (= U true)) (not (= B3 true))) (= F1 true)))
           (a!19 (and (or (not (= U true)) (not (= B3 true)))
                      (or (and (= U true) (= B3 true)) (not (= F1 true)))))
           (a!20 (or (and (= M3 true) (not (= H1 true))) (not (= I3 true))))
           (a!21 (or (and (= I3 true) (or (= H3 true) (= G3 true) (= F3 true)))
                     (not (= I3 true))
                     (not (= O3 true))))
           (a!22 (or (not (= I3 true))
                     (and (not (= H3 true)) (not (= G3 true)) (not (= F3 true)))))
           (a!23 (or (and (= S3 true) (not (= N1 true))) (not (= H3 true))))
           (a!24 (or (and (= R3 true) (not (= M1 true))) (not (= G3 true))))
           (a!25 (or (and (= Q3 true) (not (= L1 true))) (not (= F3 true)))))
     (let ((a!2 (or (and (= S3 true) (not (= R3 true)) (not (= Q3 true)))
                    (and (not (= S3 true)) (= R3 true) (not (= Q3 true)))
                    a!1
                    (not (= K2 true))))
           (a!15 (and (or (not (= J2 true)) (not (= X2 true))) a!14))
           (a!18 (and (not (= C3 true))
                      (not (= J3 true))
                      (or (not (= F1 true)) (not (= B3 true)))
                      (or (and (= U true) (= B3 true)) a!17))))
     (let ((a!26 (and (str_invariant Y1
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
                                     Y
                                     X
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
                                     X3
                                     W3
                                     V3
                                     U3
                                     T3)
                      (or (= L2 true) (not (= A true)))
                      a!2
                      (or a!3 (not (= W2 true)))
                      (or (= F2 true) (or (= S3 true) (= R3 true)) (= Q3 true))
                      (or (not (= L2 true)) (= A true))
                      (or a!4 (= K2 true))
                      (or (not (= L2 true)) (not (= K2 true)) a!5 (= W2 true))
                      (or (= R2 true) (not (= I true)) (not (= Y3 true)))
                      (or (= S2 true) (not (= P1 true)) (not (= K true)))
                      a!6
                      a!7
                      (or (and (= W2 true) (= Z2 true)) a!8 (not (= K3 true)))
                      a!9
                      (or (not (= F2 true)) a!10)
                      (not (= H2 true))
                      (or (= O2 true) (not (= O1 true)) (not (= Y3 true)))
                      (or (not (= R2 true)) (and (= I true) (= Y3 true)))
                      (or (not (= S2 true)) (and (= P1 true) (= K true)))
                      (or (not (= L3 true))
                          (= N2 true)
                          (not (= R1 true))
                          (not (= G1 true))
                          (not (= V true))
                          (not (= S2 true))
                          (< (+ (- 35) P3) 0)
                          (< (- 200 P3) 0)
                          (not (= R2 true))
                          (= C2 true)
                          (= Z2 true))
                      (or (= B3 true) (not (= Y2 true)) (= W1 true))
                      (or a!11 (= C3 true))
                      (or a!12 (= K3 true))
                      a!13
                      (or a!15 (= I2 true))
                      (not (= G2 true))
                      (or (not (= O2 true)) (and (= O1 true) (= Y3 true)))
                      (not (= Q2 true))
                      a!16
                      (not (= V2 true))
                      (or a!18 (not (= L3 true)))
                      (or (= M3 true) (not (= K3 true)))
                      (or (not (= L3 true)) (= F1 true) (= J2 true))
                      (not (= E2 true))
                      (not (= P2 true))
                      (not (= U2 true))
                      (or (= C3 true)
                          (= J3 true)
                          (and (= F1 true) (= B3 true))
                          a!19
                          (= L3 true))
                      a!20
                      a!21
                      (or (not (= M3 true)) (= K3 true))
                      (not (= D2 true))
                      (not (= T2 true))
                      (or (= X2 true) (not (= E1 true)))
                      (not (= A3 L3))
                      (or (not (= M3 true)) (= H1 true) (= I3 true))
                      (or (and a!22 (= I3 true)) (= O3 true))
                      a!23
                      (not (= M2 true))
                      (or (not (= X2 true)) (= E1 true))
                      (not (= E3 true))
                      a!24
                      (or (not (= S3 true)) (= N1 true) (= H3 true))
                      (not (= D3 true))
                      a!25
                      (or (not (= R3 true)) (= M1 true) (= G3 true))
                      (not (= B2 true))
                      (or (not (= Q3 true)) (= L1 true) (= F3 true))
                      (not (= A2 true))
                      (not (= Z1 true))
                      (not (= N3 true)))))
       (=> a!26
           (str_invariant Z3
                          J3
                          Y2
                          N2
                          C2
                          R1
                          G1
                          V
                          K
                          Y3
                          S3
                          R3
                          Q3
                          P3
                          O3
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
                          Z1)))))
    ))


(check-sat)
(exit)
