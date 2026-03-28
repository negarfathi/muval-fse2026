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
         (M1 Bool))
  (=> (and (str_invariant M1
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
                             A)
              (not (= J1 true)))
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
         (M1 Bool))
  (let ((a!1 (or (= F1 true) (and (not (= W true)) (not (= V true)))))
           (a!2 (or (and (not (= A1 true)) (not (= X true))) (= E1 true))))
     (let ((a!3 (and (or (= B1 true) (not (= A1 true)))
                     (or (= N true) (not (= M true)))
                     (or (= Y true) (not (= X true)))
                     (or (not (= B1 true)) (= A1 true))
                     (or (= I true) (not (= H true)))
                     (or (not (= N true)) (= M true))
                     (or (= W true) (not (= M true)))
                     (not (= N H1))
                     (or (not (= Y true)) (= X true))
                     (not (= R B1))
                     (or (not (= I true)) (= H true))
                     (or (= V true) (not (= H true)))
                     (not (= I G1))
                     (not (= K N))
                     (or (not (= W true)) (= M true))
                     (not (= P Y))
                     (= S true)
                     (not (= F I))
                     (or (not (= V true)) (= H true))
                     (= L true)
                     (= Q true)
                     (or (= L1 true) (not (= U true)))
                     (or (= E1 true) (not (= D1 true)))
                     (= G true)
                     (= O true)
                     (or (= K1 true) (not (= T true)))
                     (or (not (= L1 true)) (= U true))
                     (or (not (= E1 true)) (= D1 true))
                     (= J true)
                     (or (not (= K1 true)) (= T true))
                     (not (= C L1))
                     (= E true)
                     a!1
                     (not (= Z L1))
                     (or (and (= K1 true) (= M1 true)) (not (= G1 true)))
                     (not (= C1 K1))
                     (or (and (= L1 true) (= M1 true)) (not (= H1 true)))
                     (= J1 true)
                     (not (= A K1))
                     (= D true)
                     (or (= A1 true) (= X true) (not (= E1 true)))
                     (or (not (= F1 true)) (= W true) (= V true))
                     (or (= G1 true) (not (= Y true)))
                     (or (not (= K1 true)) (not (= M1 true)) (= G1 true))
                     (or (= H1 true) (not (= B1 true)))
                     (or (not (= L1 true)) (not (= M1 true)) (= H1 true))
                     (= B true)
                     a!2
                     (or (not (= G1 true)) (= Y true))
                     (or (not (= H1 true)) (= B1 true))
                     (= I1 true))))
       (=> a!3
           (str_invariant M1
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
                          A))))
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
         (Z2 Bool))
  (let ((a!1 (or (and (not (= V2 true)) (not (= S2 true)))
                    (and (not (= S2 true)) (not (= B true)))
                    (and (not (= V2 true)) (not (= B true)))))
           (a!3 (and (or (not (= Y2 true)) (not (= Z2 true))) (= Y2 true)))
           (a!6 (or (= A true)
                    (and (not (= A true)) (not (= B true)) (= I1 true))
                    (not (= Y2 true))))
           (a!7 (and (not (= A true))
                     (or (= A true) (= B true) (not (= I1 true)))))
           (a!8 (or (and (not (= V2 true)) (not (= S2 true))) (= A true)))
           (a!9 (or (and (not (= R2 true)) (not (= Q2 true))) (= B true))))
     (let ((a!2 (and (or (not (= P2 true)) (not (= N2 true)))
                     a!1
                     (or (not (= V2 true)) (not (= S2 true)) (not (= B true)))
                     (or (and (= Y2 true) (= Z2 true)) (not (= Y2 true)))))
           (a!4 (or (and (= P2 true) (= N2 true))
                    (and (or (= V2 true) (= S2 true))
                         (or (= S2 true) (= B true))
                         (or (= V2 true) (= B true)))
                    (and (= V2 true) (= S2 true) (= B true))
                    a!3)))
     (let ((a!5 (and a!4 (or (not (= P2 true)) (not (= N2 true))))))
     (let ((a!10 (and (str_invariant R1
                                     Q1
                                     P1
                                     O1
                                     N1
                                     M1
                                     L1
                                     K1
                                     J1
                                     I1
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
                                     K
                                     J
                                     I
                                     H
                                     G
                                     F
                                     E
                                     D
                                     C)
                      (or a!2 (and (= P2 true) (= N2 true)) (not (= S1 true)))
                      (or (and (= W2 true) (= U true)) (not (= V2 true)))
                      (or a!5 (= S1 true))
                      (or (and (= H2 true) (= N true)) (not (= G2 true)))
                      (or (and (= T2 true) (= S true)) (not (= S2 true)))
                      (or (not (= W2 true)) (not (= U true)) (= V2 true))
                      (not (= X2 D2))
                      (or (and (= B2 true) (= H true)) (not (= A2 true)))
                      (or (not (= H2 true)) (not (= N true)) (= G2 true))
                      (or (= R2 true) (not (= G2 true)))
                      (not (= H2 W))
                      (or (not (= T2 true)) (not (= S true)) (= S2 true))
                      (not (= L2 W2))
                      (not (= U2 O2))
                      (or (not (= B2 true)) (not (= H true)) (= A2 true))
                      (or (= Q2 true) (not (= A2 true)))
                      (not (= B2 L))
                      (not (= E2 H2))
                      (or (not (= R2 true)) (= G2 true))
                      (not (= J2 T2))
                      (not (= M2 true))
                      (not (= Y1 B2))
                      (or (not (= Q2 true)) (= A2 true))
                      (not (= F2 true))
                      (not (= K2 true))
                      (or (= P2 true) (not (= O2 true)) (not (= E true)))
                      a!6
                      (not (= Z1 true))
                      (not (= I2 true))
                      (or (and (= D2 true) (= Z2 true)) (not (= L true)))
                      (or (= N2 true) (not (= D2 true)) (not (= C true)))
                      (or (not (= P2 true)) (and (= O2 true) (= E true)))
                      (or a!7 (= Y2 true))
                      (not (= C2 true))
                      (or (and (= O2 true) (= Z2 true)) (not (= W true)))
                      (or (not (= D2 true)) (not (= Z2 true)) (= L true))
                      (or (not (= N2 true)) (and (= D2 true) (= C true)))
                      (not (= V1 O2))
                      (not (= X1 true))
                      (or (or (= V2 true) (= S2 true)) (not (= A true)))
                      (or (= T2 true) (not (= L true)) (not (= D1 true)))
                      (or (not (= O2 true)) (not (= Z2 true)) (= W true))
                      (not (= T1 D2))
                      (not (= W1 true))
                      (or (= R2 true) (= Q2 true) (not (= B true)))
                      a!8
                      (or (= W2 true) (not (= W true)) (not (= G1 true)))
                      (or (not (= T2 true)) (and (= L true) (= D1 true)))
                      (not (= U1 true))
                      a!9
                      (or (not (= W2 true)) (and (= W true) (= G1 true)))
                      (not (= H1 true)))))
       (=> a!10
           (str_invariant Z2
                          O2
                          D2
                          S1
                          H1
                          W
                          L
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
                          C2
                          B2
                          A2
                          Z1
                          Y1
                          X1
                          W1
                          V1
                          U1
                          T1))))))
    ))


(check-sat)
(exit)
