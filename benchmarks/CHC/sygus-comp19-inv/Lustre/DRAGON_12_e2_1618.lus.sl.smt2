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
              Int
              Bool
              Int
              Bool
              Bool
              Bool)
             Bool)
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Int)
         (E Bool)
         (F Int)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Bool)
         (R Int)
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
         (D1 Bool))
  (=> (and (str_invariant D1
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
              (not (= Q true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Int)
         (E Bool)
         (F Int)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Bool)
         (R Int)
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
         (D1 Bool))
  (let ((a!1 (or (and (= G true) (< (- F M) 0)) (= Q true)))
           (a!2 (or (or (= D1 true) (= C1 true)) (= B1 true)))
           (a!10 (and (and (not (= D1 true)) (not (= C1 true)))
                      (not (= B1 true))))
           (a!15 (and (and (not (= D1 true)) (not (= C1 true)))
                      (= B1 true)
                      (not (= A1 true))
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))))
           (a!21 (or (and (= I true) (>= (+ (- 1) R) 0)) (not (= H true)))))
     (let ((a!3 (or (or (or a!2 (= A1 true)) (= Z true)) (= Y true)))
           (a!6 (or (or (or a!2 (= A1 true)) (= Z true))
                    (not (= Y true))
                    (= X true)
                    (= W true)
                    (= V true)
                    (= U true)
                    (= T true)
                    (= S true)))
           (a!11 (and (and a!10 (not (= A1 true))) (not (= Z true))))
           (a!16 (and (and a!10 (not (= A1 true)))
                      (= Z true)
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true)))))
     (let ((a!4 (or (or (or a!3 (= X true)) (= W true)) (= V true)))
           (a!7 (or (or (or a!3 (= X true)) (= W true))
                    (not (= V true))
                    (= U true)
                    (= T true)
                    (= S true)))
           (a!12 (and (and a!11 (not (= Y true))) (not (= X true))))
           (a!17 (and (and a!11 (not (= Y true)))
                      (= X true)
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true)))))
     (let ((a!5 (or (or (or a!4 (= U true)) (= T true)) (= S true)))
           (a!8 (or (or (or a!4 (= U true)) (= T true)) (not (= S true))))
           (a!13 (and (and a!12 (not (= W true))) (not (= V true))))
           (a!18 (and (and a!12 (not (= W true)))
                      (= V true)
                      (not (= U true))
                      (not (= T true))
                      (not (= S true)))))
     (let ((a!9 (and a!5
                     (or (not (= D1 true))
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true))
                     (or (= D1 true)
                         (not (= C1 true))
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true))
                     (or (or (= D1 true) (= C1 true))
                         (not (= B1 true))
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true))
                     (or a!2
                         (not (= A1 true))
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true))
                     (or (or a!2 (= A1 true))
                         (not (= Z true))
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true))
                     a!6
                     (or a!3
                         (not (= X true))
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true))
                     (or (or a!3 (= X true))
                         (not (= W true))
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true))
                     a!7
                     (or a!4 (not (= U true)) (= T true) (= S true))
                     (or (or a!4 (= U true)) (not (= T true)) (= S true))
                     a!8))
           (a!14 (and (and a!13 (not (= U true))) (not (= T true))))
           (a!19 (and (and a!13 (not (= U true))) (= T true) (not (= S true)))))
     (let ((a!20 (or (not (= I true))
                     (and a!14 (not (= S true)))
                     (and (= D1 true)
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true)))
                     (and (not (= D1 true))
                          (= C1 true)
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true)))
                     a!15
                     (and a!10
                          (= A1 true)
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true)))
                     a!16
                     (and a!11
                          (= Y true)
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true)))
                     a!17
                     (and a!12
                          (= W true)
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true)))
                     a!18
                     (and a!13 (= U true) (not (= T true)) (not (= S true)))
                     a!19
                     (and a!14 (= S true)))))
     (let ((a!22 (and (= N 0)
                      (or (>= (+ (- 2) O) 0) (not (= J true)))
                      (= (- D R) 0)
                      (= M 0)
                      (or (not (= G true)) (>= (- F M) 0) (not (= Q true)))
                      (or (= H true) (not (= G true)))
                      (or (< (+ (- 2) O) 0) (= J true))
                      (= (- K D) 0)
                      (= L 0)
                      (= O 0)
                      a!1
                      (or (= I true) a!9)
                      (or (not (= H true)) (= G true))
                      (= E true)
                      a!20
                      (= C true)
                      (= (- F R) 0)
                      (= B true)
                      a!21
                      (= A true)
                      (or (not (= I true)) (< (+ (- 1) R) 0) (= H true))
                      (= P true))))
       (=> a!22
           (str_invariant D1
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
                          A)))))))))
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Int)
         (I Bool)
         (J Int)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Int)
         (P Bool)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Bool)
         (V Bool)
         (W Int)
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
         (O1 Int)
         (P1 Bool)
         (Q1 Int)
         (R1 Bool)
         (S1 Bool)
         (T1 Bool)
         (U1 Bool)
         (V1 Int)
         (W1 Bool)
         (X1 Int)
         (Y1 Int)
         (Z1 Int)
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
         (N2 Bool))
  (let ((a!1 (ite (= A true) (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q) Q))
           (a!6 (ite (= E2 true) (ite (>= (+ (- 1) T) 0) (+ 1 O) O) O))
           (a!12 (ite (= F2 true) (ite (>= (+ (- 1) R) 0) (+ (- 1) R) R) R))
           (a!15 (ite (= G2 true) (ite (>= (+ (- 1) S) 0) (+ (- 1) S) S) S))
           (a!18 (ite (>= (+ (- 1) T) 0) (+ (- 1) T) T))
           (a!21 (or (and (= R1 true) (< (- Q1 Y1) 0)) (= C2 true)))
           (a!22 (or (or (= H2 true) (= W1 true)) (= L1 true)))
           (a!30 (and (and (not (= H2 true)) (not (= W1 true)))
                      (not (= L1 true))))
           (a!35 (and (and (not (= H2 true)) (not (= W1 true)))
                      (= L1 true)
                      (not (= A1 true))
                      (not (= P true))
                      (not (= E true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= G2 true))
                      (not (= F2 true))
                      (not (= E2 true))))
           (a!41 (or (and (= T1 true) (>= (+ (- 1) D2) 0)) (not (= S1 true))))
           (a!42 (and (>= (+ (- 1) O) 0) (= Q 0) (= S 0) (= T 0) (= R 0)))
           (a!43 (= M2 (and (= (+ (- 1) R) 0) (= S 0))))
           (a!44 (= L2 (and (= R 0) (= (+ (- 1) S) 0))))
           (a!45 (= J2 (and (>= (+ (- 1) O) 0) (>= (+ (- 2) T S R Q) 0))))
           (a!46 (and (>= (+ (- 1) O) 0) (>= (+ (+ (- 1) T) S R Q) 0))))
     (let ((a!2 (ite (= C true)
                     (ite (= N2 true) (+ 1 Q) Q)
                     (ite (= B true) (ite (= I2 true) 0 Q) a!1)))
           (a!7 (ite (= F2 true) (ite (>= (+ (- 1) R) 0) (+ 1 O) O) a!6))
           (a!13 (ite (= E true)
                      (ite (>= (+ (- 2) S R) 0) 1 R)
                      (ite (= B true) (ite (= I2 true) 1 R) a!12)))
           (a!16 (ite (= E true)
                      (ite (>= (+ (- 2) S R) 0) (+ (+ (- 1) S) R) S)
                      (ite (= B true) (ite (= I2 true) (+ T S R Q) S) a!15)))
           (a!19 (ite (= L1 true)
                      a!18
                      (ite (= B true)
                           (ite (= I2 true) 0 T)
                           (ite (= E2 true) a!18 T))))
           (a!23 (or (or (or a!22 (= A1 true)) (= P true)) (= E true)))
           (a!26 (or (or (or a!22 (= A1 true)) (= P true))
                     (not (= E true))
                     (= C true)
                     (= B true)
                     (= A true)
                     (= G2 true)
                     (= F2 true)
                     (= E2 true)))
           (a!31 (and (and a!30 (not (= A1 true))) (not (= P true))))
           (a!36 (and (and a!30 (not (= A1 true)))
                      (= P true)
                      (not (= E true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= G2 true))
                      (not (= F2 true))
                      (not (= E2 true)))))
     (let ((a!3 (ite (= A1 true)
                     (ite (= M2 true) (+ 1 Q) Q)
                     (ite (= P true) (ite (= L2 true) (+ 1 Q) Q) a!2)))
           (a!8 (ite (= G2 true) (ite (>= (+ (- 1) S) 0) (+ 1 O) O) a!7))
           (a!14 (ite (= W1 true)
                      (ite (= J2 true) (+ R Q) R)
                      (ite (= A1 true) (ite (= M2 true) 0 R) a!13)))
           (a!17 (ite (= W1 true)
                      (ite (= J2 true) (+ (+ 1 T) S) S)
                      (ite (= P true) (ite (= L2 true) 0 S) a!16)))
           (a!20 (ite (= H2 true)
                      (ite (= K2 true) (+ 1 T) T)
                      (ite (= W1 true) (ite (= J2 true) 0 T) a!19)))
           (a!24 (or (or (or a!23 (= C true)) (= B true)) (= A true)))
           (a!27 (or (or (or a!23 (= C true)) (= B true))
                     (not (= A true))
                     (= G2 true)
                     (= F2 true)
                     (= E2 true)))
           (a!32 (and (and a!31 (not (= E true))) (not (= C true))))
           (a!37 (and (and a!31 (not (= E true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true))
                      (not (= G2 true))
                      (not (= F2 true))
                      (not (= E2 true)))))
     (let ((a!4 (ite (= L1 true) (ite (>= (+ (- 1) T) 0) (+ 1 Q) Q) a!3))
           (a!9 (ite (= A true) (ite (>= (+ (- 1) Q) 0) (+ 1 O) O) a!8))
           (a!25 (or (or (or a!24 (= G2 true)) (= F2 true)) (= E2 true)))
           (a!28 (or (or (or a!24 (= G2 true)) (= F2 true)) (not (= E2 true))))
           (a!33 (and (and a!32 (not (= B true))) (not (= A true))))
           (a!38 (and (and a!32 (not (= B true)))
                      (= A true)
                      (not (= G2 true))
                      (not (= F2 true))
                      (not (= E2 true)))))
     (let ((a!5 (- X1 (ite (= W1 true) (ite (= J2 true) 0 Q) a!4)))
           (a!10 (ite (= C true)
                      (ite (= N2 true) (+ (- 1) O) O)
                      (ite (= B true) (ite (= I2 true) (+ (- 1) O) O) a!9)))
           (a!29 (and a!25
                      (or (not (= H2 true))
                          (= W1 true)
                          (= L1 true)
                          (= A1 true)
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      (or (= H2 true)
                          (not (= W1 true))
                          (= L1 true)
                          (= A1 true)
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      (or (or (= H2 true) (= W1 true))
                          (not (= L1 true))
                          (= A1 true)
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      (or a!22
                          (not (= A1 true))
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      (or (or a!22 (= A1 true))
                          (not (= P true))
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      a!26
                      (or a!23
                          (not (= C true))
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      (or (or a!23 (= C true))
                          (not (= B true))
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      a!27
                      (or a!24 (not (= G2 true)) (= F2 true) (= E2 true))
                      (or (or a!24 (= G2 true)) (not (= F2 true)) (= E2 true))
                      a!28))
           (a!34 (and (and a!33 (not (= G2 true))) (not (= F2 true))))
           (a!39 (and (and a!33 (not (= G2 true)))
                      (= F2 true)
                      (not (= E2 true)))))
     (let ((a!11 (ite (= H2 true)
                      (ite (= K2 true) (+ (- 1) O) O)
                      (ite (= W1 true) (ite (= J2 true) (+ (- 1) O) O) a!10)))
           (a!40 (or (not (= T1 true))
                     (and a!34 (not (= E2 true)))
                     (and (= H2 true)
                          (not (= W1 true))
                          (not (= L1 true))
                          (not (= A1 true))
                          (not (= P true))
                          (not (= E true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= G2 true))
                          (not (= F2 true))
                          (not (= E2 true)))
                     (and (not (= H2 true))
                          (= W1 true)
                          (not (= L1 true))
                          (not (= A1 true))
                          (not (= P true))
                          (not (= E true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= G2 true))
                          (not (= F2 true))
                          (not (= E2 true)))
                     a!35
                     (and a!30
                          (= A1 true)
                          (not (= P true))
                          (not (= E true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= G2 true))
                          (not (= F2 true))
                          (not (= E2 true)))
                     a!36
                     (and a!31
                          (= E true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= G2 true))
                          (not (= F2 true))
                          (not (= E2 true)))
                     a!37
                     (and a!32
                          (= B true)
                          (not (= A true))
                          (not (= G2 true))
                          (not (= F2 true))
                          (not (= E2 true)))
                     a!38
                     (and a!33 (= G2 true) (not (= F2 true)) (not (= E2 true)))
                     a!39
                     (and a!34 (= E2 true)))))
     (let ((a!47 (and (str_invariant J1
                                     I1
                                     H1
                                     G1
                                     F1
                                     E1
                                     D1
                                     C1
                                     B1
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
                                     D)
                      (= a!5 0)
                      (= (- V1 a!11) 0)
                      (or (>= (+ (- 2) A2) 0) (not (= U1 true)))
                      (= (- O1 H) 0)
                      (or (not (= R1 true)) (>= (- Q1 Y1) 0) (not (= C2 true)))
                      (or (and (= S1 true) (= K true)) (not (= R1 true)))
                      (or (< (+ (- 2) A2) 0) (= U1 true))
                      (= (- Y1 a!14) 0)
                      (= (- Z1 a!17) 0)
                      (= (- A2 a!20) 0)
                      a!21
                      (or (= T1 true) a!29)
                      (or (not (= S1 true)) (not (= K true)) (= R1 true))
                      (not (= P1 true))
                      a!40
                      (not (= N1 true))
                      (= (- Q1 J) 0)
                      (not (= M1 true))
                      a!41
                      (not (= K1 true))
                      (or (not (= T1 true)) (< (+ (- 1) D2) 0) (= S1 true))
                      (= N2 a!42)
                      a!43
                      a!44
                      (= K2 a!42)
                      a!45
                      (= I2 a!46)
                      (not (= B2 true)))))
       (=> a!47
           (str_invariant H2
                          W1
                          L1
                          A1
                          P
                          E
                          C
                          B
                          A
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
                          K1)))))))))
    ))


(check-sat)
(exit)
