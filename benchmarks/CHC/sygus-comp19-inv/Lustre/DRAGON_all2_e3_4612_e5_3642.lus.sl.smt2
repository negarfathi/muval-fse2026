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
         (G Int)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Bool)
         (R Bool)
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
         (E1 Bool))
  (=> (and (str_invariant E1
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
              (not (= R true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Int)
         (E Bool)
         (F Int)
         (G Int)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Bool)
         (R Bool)
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
         (L1 Bool))
  (let ((a!1 (and (or (not (= H true)) (not (= K true)))
                     (= L1 true)
                     (= K1 true)
                     (= J1 true)
                     (or (not (= H true)) (>= O 0))
                     (or (not (= H true)) (>= P 0))
                     (or (not (= H true)) (>= N 0))
                     (or (not (= H true)) (>= M 0))
                     (or (not (= H true)) (>= L 0))
                     (= I1 true)
                     (= H1 true)
                     (= G1 true)
                     (= F1 true)))
           (a!2 (or (or (= E1 true) (= D1 true)) (= C1 true)))
           (a!10 (and (and (not (= E1 true)) (not (= D1 true)))
                      (not (= C1 true))))
           (a!15 (and (and (not (= E1 true)) (not (= D1 true)))
                      (= C1 true)
                      (not (= B1 true))
                      (not (= A1 true))
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))))
           (a!21 (or (and (= J true) (>= (+ (- 1) S) 0)) (not (= I true))))
           (a!22 (or (not (= H true)) (= (- (+ L M N O P) F) 0)))
           (a!23 (= K1 (or (not (= H true)) (>= (- 1 M) 0))))
           (a!24 (= J1 (or (not (= H true)) (>= (- M) 0) (>= (- O) 0))))
           (a!25 (= I1 (or (not (= H true)) (>= (- F O) 0))))
           (a!26 (= H1 (or (not (= H true)) (>= (- F N) 0))))
           (a!27 (= G1 (or (not (= H true)) (>= (- F M) 0))))
           (a!28 (= F1 (or (not (= H true)) (>= (- F L) 0)))))
     (let ((a!3 (or (or (or a!2 (= B1 true)) (= A1 true)) (= Z true)))
           (a!6 (or (or (or a!2 (= B1 true)) (= A1 true))
                    (not (= Z true))
                    (= Y true)
                    (= X true)
                    (= W true)
                    (= V true)
                    (= U true)
                    (= T true)))
           (a!11 (and (and a!10 (not (= B1 true))) (not (= A1 true))))
           (a!16 (and (and a!10 (not (= B1 true)))
                      (= A1 true)
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true)))))
     (let ((a!4 (or (or (or a!3 (= Y true)) (= X true)) (= W true)))
           (a!7 (or (or (or a!3 (= Y true)) (= X true))
                    (not (= W true))
                    (= V true)
                    (= U true)
                    (= T true)))
           (a!12 (and (and a!11 (not (= Z true))) (not (= Y true))))
           (a!17 (and (and a!11 (not (= Z true)))
                      (= Y true)
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true)))))
     (let ((a!5 (or (or (or a!4 (= V true)) (= U true)) (= T true)))
           (a!8 (or (or (or a!4 (= V true)) (= U true)) (not (= T true))))
           (a!13 (and (and a!12 (not (= X true))) (not (= W true))))
           (a!18 (and (and a!12 (not (= X true)))
                      (= W true)
                      (not (= V true))
                      (not (= U true))
                      (not (= T true)))))
     (let ((a!9 (and a!5
                     (or (not (= E1 true))
                         (= D1 true)
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true))
                     (or (= E1 true)
                         (not (= D1 true))
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true))
                     (or (or (= E1 true) (= D1 true))
                         (not (= C1 true))
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true))
                     (or a!2
                         (not (= B1 true))
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true))
                     (or (or a!2 (= B1 true))
                         (not (= A1 true))
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true))
                     a!6
                     (or a!3
                         (not (= Y true))
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true))
                     (or (or a!3 (= Y true))
                         (not (= X true))
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true))
                     a!7
                     (or a!4 (not (= V true)) (= U true) (= T true))
                     (or (or a!4 (= V true)) (not (= U true)) (= T true))
                     a!8))
           (a!14 (and (and a!13 (not (= V true))) (not (= U true))))
           (a!19 (and (and a!13 (not (= V true))) (= U true) (not (= T true)))))
     (let ((a!20 (or (not (= J true))
                     (and a!14 (not (= T true)))
                     (and (= E1 true)
                          (not (= D1 true))
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true)))
                     (and (not (= E1 true))
                          (= D1 true)
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true)))
                     a!15
                     (and a!10
                          (= B1 true)
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true)))
                     a!16
                     (and a!11
                          (= Z true)
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true)))
                     a!17
                     (and a!12
                          (= X true)
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true)))
                     a!18
                     (and a!13 (= V true) (not (= U true)) (not (= T true)))
                     a!19
                     (and a!14 (= T true)))))
     (let ((a!29 (and (= O 0)
                      (or a!1 (not (= R true)))
                      (or (>= (+ (- 2) P) 0) (not (= K true)))
                      (= (- D S) 0)
                      (= N 0)
                      (or (and (= H true) (= K true))
                          (not (= L1 true))
                          (not (= K1 true))
                          (not (= J1 true))
                          (and (= H true) (< O 0))
                          (and (= H true) (< P 0))
                          (and (= H true) (< N 0))
                          (and (= H true) (< M 0))
                          (and (= H true) (< L 0))
                          (not (= I1 true))
                          (not (= H1 true))
                          (not (= G1 true))
                          (not (= F1 true))
                          (= R true))
                      (or (= I true) (not (= H true)))
                      (or (< (+ (- 2) P) 0) (= K true))
                      (= (- L D) 0)
                      (= M 0)
                      (= P 0)
                      (= (- G (+ L M N O P)) 0)
                      (or (= J true) a!9)
                      (or (not (= I true)) (= H true))
                      (= E true)
                      a!20
                      (= C true)
                      (= (- F S) 0)
                      (= B true)
                      a!21
                      (= A true)
                      (or (not (= J true)) (< (+ (- 1) S) 0) (= I true))
                      (= L1 a!22)
                      a!23
                      a!24
                      a!25
                      a!26
                      a!27
                      a!28
                      (= Q true))))
       (=> a!29
           (str_invariant E1
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
         (K Int)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Int)
         (Q Int)
         (R Bool)
         (S Int)
         (T Int)
         (U Int)
         (V Bool)
         (W Bool)
         (X Int)
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
         (P1 Int)
         (Q1 Bool)
         (R1 Int)
         (S1 Int)
         (T1 Bool)
         (U1 Bool)
         (V1 Bool)
         (W1 Bool)
         (X1 Int)
         (Y1 Bool)
         (Z1 Int)
         (A2 Int)
         (B2 Int)
         (C2 Int)
         (D2 Bool)
         (E2 Bool)
         (F2 Int)
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
         (X2 Bool))
  (let ((a!1 (ite (= A true) (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q) Q))
           (a!6 (ite (= G2 true) (ite (>= (+ (- 1) U) 0) (+ 1 P) P) P))
           (a!12 (and (or (not (= T1 true)) (not (= W1 true)))
                      (= R2 true)
                      (= Q2 true)
                      (= P2 true)
                      (= O2 true)
                      (or (not (= T1 true)) (>= B2 0))
                      (or (not (= T1 true)) (>= C2 0))
                      (or (not (= T1 true)) (>= A2 0))
                      (or (not (= T1 true)) (>= Z1 0))
                      (or (not (= T1 true)) (>= X1 0))
                      (= N2 true)
                      (= M2 true)
                      (= L2 true)
                      (= K2 true)))
           (a!13 (ite (= H2 true) (ite (>= (+ (- 1) S) 0) (+ (- 1) S) S) S))
           (a!16 (ite (= I2 true) (ite (>= (+ (- 1) T) 0) (+ (- 1) T) T) T))
           (a!19 (ite (>= (+ (- 1) U) 0) (+ (- 1) U) U))
           (a!22 (or (or (= J2 true) (= Y1 true)) (= N1 true)))
           (a!30 (and (and (not (= J2 true)) (not (= Y1 true)))
                      (not (= N1 true))))
           (a!35 (and (and (not (= J2 true)) (not (= Y1 true)))
                      (= N1 true)
                      (not (= C1 true))
                      (not (= R true))
                      (not (= G true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= I2 true))
                      (not (= H2 true))
                      (not (= G2 true))))
           (a!41 (or (and (= V1 true) (>= (+ (- 1) F2) 0)) (not (= U1 true))))
           (a!42 (and (>= (+ (- 1) P) 0) (= Q 0) (= T 0) (= U 0) (= S 0)))
           (a!43 (= W2 (and (= (+ (- 1) S) 0) (= T 0))))
           (a!44 (= V2 (and (= S 0) (= (+ (- 1) T) 0))))
           (a!45 (>= (+ (- (+ (- 2) U) T) S Q) 0))
           (a!47 (and (>= (+ (- 1) P) 0) (>= (+ (+ (- 1) U) T S Q) 0)))
           (a!48 (or (not (= T1 true)) (= (- (+ C2 X1 Z1 A2 B2) K) 0)))
           (a!49 (or (not (= T1 true)) (= (- (+ C2 X1 Z1 A2 B2) R1) 0)))
           (a!50 (= P2 (or (not (= T1 true)) (>= (- 1 Z1) 0))))
           (a!51 (= O2 (or (not (= T1 true)) (>= (- Z1) 0) (>= (- B2) 0))))
           (a!52 (= N2 (or (not (= T1 true)) (>= (- R1 B2) 0))))
           (a!53 (= M2 (or (not (= T1 true)) (>= (- R1 A2) 0))))
           (a!54 (= L2 (or (not (= T1 true)) (>= (- R1 Z1) 0))))
           (a!55 (= K2 (or (not (= T1 true)) (>= (- R1 X1) 0)))))
     (let ((a!2 (ite (= C true)
                     (ite (= X2 true) (+ 1 Q) Q)
                     (ite (= B true) (ite (= S2 true) 0 Q) a!1)))
           (a!7 (ite (= H2 true) (ite (>= (+ (- 1) S) 0) (+ 1 P) P) a!6))
           (a!14 (ite (= G true)
                      (ite (>= (+ (- 2) T S) 0) 1 S)
                      (ite (= B true) (ite (= S2 true) 1 S) a!13)))
           (a!17 (ite (= G true)
                      (ite (>= (+ (- 2) T S) 0) (+ (+ (- 1) T) S) T)
                      (ite (= B true) (ite (= S2 true) (+ U T S Q) T) a!16)))
           (a!20 (ite (= N1 true)
                      a!19
                      (ite (= B true)
                           (ite (= S2 true) 0 U)
                           (ite (= G2 true) a!19 U))))
           (a!23 (or (or (or a!22 (= C1 true)) (= R true)) (= G true)))
           (a!26 (or (or (or a!22 (= C1 true)) (= R true))
                     (not (= G true))
                     (= C true)
                     (= B true)
                     (= A true)
                     (= I2 true)
                     (= H2 true)
                     (= G2 true)))
           (a!31 (and (and a!30 (not (= C1 true))) (not (= R true))))
           (a!36 (and (and a!30 (not (= C1 true)))
                      (= R true)
                      (not (= G true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= I2 true))
                      (not (= H2 true))
                      (not (= G2 true))))
           (a!46 (= T2 (and (>= (+ (- 1) P) 0) a!45))))
     (let ((a!3 (ite (= C1 true)
                     (ite (= W2 true) (+ 1 Q) Q)
                     (ite (= R true) (ite (= V2 true) (+ 1 Q) Q) a!2)))
           (a!8 (ite (= I2 true) (ite (>= (+ (- 1) T) 0) (+ 1 P) P) a!7))
           (a!15 (ite (= Y1 true)
                      (ite (= T2 true) (+ S Q) S)
                      (ite (= C1 true) (ite (= W2 true) 0 S) a!14)))
           (a!18 (ite (= Y1 true)
                      (ite (= T2 true) (+ (+ 1 U) T) T)
                      (ite (= R true) (ite (= V2 true) 0 T) a!17)))
           (a!21 (ite (= J2 true)
                      (ite (= U2 true) (+ 1 U) U)
                      (ite (= Y1 true) (ite (= T2 true) 0 U) a!20)))
           (a!24 (or (or (or a!23 (= C true)) (= B true)) (= A true)))
           (a!27 (or (or (or a!23 (= C true)) (= B true))
                     (not (= A true))
                     (= I2 true)
                     (= H2 true)
                     (= G2 true)))
           (a!32 (and (and a!31 (not (= G true))) (not (= C true))))
           (a!37 (and (and a!31 (not (= G true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true))
                      (not (= I2 true))
                      (not (= H2 true))
                      (not (= G2 true)))))
     (let ((a!4 (ite (= N1 true) (ite (>= (+ (- 1) U) 0) (+ 1 Q) Q) a!3))
           (a!9 (ite (= A true) (ite (>= (+ (- 1) Q) 0) (+ 1 P) P) a!8))
           (a!25 (or (or (or a!24 (= I2 true)) (= H2 true)) (= G2 true)))
           (a!28 (or (or (or a!24 (= I2 true)) (= H2 true)) (not (= G2 true))))
           (a!33 (and (and a!32 (not (= B true))) (not (= A true))))
           (a!38 (and (and a!32 (not (= B true)))
                      (= A true)
                      (not (= I2 true))
                      (not (= H2 true))
                      (not (= G2 true)))))
     (let ((a!5 (- Z1 (ite (= Y1 true) (ite (= T2 true) 0 Q) a!4)))
           (a!10 (ite (= C true)
                      (ite (= X2 true) (+ (- 1) P) P)
                      (ite (= B true) (ite (= S2 true) (+ (- 1) P) P) a!9)))
           (a!29 (and a!25
                      (or (not (= J2 true))
                          (= Y1 true)
                          (= N1 true)
                          (= C1 true)
                          (= R true)
                          (= G true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= I2 true)
                          (= H2 true)
                          (= G2 true))
                      (or (= J2 true)
                          (not (= Y1 true))
                          (= N1 true)
                          (= C1 true)
                          (= R true)
                          (= G true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= I2 true)
                          (= H2 true)
                          (= G2 true))
                      (or (or (= J2 true) (= Y1 true))
                          (not (= N1 true))
                          (= C1 true)
                          (= R true)
                          (= G true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= I2 true)
                          (= H2 true)
                          (= G2 true))
                      (or a!22
                          (not (= C1 true))
                          (= R true)
                          (= G true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= I2 true)
                          (= H2 true)
                          (= G2 true))
                      (or (or a!22 (= C1 true))
                          (not (= R true))
                          (= G true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= I2 true)
                          (= H2 true)
                          (= G2 true))
                      a!26
                      (or a!23
                          (not (= C true))
                          (= B true)
                          (= A true)
                          (= I2 true)
                          (= H2 true)
                          (= G2 true))
                      (or (or a!23 (= C true))
                          (not (= B true))
                          (= A true)
                          (= I2 true)
                          (= H2 true)
                          (= G2 true))
                      a!27
                      (or a!24 (not (= I2 true)) (= H2 true) (= G2 true))
                      (or (or a!24 (= I2 true)) (not (= H2 true)) (= G2 true))
                      a!28))
           (a!34 (and (and a!33 (not (= I2 true))) (not (= H2 true))))
           (a!39 (and (and a!33 (not (= I2 true)))
                      (= H2 true)
                      (not (= G2 true)))))
     (let ((a!11 (ite (= J2 true)
                      (ite (= U2 true) (+ (- 1) P) P)
                      (ite (= Y1 true) (ite (= T2 true) (+ (- 1) P) P) a!10)))
           (a!40 (or (not (= V1 true))
                     (and a!34 (not (= G2 true)))
                     (and (= J2 true)
                          (not (= Y1 true))
                          (not (= N1 true))
                          (not (= C1 true))
                          (not (= R true))
                          (not (= G true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= I2 true))
                          (not (= H2 true))
                          (not (= G2 true)))
                     (and (not (= J2 true))
                          (= Y1 true)
                          (not (= N1 true))
                          (not (= C1 true))
                          (not (= R true))
                          (not (= G true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= I2 true))
                          (not (= H2 true))
                          (not (= G2 true)))
                     a!35
                     (and a!30
                          (= C1 true)
                          (not (= R true))
                          (not (= G true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= I2 true))
                          (not (= H2 true))
                          (not (= G2 true)))
                     a!36
                     (and a!31
                          (= G true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= I2 true))
                          (not (= H2 true))
                          (not (= G2 true)))
                     a!37
                     (and a!32
                          (= B true)
                          (not (= A true))
                          (not (= I2 true))
                          (not (= H2 true))
                          (not (= G2 true)))
                     a!38
                     (and a!33 (= I2 true) (not (= H2 true)) (not (= G2 true)))
                     a!39
                     (and a!34 (= G2 true)))))
     (let ((a!56 (and (str_invariant K1
                                     J1
                                     I1
                                     H1
                                     G1
                                     F1
                                     E1
                                     D1
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
                                     F
                                     E
                                     D)
                      (= a!5 0)
                      (= (- X1 a!11) 0)
                      (or a!12 (not (= E2 true)))
                      (or (>= (+ (- 2) C2) 0) (not (= W1 true)))
                      (= (- P1 H) 0)
                      (or (and (= T1 true) (= W1 true))
                          (not (= R2 true))
                          (not (= Q2 true))
                          (not (= P2 true))
                          (not (= O2 true))
                          (and (= T1 true) (< B2 0))
                          (and (= T1 true) (< C2 0))
                          (and (= T1 true) (< A2 0))
                          (and (= T1 true) (< Z1 0))
                          (and (= T1 true) (< X1 0))
                          (not (= N2 true))
                          (not (= M2 true))
                          (not (= L2 true))
                          (not (= K2 true))
                          (= E2 true))
                      (or (and (= U1 true) (= L true)) (not (= T1 true)))
                      (or (< (+ (- 2) C2) 0) (= W1 true))
                      (= (- A2 a!15) 0)
                      (= (- B2 a!18) 0)
                      (= (- C2 a!21) 0)
                      (= (- S1 (+ C2 X1 Z1 A2 B2)) 0)
                      (or (= V1 true) a!29)
                      (or (not (= U1 true)) (not (= L true)) (= T1 true))
                      (not (= Q1 true))
                      a!40
                      (not (= O1 true))
                      (= (- R1 J) 0)
                      (not (= M1 true))
                      a!41
                      (not (= L1 true))
                      (or (not (= V1 true)) (< (+ (- 1) F2) 0) (= U1 true))
                      (= X2 a!42)
                      a!43
                      a!44
                      (= U2 a!42)
                      a!46
                      (= S2 a!47)
                      (= R2 a!48)
                      (= Q2 a!49)
                      a!50
                      a!51
                      a!52
                      a!53
                      a!54
                      a!55
                      (not (= D2 true)))))
       (=> a!56
           (str_invariant J2
                          Y1
                          N1
                          C1
                          R
                          G
                          C
                          B
                          A
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
                          M1
                          L1)))))))))
    ))


(check-sat)
(exit)
