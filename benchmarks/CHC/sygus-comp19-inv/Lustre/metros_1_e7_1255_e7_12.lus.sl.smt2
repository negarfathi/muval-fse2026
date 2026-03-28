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
         (V Bool)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool))
  (=> (and (str_invariant J1
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
              (not (= G1 true)))
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
         (V Bool)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool))
  (let ((a!1 (or (and (= B1 true)
                         (>= (- A1) 0)
                         (>= (- Z) 0)
                         (>= (- Y) 0)
                         (>= (- 32766 X) 0))
                    (not (= R true)))))
     (let ((a!2 (and (or (and (= O true) (= N true)) (not (= B1 true)))
                     (or (= V true) (not (= L true)))
                     (or (not (= O true)) (not (= N true)) (= B1 true))
                     (or (not (= V true)) (= L true))
                     (= A1 0)
                     (or (= T true) (not (= K true)))
                     (= Y 0)
                     (or (= U true) (not (= I true)))
                     (or (not (= T true)) (= K true))
                     (or (not (= U true)) (= I true))
                     (or (= S true) (not (= H true)))
                     (= Z 0)
                     (or (not (= S true)) (= H true))
                     (= (+ (- Y A1) M) 0)
                     (= O true)
                     (= (- X M) 0)
                     (not (= L true))
                     (= F 0)
                     (= (- W J) 0)
                     (= (+ (- Y Z) J) 0)
                     (= N true)
                     (not (= K true))
                     (= G true)
                     (not (= I true))
                     (= C 0)
                     (= E true)
                     (not (= H true))
                     (= D true)
                     a!1
                     (= G1 true)
                     (or (= R true) (not (= Q true)))
                     (= B true)
                     (or (not (= B1 true))
                         (< (- A1) 0)
                         (< (- Z) 0)
                         (< (- Y) 0)
                         (< (- 32766 X) 0)
                         (= R true))
                     (or (= E1 true) (not (= V true)))
                     (= C1 true)
                     (or (not (= R true)) (= Q true))
                     (= P true)
                     (or (= D1 true) (not (= T true)))
                     (or (not (= E1 true)) (= V true))
                     (= A true)
                     (or (not (= D1 true)) (= T true))
                     (= F1 true))))
       (=> a!2
           (str_invariant J1
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
         (E Int)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Int)
         (N Bool)
         (O Bool)
         (P Int)
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
         (A1 Int)
         (B1 Bool)
         (C1 Int)
         (D1 Int)
         (E1 Int)
         (F1 Int)
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
         (S1 Int)
         (T1 Bool)
         (U1 Bool)
         (V1 Int)
         (W1 Bool)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Bool)
         (A2 Int)
         (B2 Bool)
         (C2 Bool)
         (D2 Int)
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
         (O2 Int)
         (P2 Int)
         (Q2 Int)
         (R2 Int)
         (S2 Int)
         (T2 Bool))
  (let ((a!1 (= (- Q2 (ite (= X1 true) (+ 1 D1) D1)) 0))
           (a!2 (= (- S2 (ite (= T2 true) (+ 1 F1) F1)) 0))
           (a!3 (= (- R2 (ite (= I2 true) (+ 1 E1) E1)) 0))
           (a!4 (or (and (= X true) (not (= X1 true))) (not (= X true))))
           (a!5 (or (and (>= I 9) (not (= T2 true))) (< I 9)))
           (a!6 (or (and (not (= O true)) (>= D2 10))
                    (and (= O true) (> D2 0))
                    (not (= C2 true))))
           (a!7 (and (or (not (= X true)) (= X1 true)) (= X true)))
           (a!9 (or (and (= A true)
                         (>= (- S2) 0)
                         (>= (- R2) 0)
                         (>= (- Q2) 0)
                         (>= (- 32766 P2) 0))
                    (not (= J2 true))))
           (a!10 (or (and (= W true) (not (= X1 true))) (not (= W true))))
           (a!11 (or (and (>= E 9) (not (= I2 true))) (< E 9)))
           (a!12 (or (and (not (= N true)) (<= D2 (- 10)))
                     (and (= N true) (< D2 0))
                     (not (= B2 true))))
           (a!13 (and (or (= O true) (< D2 10)) (or (not (= O true)) (<= D2 0))))
           (a!14 (- V1
                    (ite (or (= Z true) (= N2 true))
                         (ite (= T2 true) (+ 1 I) I)
                         0)))
           (a!15 (or (and (not (= L true)) (>= A2 10))
                     (and (= L true) (> A2 0))
                     (not (= Z1 true))))
           (a!16 (and (or (not (= W true)) (= X1 true)) (= W true)))
           (a!18 (and (or (= N true) (> D2 (- 10)))
                      (or (not (= N true)) (>= D2 0))))
           (a!19 (or (and (= H2 true) (not (= H1 true))) (= M1 true)))
           (a!20 (or (and (not (= K true)) (<= A2 (- 10)))
                     (and (= K true) (< A2 0))
                     (not (= Y1 true))))
           (a!21 (and (or (= L true) (< A2 10)) (or (not (= L true)) (<= A2 0))))
           (a!22 (- S1
                    (ite (or (= Y true) (= M2 true))
                         (ite (= I2 true) (+ 1 E) E)
                         0)))
           (a!23 (and (or (= K true) (> A2 (- 10)))
                      (or (not (= K true)) (>= A2 0))))
           (a!24 (and (or (not (= J1 true)) (not (= F true)))
                      (or (not (= I1 true)) (not (= Q true)))))
           (a!25 (or (and (not (= J2 true)) (not (= U true))) (= H2 true))))
     (let ((a!8 (or a!7 (and (or (< I 9) (= T2 true)) (>= I 9)) (= F2 true)))
           (a!17 (or a!16 (and (or (< E 9) (= I2 true)) (>= E 9)) (= E2 true))))
     (let ((a!26 (and (str_invariant P1
                                     O1
                                     N1
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
                                     E
                                     D
                                     C)
                      (or (and (= F2 true) (= E2 true)) (not (= A true)))
                      (or (not (= F2 true)) (not (= E2 true)) (= A true))
                      a!1
                      (or (= N2 true) (not (= C2 true)))
                      a!2
                      (or (= L2 true) (not (= B2 true)))
                      (or (not (= N2 true)) (= C2 true))
                      (or (not (= L2 true)) (= B2 true))
                      (or (= M2 true) (not (= Z1 true)))
                      a!3
                      (or (= K2 true) (not (= Y1 true)))
                      (or (not (= M2 true)) (= Z1 true))
                      (or (and a!4 a!5) (not (= F2 true)))
                      (or (not (= K2 true)) (= Y1 true))
                      a!6
                      (= (+ (- Q2 S2) D2) 0)
                      a!8
                      (= (- P2 D2) 0)
                      a!9
                      (or (and a!10 a!11) (not (= E2 true)))
                      a!12
                      (or a!13 (= C2 true))
                      (= a!14 0)
                      (= (- O2 A2) 0)
                      (or (not (= H2 true)) (= H1 true) (not (= M1 true)))
                      (or (not (= A true))
                          (< (- S2) 0)
                          (< (- R2) 0)
                          (< (- Q2) 0)
                          (< (- 32766 P2) 0)
                          (= J2 true))
                      a!15
                      (= (+ (- Q2 R2) A2) 0)
                      a!17
                      (or a!18 (= B2 true))
                      (not (= W1 true))
                      (or (= L2 true) (not (= F true)))
                      a!19
                      a!20
                      (or a!21 (= Z1 true))
                      (= a!22 0)
                      (not (= U1 true))
                      (or (= N2 true) (not (= Q true)))
                      (or (not (= L2 true)) (= F true))
                      (or a!23 (= Y1 true))
                      (not (= T1 true))
                      (or (= B true)
                          (and (= J1 true) (= F true))
                          (and (= I1 true) (= Q true)))
                      (or (not (= N2 true)) (= Q true))
                      (or (= J2 true) (= U true) (not (= H2 true)))
                      (not (= R1 true))
                      (or (not (= B true)) a!24)
                      a!25
                      (not (= G2 true))
                      (not (= Q1 true))
                      (not (= B1 true)))))
       (=> a!26
           (str_invariant T2
                          I2
                          X1
                          M1
                          B1
                          Q
                          F
                          B
                          A
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
                          W1
                          V1
                          U1
                          T1
                          S1
                          R1
                          Q1)))))
    ))


(check-sat)
(exit)
