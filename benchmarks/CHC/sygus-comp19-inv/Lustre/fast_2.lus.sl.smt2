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
         (N2 Bool))
  (=> (and (str_invariant G1
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
                             H1)
              (not (= S true)))
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
         (U Int)
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
         (Q2 Bool))
  (let ((a!1 (and (or (not (= X true)) (= W true) (= V true))
                     (or (= X true) (not (= W true)) (= V true))
                     (or (or (= X true) (= W true)) (not (= V true)))))
           (a!2 (and (= C2 true)
                     (= B2 true)
                     (or (not (= V true)) (and (= V true) (= Z1 true)))))
           (a!3 (and (and (not (= X true)) (not (= W true))) (= V true)))
           (a!5 (and (= V true) (or (not (= V true)) (not (= Z1 true)))))
           (a!6 (and (and (not (= X true)) (not (= W true))) (not (= V true))))
           (a!7 (or (not (= O2 true))
                    (and (= H true)
                         (not (= E1 true))
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= I2 true)
                         (>= (+ (- 35) U) 0)
                         (>= (- 200 U) 0)
                         (= H2 true)
                         (not (= D1 true)))))
           (a!8 (and (or (not (= A2 true)) (not (= N2 true))) (= A2 true)))
           (a!9 (or (and (not (= L true)) (not (= Q true))) (= L true)))
           (a!10 (or (and (= J true) (not (= Q true))) (not (= J true))))
           (a!11 (and (or (not (= J true)) (= Q true)) (= J true)))
           (a!13 (or (and (= R true)
                          (not (= E1 true))
                          (= C1 true)
                          (= B1 true)
                          (= A1 true)
                          (= P1 true)
                          (>= (+ (- 35) U) 0)
                          (>= (- 200 U) 0)
                          (= O1 true)
                          (not (= D1 true)))
                     (not (= L true))))
           (a!14 (= Q2
                    (ite (= P true) (or (= O true) (= N true) (= M true)) true)))
           (a!15 (ite (= K true)
                      (and (not (= J true)) (not (= G1 true)) (= I true))
                      true)))
     (let ((a!4 (or (not (= B2 true))
                    (and (= X true) (not (= W true)) (not (= V true)))
                    (and (not (= X true)) (= W true) (not (= V true)))
                    a!3))
           (a!12 (or (not (= Q2 true))
                     (and (or (= L true) (= Q true)) (not (= L true)))
                     (not (= P2 true))
                     a!11
                     (= T true))))
     (let ((a!16 (and (or (= B2 true) a!1)
                      (or a!2 (not (= M2 true)))
                      (or (= W1 true) (or (= X true) (= W true)) (= V true))
                      (= C2 true)
                      a!4
                      (or (not (= C2 true)) (not (= B2 true)) a!5 (= M2 true))
                      (or (= O2 true)
                          (not (= H true))
                          (= E1 true)
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= I2 true))
                          (< (+ (- 35) U) 0)
                          (< (- 200 U) 0)
                          (not (= H2 true))
                          (= D1 true))
                      (or (= A true) (not (= N2 true)))
                      (or (and (= A2 true) (= N2 true))
                          (not (= A2 true))
                          (not (= Z1 true)))
                      (or (not (= W1 true)) a!6)
                      (= Y1 true)
                      (not (= H2 true))
                      (not (= I2 true))
                      a!7
                      (not (= D true))
                      (or (not (= A true)) (= N2 true))
                      (or a!8 (= Z1 true))
                      (= X1 true)
                      (not (= E2 true))
                      (= G2 true)
                      (not (= C true))
                      (= L2 true)
                      (not (= A2 true))
                      (= V1 true)
                      (= F2 true)
                      (= K2 true)
                      (not (= H true))
                      (or (and (= Q2 true) a!9 (= P2 true) a!10)
                          (not (= T true)))
                      (= U1 true)
                      (= J2 true)
                      (not (= B H))
                      (not (= P true))
                      a!12
                      (= D2 true)
                      (not (= G true))
                      (= F true)
                      a!13
                      (not (= O true))
                      (= E true)
                      (not (= O1 true))
                      (not (= P1 true))
                      (or (not (= R true))
                          (= E1 true)
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= P1 true))
                          (< (+ (- 35) U) 0)
                          (< (- 200 U) 0)
                          (not (= O1 true))
                          (= D1 true)
                          (= L true))
                      (not (= N true))
                      (= T1 true)
                      (not (= L1 true))
                      (= N1 true)
                      (not (= M true))
                      (= S1 true)
                      (= M1 true)
                      (= R1 true)
                      (not (= K true))
                      (= Q1 true)
                      (not (= J true))
                      (= K1 true)
                      (or (= R true) (not (= H true)))
                      (not (= I true))
                      (= J1 true)
                      (or (= Q true) (not (= G true)))
                      (or (not (= R true)) (= H true))
                      (= I1 true)
                      (or (not (= Q true)) (= G true))
                      a!14
                      (= P2 a!15)
                      (= S true))))
       (=> a!16
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
                          I1)))))
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
         (U Int)
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
         (Z3 Bool)
         (A4 Bool)
         (B4 Bool)
         (C4 Bool)
         (D4 Bool)
         (E4 Bool)
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
         (P4 Bool)
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
         (A5 Bool)
         (B5 Bool)
         (C5 Bool)
         (D5 Bool))
  (let ((a!1 (and (and (not (= P4 true)) (not (= E4 true))) (= T3 true)))
           (a!3 (and (= G2 true)
                     (= F2 true)
                     (or (not (= T3 true)) (and (= T3 true) (= D2 true)))))
           (a!4 (and (or (not (= P4 true)) (= E4 true) (= T3 true))
                     (or (= P4 true) (not (= E4 true)) (= T3 true))
                     (or (or (= P4 true) (= E4 true)) (not (= T3 true)))))
           (a!5 (and (= T3 true) (or (not (= T3 true)) (not (= D2 true)))))
           (a!6 (or (= M2 true) (or (not (= A1 true)) (not (= K true)))))
           (a!7 (or (and (= B3 true)
                         (not (= N2 true))
                         (= R1 true)
                         (= G1 true)
                         (= V true)
                         (= M2 true)
                         (>= (+ (- 35) P3) 0)
                         (>= (- 200 P3) 0)
                         (= L2 true)
                         (not (= C2 true)))
                    (not (= T2 true))))
           (a!8 (or (and (= B5 true) (not (= J1 true)))
                    (and (not (= B5 true)) (= J1 true))))
           (a!9 (and (or (not (= R2 true)) (not (= T2 true)))
                     (= T2 true)
                     (= F true)))
           (a!10 (or (and (= E2 true) (= S2 true))
                     (and (not (= E2 true)) (or (= S2 true) (= J4 true)))
                     (not (= D2 true))))
           (a!11 (and (and (not (= P4 true)) (not (= E4 true)))
                      (not (= T3 true))))
           (a!12 (or (= I2 true) (or (not (= Z true)) (not (= A5 true)))))
           (a!13 (or (and (= Y2 true) (not (= H1 true))) (not (= V2 true))))
           (a!14 (and (or (not (= B5 true)) (= J1 true))
                      (or (= B5 true) (not (= J1 true)))))
           (a!15 (and (or (not (= R2 true)) (not (= T2 true)))
                      (or (and (= R2 true) (= T2 true))
                          (not (= T2 true))
                          (not (= F true)))))
           (a!16 (or (and (= B3 true) (not (= G true))) (not (= E2 true))))
           (a!17 (or (= E2 true) (and (not (= S2 true)) (not (= J4 true)))))
           (a!19 (or (or (not (= Y2 true)) (= H1 true)) (= V2 true)))
           (a!20 (and (or (not (= A true)) (not (= V2 true))) (= G true)))
           (a!22 (and (or (not (= A true)) (not (= V2 true)))
                      (or (and (= A true) (= V2 true)) (not (= G true)))))
           (a!23 (or (and (= L3 true) (not (= Q true))) (not (= K3 true))))
           (a!24 (or (and (not (= F3 true)) (not (= L3 true))) (= F3 true)))
           (a!25 (or (and (= D3 true) (not (= L3 true))) (not (= D3 true))))
           (a!26 (and (or (not (= D3 true)) (= L3 true)) (= D3 true)))
           (a!28 (or (and (= P4 true) (not (= Y true))) (not (= I3 true))))
           (a!29 (or (= S1 true) (or (not (= A1 true)) (not (= K true)))))
           (a!30 (or (and (= M3 true)
                          (not (= N2 true))
                          (= R1 true)
                          (= G1 true)
                          (= V true)
                          (= S1 true)
                          (>= (+ (- 35) P3) 0)
                          (>= (- 200 P3) 0)
                          (= Q1 true)
                          (not (= C2 true)))
                     (not (= F3 true))))
           (a!31 (or (and (= E4 true) (not (= X true))) (not (= H3 true))))
           (a!32 (or (= N1 true) (or (not (= Z true)) (not (= A5 true)))))
           (a!33 (or (and (= T3 true) (not (= W true))) (not (= G3 true))))
           (a!34 (or (and (= M3 true) (not (= R true))) (not (= E3 true))))
           (a!35 (or (= C3 true) (or (not (= Y2 true)) (= H1 true))))
           (a!36 (or (not (= C3 true)) (and (= Y2 true) (not (= H1 true)))))
           (a!37 (= D5
                    (ite (= K3 true)
                         (or (= I3 true) (= H3 true) (= G3 true))
                         true)))
           (a!38 (ite (= E3 true)
                      (and (not (= D3 true)) (not (= J3 true)) (= C3 true))
                      true)))
     (let ((a!2 (or (and (= P4 true) (not (= E4 true)) (not (= T3 true)))
                    (and (not (= P4 true)) (= E4 true) (not (= T3 true)))
                    a!1
                    (not (= F2 true))))
           (a!18 (and (or (not (= E2 true)) (not (= S2 true))) a!17))
           (a!21 (and (not (= W2 true))
                      (not (= J3 true))
                      (or (not (= G true)) (not (= V2 true)))
                      (or (and (= A true) (= V2 true)) a!20)))
           (a!27 (or (not (= D5 true))
                     (and (or (= F3 true) (= L3 true)) (not (= F3 true)))
                     (not (= C5 true))
                     a!26
                     (= O3 true))))
     (let ((a!39 (and (str_invariant J1
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
                                     Q3)
                      (or (= G4 true) (not (= G2 true)))
                      a!2
                      (or a!3 (not (= R2 true)))
                      (or (= Z1 true) (or (= P4 true) (= E4 true)) (= T3 true))
                      (or (not (= G4 true)) (= G2 true))
                      (or a!4 (= F2 true))
                      (or (not (= G2 true)) (not (= F2 true)) a!5 (= R2 true))
                      (or (and (= O4 true) (= A5 true)) (not (= L2 true)))
                      a!6
                      a!7
                      (or a!8 (not (= W2 true)))
                      (or (and (= R2 true) (= T2 true)) a!9 (not (= A3 true)))
                      a!10
                      (or (not (= Z1 true)) a!11)
                      (not (= B2 true))
                      a!12
                      (or (not (= O4 true)) (not (= A5 true)) (= L2 true))
                      (or (not (= M2 true)) (and (= A1 true) (= K true)))
                      (or (not (= B3 true))
                          (= N2 true)
                          (not (= R1 true))
                          (not (= G1 true))
                          (not (= V true))
                          (not (= M2 true))
                          (< (+ (- 35) P3) 0)
                          (< (- 200 P3) 0)
                          (not (= L2 true))
                          (= C2 true)
                          (= T2 true))
                      a!13
                      (or a!14 (= W2 true))
                      (or a!15 (= A3 true))
                      a!16
                      (or a!18 (= D2 true))
                      (not (= A2 true))
                      (or (not (= I2 true)) (and (= Z true) (= A5 true)))
                      (not (= K2 true))
                      a!19
                      (not (= Q2 true))
                      (or a!21 (not (= B3 true)))
                      (or (not (= B3 true)) (= G true) (= E2 true))
                      (not (= Y1 true))
                      (not (= J2 true))
                      (not (= P2 true))
                      (or (= W2 true)
                          (= J3 true)
                          (and (= G true) (= V2 true))
                          a!22
                          (= B3 true))
                      a!23
                      (or (and (= D5 true) a!24 (= C5 true) a!25)
                          (not (= O3 true)))
                      (not (= X1 true))
                      (not (= O2 true))
                      (or (= S2 true) (not (= F true)))
                      (not (= U2 B3))
                      (or (not (= L3 true)) (= Q true) (= K3 true))
                      a!27
                      a!28
                      (not (= H2 true))
                      (or (not (= S2 true)) (= F true))
                      (not (= Z2 true))
                      (or (and (= U3 true) (= A5 true)) (not (= Q1 true)))
                      a!29
                      a!30
                      a!31
                      (or (not (= P4 true)) (= Y true) (= I3 true))
                      (not (= X2 true))
                      a!32
                      (or (not (= U3 true)) (not (= A5 true)) (= Q1 true))
                      (or (not (= S1 true)) (and (= A1 true) (= K true)))
                      (or (not (= M3 true))
                          (= N2 true)
                          (not (= R1 true))
                          (not (= G1 true))
                          (not (= V true))
                          (not (= S1 true))
                          (< (+ (- 35) P3) 0)
                          (< (- 200 P3) 0)
                          (not (= Q1 true))
                          (= C2 true)
                          (= F3 true))
                      a!33
                      (or (not (= E4 true)) (= X true) (= H3 true))
                      (not (= W1 true))
                      (or (not (= N1 true)) (and (= Z true) (= A5 true)))
                      (not (= P1 true))
                      (or (not (= T3 true)) (= W true) (= G3 true))
                      (not (= V1 true))
                      a!34
                      (not (= O1 true))
                      (not (= U1 true))
                      (or a!8 (not (= D3 true)))
                      (or (not (= M3 true)) (= R true) (= E3 true))
                      (not (= T1 true))
                      a!35
                      (or a!14 (= D3 true))
                      (not (= M1 true))
                      (or (= M3 true) (not (= B3 true)))
                      a!36
                      (not (= L1 true))
                      (or (= L3 true) (not (= A3 true)))
                      (or (not (= M3 true)) (= B3 true))
                      (not (= K1 true))
                      (or (not (= L3 true)) (= A3 true))
                      a!37
                      (= C5 a!38)
                      (not (= N3 true)))))
       (=> a!39
           (str_invariant B5
                          J3
                          Y2
                          N2
                          C2
                          R1
                          G1
                          V
                          K
                          A5
                          P4
                          E4
                          T3
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
                          K1)))))
    ))


(check-sat)
(exit)
