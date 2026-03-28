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
         (Y1 Bool))
  (=> (and (str_invariant V1
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
                             A
                             Y1
                             X1
                             W1)
              (not (= R1 true)))
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
         (A2 Bool))
  (let ((a!1 (or (= K true)
                    (and (not (= K true)) (not (= E true)) (= D true))
                    (not (= C true))))
           (a!2 (and (or (not (= S1 true)) (= T1 true)) (= G true)))
           (a!3 (and (not (= K true))
                     (or (= K true) (= E true) (not (= D true)))))
           (a!4 (or (and (= V1 true) (not (= U1 true))) (not (= L true))))
           (a!5 (or (and (= S1 true) (not (= T1 true)))
                    (not (= G true))
                    (= M1 true)))
           (a!6 (or (or (not (= V1 true)) (= U1 true)) (= L true)))
           (a!7 (or (= P true)
                    (and (not (= P true)) (not (= S1 true)) (= Q true))
                    (not (= O true))))
           (a!8 (or (and (= V1 true) (not (= U1 true))) (not (= P true))))
           (a!9 (or (and (= L1 true) (not (= M1 true))) (= R1 true)))
           (a!10 (and (not (= P true))
                      (or (= P true) (= S1 true) (not (= Q true)))))
           (a!11 (or (not (= I1 true)) (and (not (= S1 true)) (= U1 true))))
           (a!12 (or (or (not (= V1 true)) (= U1 true)) (= P true)))
           (a!13 (and (or (not (= E1 true)) (= O1 true))
                      (or (not (= G1 true)) (= P1 true))
                      (or (not (= C1 true)) (= B1 true))
                      (not (= S1 true))
                      (not (= T1 true))
                      (= Z1 true)
                      (or (not (= U1 true)) (= T1 true))
                      (or (not (= Y true)) (not (= P1 true)))))
           (a!14 (or (and (= C1 true) (= Z true))
                     (and (not (= C1 true)) (not (= Z true))))))
     (let ((a!15 (and (or (= A2 true) (not (= L1 true)))
                      (or (not (= A2 true)) (= L1 true))
                      (not (= F1 S1))
                      (not (= D1 T1))
                      (not (= G1 true))
                      (not (= A1 U1))
                      a!1
                      (or (= G true) (and (= C true) (= I true)))
                      (or a!2 (not (= M1 true)))
                      (not (= E1 true))
                      (= X true)
                      (or a!3 (= C true))
                      (or (not (= G true)) (not (= C true)) (not (= I true)))
                      a!4
                      a!5
                      (not (= C1 true))
                      (= W true)
                      (not (= E true))
                      (= B true)
                      a!6
                      (or (and (= O true) (= T1 true)) (not (= K1 true)))
                      (not (= B1 true))
                      (= V true)
                      (= A true)
                      (not (= D true))
                      (not (= J T1))
                      (or (and (= U1 true) (= S1 true)) (not (= J1 true)))
                      (or (not (= O true)) (not (= T1 true)) (= K1 true))
                      (not (= Z true))
                      (= U true)
                      (or (not (= L1 true)) (= M1 true) (not (= R1 true)))
                      (not (= K true))
                      (= F true)
                      a!7
                      (or (= I1 true) (= S1 true) (not (= U1 true)))
                      (or (not (= U1 true)) (not (= S1 true)) (= J1 true))
                      a!8
                      (not (= Y true))
                      (= T true)
                      (or (= N1 true) (not (= I1 true)))
                      a!9
                      (not (= I true))
                      (= Y1 true)
                      (or a!10 (= O true))
                      a!11
                      a!12
                      (= S true)
                      (or (not (= N1 true)) (= I1 true))
                      (not (= H true))
                      (= X1 true)
                      (= N true)
                      (not (= Q true))
                      (= H1 true)
                      (or (= O1 true) (not (= J1 true)))
                      (= W1 true)
                      (= R true)
                      (or (= P1 true) (not (= K1 true)))
                      (or (not (= O1 true)) (= J1 true))
                      (= M true)
                      (or (not (= P1 true)) (= K1 true))
                      (= A2 a!13)
                      (= Z1 a!14)
                      (= Q1 true))))
       (=> a!15
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
                          A
                          Y1
                          X1
                          W1))))
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
         (P3 Bool)
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
  (let ((a!1 (or (= N3 true) (and (not (= N2 true)) (= W1 true))))
           (a!2 (or (= P2 true)
                    (and (not (= P2 true)) (not (= I2 true)) (= C true))
                    (not (= G2 true))))
           (a!3 (or (and (not (= M3 true)) (= I1 true)) (= L3 true)))
           (a!4 (and (not (= P2 true))
                     (or (= P2 true) (= I2 true) (not (= C true)))))
           (a!5 (and (or (not (= N2 true)) (= Y2 true)) (= K2 true)))
           (a!6 (or (and (not (= K3 true)) (= F1 true)) (= I3 true)))
           (a!7 (or (and (= X3 true) (not (= J3 true))) (not (= Q2 true))))
           (a!8 (or (and (= N2 true) (not (= Y2 true)))
                    (not (= K2 true))
                    (= W3 true)))
           (a!9 (or (or (not (= X3 true)) (= J3 true)) (= Q2 true)))
           (a!10 (or (and (not (= G3 true)) (= C1 true)) (= F3 true)))
           (a!11 (or (= U2 true)
                     (and (not (= U2 true)) (not (= N2 true)) (= P true))
                     (not (= T2 true))))
           (a!12 (or (and (not (= J3 true)) (= Y1 true)) (= E3 true)))
           (a!13 (or (and (= S3 true) (not (= W3 true))) (= C2 true)))
           (a!14 (or (and (not (= O2 true)) (= J true)) (= M2 true)))
           (a!15 (and (not (= U2 true))
                      (or (= U2 true) (= N2 true) (not (= P true)))))
           (a!16 (or (not (= P3 true)) (and (not (= N2 true)) (= J3 true))))
           (a!17 (or (and (= X3 true) (not (= J3 true))) (not (= U2 true))))
           (a!18 (or (or (not (= X3 true)) (= J3 true)) (= U2 true)))
           (a!19 (and (or (not (= L3 true)) (= V true))
                      (or (not (= N3 true)) (= G1 true))
                      (or (not (= I3 true)) (= H3 true))
                      (= Y3 true)
                      (or (not (= J3 true)) (= Y2 true))
                      (or (not (= E3 true)) (not (= G1 true)))))
           (a!20 (or (and (= I3 true) (= F3 true))
                     (and (not (= I3 true)) (not (= F3 true))))))
     (let ((a!21 (and (str_invariant Z1
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
                                     V3
                                     U3
                                     T3)
                      a!1
                      (or (and (= Z3 true) (= O1 true)) (not (= S3 true)))
                      (or (= K2 true) (and (= G2 true) (= M2 true)))
                      (or (= M3 true) (not (= I1 true)) (not (= L3 true)))
                      (or (not (= N3 true)) (= N2 true) (not (= W1 true)))
                      (or (not (= Z3 true)) (not (= O1 true)) (= S3 true))
                      a!2
                      (or (not (= K2 true)) (not (= G2 true)) (not (= M2 true)))
                      (or (= K3 true) (not (= F1 true)) (not (= I3 true)))
                      a!3
                      (not (= D3 true))
                      (or (= I2 true) (not (= H true)))
                      (or a!4 (= G2 true))
                      (not (= H2 true))
                      (or a!5 (not (= W3 true)))
                      (or (and (= T2 true) (= Y2 true)) (not (= R3 true)))
                      (or (= H3 true) (not (= Q1 true)))
                      a!6
                      (not (= C3 true))
                      (or (not (= I2 true)) (= H true))
                      (not (= F2 true))
                      a!7
                      a!8
                      (or (not (= T2 true)) (not (= Y2 true)) (= R3 true))
                      (or (= G3 true) (not (= C1 true)) (not (= F3 true)))
                      (or (not (= H3 true)) (= Q1 true))
                      (not (= B3 true))
                      (or (= P2 true) (not (= M true)))
                      (not (= E2 true))
                      a!9
                      (or (= Q3 true) (not (= J3 true)) (not (= N2 true)))
                      (not (= V2 true))
                      (or (= J3 true) (not (= Y1 true)) (not (= E3 true)))
                      a!10
                      (not (= A3 true))
                      (not (= G3 J3))
                      (or (not (= S3 true)) (= W3 true) (not (= C2 true)))
                      (or (= O2 true) (not (= J true)) (not (= M2 true)))
                      (or (not (= P2 true)) (= M true))
                      (not (= J2 true))
                      a!11
                      (or (= P3 true) (= N2 true) (not (= J3 true)))
                      (or (not (= Q3 true)) (and (= J3 true) (= N2 true)))
                      a!12
                      (not (= Z2 true))
                      (not (= K3 Y2))
                      (or (= P3 true) (not (= K true)))
                      a!13
                      (or (= L2 true) (not (= W1 true)))
                      a!14
                      (not (= D2 true))
                      (or a!15 (= T2 true))
                      a!16
                      a!17
                      (not (= X2 true))
                      (not (= M3 N2))
                      (or (not (= P3 true)) (= K true))
                      (or (not (= L2 true)) (= W1 true))
                      (not (= B2 true))
                      (not (= S2 true))
                      a!18
                      (not (= O3 true))
                      (or (= Q3 true) (not (= V true)))
                      (not (= A2 true))
                      (not (= O2 Y2))
                      (not (= W2 true))
                      (or (= R3 true) (not (= G1 true)))
                      (or (not (= Q3 true)) (= V true))
                      (not (= R2 true))
                      (or (not (= R3 true)) (= G1 true))
                      (= Z3 a!19)
                      (= Y3 a!20)
                      (not (= R1 true)))))
       (=> a!21
           (str_invariant X3
                          J3
                          Y2
                          N2
                          C2
                          R1
                          G1
                          V
                          K
                          W3
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
                          A2))))
    ))


(check-sat)
(exit)
