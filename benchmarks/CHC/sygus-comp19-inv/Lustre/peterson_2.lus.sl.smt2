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
              (not (= V true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Bool)
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
         (H1 Bool))
  (let ((a!1 (or (or (= H1 true) (= G1 true)) (= F1 true)))
           (a!9 (and (and (not (= H1 true)) (not (= G1 true)))
                     (not (= F1 true))))
           (a!14 (and (and (not (= H1 true)) (not (= G1 true)))
                      (= F1 true)
                      (not (= E1 true))
                      (not (= D1 true))
                      (not (= C1 true))
                      (not (= B1 true))
                      (not (= A1 true))
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))))
           (a!20 (or (and (= F true) (>= (- 32766 S) 0)) (not (= E true)))))
     (let ((a!2 (or (or (or a!1 (= E1 true)) (= D1 true)) (= C1 true)))
           (a!5 (or (or (or a!1 (= E1 true)) (= D1 true))
                    (not (= C1 true))
                    (= B1 true)
                    (= A1 true)
                    (= Z true)
                    (= Y true)
                    (= X true)
                    (= W true)))
           (a!10 (and (and a!9 (not (= E1 true))) (not (= D1 true))))
           (a!15 (and (and a!9 (not (= E1 true)))
                      (= D1 true)
                      (not (= C1 true))
                      (not (= B1 true))
                      (not (= A1 true))
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true)))))
     (let ((a!3 (or (or (or a!2 (= B1 true)) (= A1 true)) (= Z true)))
           (a!6 (or (or (or a!2 (= B1 true)) (= A1 true))
                    (not (= Z true))
                    (= Y true)
                    (= X true)
                    (= W true)))
           (a!11 (and (and a!10 (not (= C1 true))) (not (= B1 true))))
           (a!16 (and (and a!10 (not (= C1 true)))
                      (= B1 true)
                      (not (= A1 true))
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true)))))
     (let ((a!4 (or (or (or a!3 (= Y true)) (= X true)) (= W true)))
           (a!7 (or (or (or a!3 (= Y true)) (= X true)) (not (= W true))))
           (a!12 (and (and a!11 (not (= A1 true))) (not (= Z true))))
           (a!17 (and (and a!11 (not (= A1 true)))
                      (= Z true)
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true)))))
     (let ((a!8 (and a!4
                     (or (not (= H1 true))
                         (= G1 true)
                         (= F1 true)
                         (= E1 true)
                         (= D1 true)
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true))
                     (or (= H1 true)
                         (not (= G1 true))
                         (= F1 true)
                         (= E1 true)
                         (= D1 true)
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true))
                     (or (or (= H1 true) (= G1 true))
                         (not (= F1 true))
                         (= E1 true)
                         (= D1 true)
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true))
                     (or a!1
                         (not (= E1 true))
                         (= D1 true)
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true))
                     (or (or a!1 (= E1 true))
                         (not (= D1 true))
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true))
                     a!5
                     (or a!2
                         (not (= B1 true))
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true))
                     (or (or a!2 (= B1 true))
                         (not (= A1 true))
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true))
                     a!6
                     (or a!3 (not (= Y true)) (= X true) (= W true))
                     (or (or a!3 (= Y true)) (not (= X true)) (= W true))
                     a!7))
           (a!13 (and (and a!12 (not (= Y true))) (not (= X true))))
           (a!18 (and (and a!12 (not (= Y true))) (= X true) (not (= W true)))))
     (let ((a!19 (or (not (= F true))
                     (and a!13 (not (= W true)))
                     (and (= H1 true)
                          (not (= G1 true))
                          (not (= F1 true))
                          (not (= E1 true))
                          (not (= D1 true))
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true)))
                     (and (not (= H1 true))
                          (= G1 true)
                          (not (= F1 true))
                          (not (= E1 true))
                          (not (= D1 true))
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true)))
                     a!14
                     (and a!9
                          (= E1 true)
                          (not (= D1 true))
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true)))
                     a!15
                     (and a!10
                          (= C1 true)
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true)))
                     a!16
                     (and a!11
                          (= A1 true)
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true)))
                     a!17
                     (and a!12 (= Y true) (not (= X true)) (not (= W true)))
                     a!18
                     (and a!13 (= W true)))))
     (let ((a!21 (and (= L 0)
                      (or (not (= D true)) (>= S 0) (not (= V true)))
                      (or (= E true) (not (= D true)))
                      (= O 0)
                      (= (+ (- 1) J) 0)
                      (= N 0)
                      (= H 0)
                      (= G 0)
                      (= (+ (- 1) K) 0)
                      (= I 0)
                      (= (+ (- 1) M) 0)
                      (= S 0)
                      (= R 0)
                      (= Q 0)
                      (= (+ (- 1) P) 0)
                      (= (+ (- 1) T) 0)
                      (or (and (= D true) (< S 0)) (= V true))
                      (or (= F true) a!8)
                      (or (not (= E true)) (= D true))
                      (= C true)
                      a!19
                      (= B true)
                      a!20
                      (= A true)
                      (or (not (= F true)) (< (- 32766 S) 0) (= E true))
                      (= U true))))
       (=> a!21
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
                          A)))))))))
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
         (J Int)
         (K Int)
         (L Int)
         (M Bool)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Int)
         (V Int)
         (W Int)
         (X Bool)
         (Y Int)
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
         (V1 Int)
         (W1 Int)
         (X1 Int)
         (Y1 Int)
         (Z1 Int)
         (A2 Int)
         (B2 Int)
         (C2 Int)
         (D2 Int)
         (E2 Bool)
         (F2 Int)
         (G2 Int)
         (H2 Int)
         (I2 Int)
         (J2 Int)
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
         (B3 Bool))
  (let ((a!1 (ite (= N2 true)
                     (ite (= A3 true) (+ 1 J) J)
                     (ite (= M2 true) (ite (= Z2 true) (+ (- 1) J) J) J)))
           (a!3 (ite (= O2 true)
                     (ite (= B3 true) (+ (- 1) K) K)
                     (ite (= N2 true) (ite (= A3 true) (+ (- 1) K) K) K)))
           (a!5 (ite (= E2 true)
                     (ite (= V2 true) (+ (- 1) R) R)
                     (ite (= B true) (ite (= W2 true) (+ 1 R) R) R)))
           (a!6 (ite (= C true)
                     (ite (= Y2 true) (+ (- 1) N) N)
                     (ite (= M2 true) (ite (= Z2 true) (+ 1 N) N) N)))
           (a!7 (ite (= C true)
                     (ite (= Y2 true) (+ (- 1) O) O)
                     (ite (= M2 true) (ite (= Z2 true) (+ 1 O) O) O)))
           (a!8 (ite (= I1 true)
                     (ite (= T2 true) (+ (- 1) V) V)
                     (ite (= X true) (ite (= S2 true) (+ (- 1) V) V) V)))
           (a!10 (ite (= P2 true)
                      (ite (= R2 true) (+ (- 1) Y) Y)
                      (ite (= M true) (ite (= Q2 true) (+ 1 Y) Y) Y)))
           (a!11 (ite (= P2 true)
                      (ite (= R2 true) (+ 1 S) S)
                      (ite (= M true) (ite (= Q2 true) (+ (- 1) S) S) S)))
           (a!12 (ite (= C true)
                      (ite (= Y2 true) (+ 1 P) P)
                      (ite (= M2 true) (ite (= Z2 true) (+ (- 1) P) P) P)))
           (a!13 (ite (= B true)
                      (ite (= W2 true) (+ (- 1) L) L)
                      (ite (= A true) (ite (= X2 true) (+ (- 1) L) L) L)))
           (a!15 (ite (= E2 true)
                      (ite (= V2 true) (+ 1 Q) Q)
                      (ite (= B true) (ite (= W2 true) (+ (- 1) Q) Q) Q)))
           (a!16 (ite (= E2 true)
                      (ite (= V2 true) (+ (- 1) W) W)
                      (ite (= T1 true) (ite (= U2 true) (+ (- 1) W) W) W)))
           (a!18 (ite (= X true)
                      (ite (= S2 true) (+ 1 U) U)
                      (ite (= M true) (ite (= Q2 true) (+ (- 1) U) U) U)))
           (a!20 (ite (= P2 true)
                      (ite (= R2 true) (+ (- 1) T) T)
                      (ite (= M true) (ite (= Q2 true) (+ 1 T) T) T)))
           (a!21 (or (or (= P2 true) (= E2 true)) (= T1 true)))
           (a!29 (and (and (not (= P2 true)) (not (= E2 true)))
                      (not (= T1 true))))
           (a!34 (and (and (not (= P2 true)) (not (= E2 true)))
                      (= T1 true)
                      (not (= I1 true))
                      (not (= X true))
                      (not (= M true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= O2 true))
                      (not (= N2 true))
                      (not (= M2 true))))
           (a!40 (or (and (= U1 true) (>= (- 32766 I2) 0)) (not (= S1 true))))
           (a!41 (= B3 (and (>= (+ (- 1) T) 0) (>= (+ (- 1) K) 0))))
           (a!42 (= A3 (and (>= (+ (- 1) Q) 0) (>= (+ (- 1) K) 0))))
           (a!43 (= Z2 (and (>= (+ (- 1) P) 0) (>= (+ (- 1) J) 0))))
           (a!44 (= Y2 (and (>= (+ (- 1) O) 0) (>= (+ (- 1) N) 0))))
           (a!45 (= X2 (and (>= (+ (- 1) R) 0) (>= (+ (- 1) L) 0))))
           (a!46 (= W2 (and (>= (+ (- 1) Q) 0) (>= (+ (- 1) L) 0))))
           (a!47 (= V2 (and (>= (+ (- 1) W) 0) (>= (+ (- 1) R) 0))))
           (a!48 (= U2 (and (>= (+ (- 1) W) 0) (>= (+ (- 1) Q) 0))))
           (a!49 (= T2 (and (>= (+ (- 1) V) 0) (>= (+ (- 1) O) 0))))
           (a!50 (= S2 (and (>= (+ (- 1) V) 0) (>= (+ (- 1) R) 0))))
           (a!51 (= R2 (and (>= (+ (- 1) Y) 0) (>= (+ (- 1) T) 0))))
           (a!52 (= Q2 (and (>= (+ (- 1) U) 0) (>= (+ (- 1) S) 0)))))
     (let ((a!2 (- V1 (ite (= O2 true) (ite (= B3 true) (+ 1 J) J) a!1)))
           (a!4 (ite (= B true)
                     (ite (= W2 true) (+ 1 K) K)
                     (ite (= A true) (ite (= X2 true) (+ 1 K) K) a!3)))
           (a!9 (ite (= E2 true)
                     (ite (= V2 true) (+ 1 V) V)
                     (ite (= T1 true) (ite (= U2 true) (+ 1 V) V) a!8)))
           (a!14 (- X1 (ite (= C true) (ite (= Y2 true) (+ 1 L) L) a!13)))
           (a!17 (- I2 (ite (= P2 true) (ite (= R2 true) (+ 1 W) W) a!16)))
           (a!19 (- G2 (ite (= I1 true) (ite (= T2 true) (+ 1 U) U) a!18)))
           (a!22 (or (or (or a!21 (= I1 true)) (= X true)) (= M true)))
           (a!25 (or (or (or a!21 (= I1 true)) (= X true))
                     (not (= M true))
                     (= C true)
                     (= B true)
                     (= A true)
                     (= O2 true)
                     (= N2 true)
                     (= M2 true)))
           (a!30 (and (and a!29 (not (= I1 true))) (not (= X true))))
           (a!35 (and (and a!29 (not (= I1 true)))
                      (= X true)
                      (not (= M true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= O2 true))
                      (not (= N2 true))
                      (not (= M2 true)))))
     (let ((a!23 (or (or (or a!22 (= C true)) (= B true)) (= A true)))
           (a!26 (or (or (or a!22 (= C true)) (= B true))
                     (not (= A true))
                     (= O2 true)
                     (= N2 true)
                     (= M2 true)))
           (a!31 (and (and a!30 (not (= M true))) (not (= C true))))
           (a!36 (and (and a!30 (not (= M true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true))
                      (not (= O2 true))
                      (not (= N2 true))
                      (not (= M2 true)))))
     (let ((a!24 (or (or (or a!23 (= O2 true)) (= N2 true)) (= M2 true)))
           (a!27 (or (or (or a!23 (= O2 true)) (= N2 true)) (not (= M2 true))))
           (a!32 (and (and a!31 (not (= B true))) (not (= A true))))
           (a!37 (and (and a!31 (not (= B true)))
                      (= A true)
                      (not (= O2 true))
                      (not (= N2 true))
                      (not (= M2 true)))))
     (let ((a!28 (and a!24
                      (or (not (= P2 true))
                          (= E2 true)
                          (= T1 true)
                          (= I1 true)
                          (= X true)
                          (= M true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= O2 true)
                          (= N2 true)
                          (= M2 true))
                      (or (= P2 true)
                          (not (= E2 true))
                          (= T1 true)
                          (= I1 true)
                          (= X true)
                          (= M true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= O2 true)
                          (= N2 true)
                          (= M2 true))
                      (or (or (= P2 true) (= E2 true))
                          (not (= T1 true))
                          (= I1 true)
                          (= X true)
                          (= M true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= O2 true)
                          (= N2 true)
                          (= M2 true))
                      (or a!21
                          (not (= I1 true))
                          (= X true)
                          (= M true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= O2 true)
                          (= N2 true)
                          (= M2 true))
                      (or (or a!21 (= I1 true))
                          (not (= X true))
                          (= M true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= O2 true)
                          (= N2 true)
                          (= M2 true))
                      a!25
                      (or a!22
                          (not (= C true))
                          (= B true)
                          (= A true)
                          (= O2 true)
                          (= N2 true)
                          (= M2 true))
                      (or (or a!22 (= C true))
                          (not (= B true))
                          (= A true)
                          (= O2 true)
                          (= N2 true)
                          (= M2 true))
                      a!26
                      (or a!23 (not (= O2 true)) (= N2 true) (= M2 true))
                      (or (or a!23 (= O2 true)) (not (= N2 true)) (= M2 true))
                      a!27))
           (a!33 (and (and a!32 (not (= O2 true))) (not (= N2 true))))
           (a!38 (and (and a!32 (not (= O2 true)))
                      (= N2 true)
                      (not (= M2 true)))))
     (let ((a!39 (or (not (= U1 true))
                     (and a!33 (not (= M2 true)))
                     (and (= P2 true)
                          (not (= E2 true))
                          (not (= T1 true))
                          (not (= I1 true))
                          (not (= X true))
                          (not (= M true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= O2 true))
                          (not (= N2 true))
                          (not (= M2 true)))
                     (and (not (= P2 true))
                          (= E2 true)
                          (not (= T1 true))
                          (not (= I1 true))
                          (not (= X true))
                          (not (= M true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= O2 true))
                          (not (= N2 true))
                          (not (= M2 true)))
                     a!34
                     (and a!29
                          (= I1 true)
                          (not (= X true))
                          (not (= M true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= O2 true))
                          (not (= N2 true))
                          (not (= M2 true)))
                     a!35
                     (and a!30
                          (= M true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= O2 true))
                          (not (= N2 true))
                          (not (= M2 true)))
                     a!36
                     (and a!31
                          (= B true)
                          (not (= A true))
                          (not (= O2 true))
                          (not (= N2 true))
                          (not (= M2 true)))
                     a!37
                     (and a!32 (= O2 true) (not (= N2 true)) (not (= M2 true)))
                     a!38
                     (and a!33 (= M2 true)))))
     (let ((a!53 (and (str_invariant N1
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
                      (= a!2 0)
                      (= (- W1 a!4) 0)
                      (= (- C2 a!5) 0)
                      (= (- Y1 a!6) 0)
                      (= (- Z1 a!7) 0)
                      (= (- H2 a!9) 0)
                      (= (- J2 a!10) 0)
                      (or (not (= R1 true)) (>= I2 0) (not (= L2 true)))
                      (or (and (= S1 true) (= G true)) (not (= R1 true)))
                      (= (- D2 a!11) 0)
                      (= (- A2 a!12) 0)
                      (= a!14 0)
                      (= (- B2 a!15) 0)
                      (= a!17 0)
                      (= a!19 0)
                      (= (- F2 a!20) 0)
                      (or (and (= R1 true) (< I2 0)) (= L2 true))
                      (or (= U1 true) a!28)
                      (or (not (= S1 true)) (not (= G true)) (= R1 true))
                      (not (= Q1 true))
                      a!39
                      (not (= P1 true))
                      a!40
                      (not (= O1 true))
                      (or (not (= U1 true)) (< (- 32766 I2) 0) (= S1 true))
                      a!41
                      a!42
                      a!43
                      a!44
                      a!45
                      a!46
                      a!47
                      a!48
                      a!49
                      a!50
                      a!51
                      a!52
                      (not (= K2 true)))))
       (=> a!53
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
                          O1)))))))))
    ))


(check-sat)
(exit)
