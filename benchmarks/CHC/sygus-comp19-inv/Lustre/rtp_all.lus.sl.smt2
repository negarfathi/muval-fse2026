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
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
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
              (not (= R true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
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
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool))
  (let ((a!1 (or (not (= D true))
                    (and (not (= G true))
                         (>= P 0)
                         (>= (- 1 P) 0)
                         (>= O 0)
                         (>= N 0)
                         (>= M 0)
                         (>= L 0)
                         (>= K 0)
                         (>= J 0)
                         (>= I 0)
                         (>= H 0))
                    (not (= R true))))
           (a!2 (and (= D true)
                     (or (= G true)
                         (< P 0)
                         (< (- 1 P) 0)
                         (< O 0)
                         (< N 0)
                         (< M 0)
                         (< L 0)
                         (< K 0)
                         (< J 0)
                         (< I 0)
                         (< H 0))))
           (a!3 (or (or (= D1 true) (= C1 true)) (= B1 true)))
           (a!11 (and (and (not (= D1 true)) (not (= C1 true)))
                      (not (= B1 true))))
           (a!16 (and (and (not (= D1 true)) (not (= C1 true)))
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
           (a!22 (or (and (= F true)
                          (>= (- 32766 P) 0)
                          (>= (- 32766 O) 0)
                          (>= (- 32766 N) 0)
                          (>= (- 32766 M) 0)
                          (>= (- 32766 L) 0)
                          (>= (- 32766 K) 0)
                          (>= (- 32766 J) 0)
                          (>= (- 32766 I) 0)
                          (>= (- 32766 H) 0))
                     (not (= E true)))))
     (let ((a!4 (or (or (or a!3 (= A1 true)) (= Z true)) (= Y true)))
           (a!7 (or (or (or a!3 (= A1 true)) (= Z true))
                    (not (= Y true))
                    (= X true)
                    (= W true)
                    (= V true)
                    (= U true)
                    (= T true)
                    (= S true)))
           (a!12 (and (and a!11 (not (= A1 true))) (not (= Z true))))
           (a!17 (and (and a!11 (not (= A1 true)))
                      (= Z true)
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true)))))
     (let ((a!5 (or (or (or a!4 (= X true)) (= W true)) (= V true)))
           (a!8 (or (or (or a!4 (= X true)) (= W true))
                    (not (= V true))
                    (= U true)
                    (= T true)
                    (= S true)))
           (a!13 (and (and a!12 (not (= Y true))) (not (= X true))))
           (a!18 (and (and a!12 (not (= Y true)))
                      (= X true)
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true)))))
     (let ((a!6 (or (or (or a!5 (= U true)) (= T true)) (= S true)))
           (a!9 (or (or (or a!5 (= U true)) (= T true)) (not (= S true))))
           (a!14 (and (and a!13 (not (= W true))) (not (= V true))))
           (a!19 (and (and a!13 (not (= W true)))
                      (= V true)
                      (not (= U true))
                      (not (= T true))
                      (not (= S true)))))
     (let ((a!10 (and a!6
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
                      (or a!3
                          (not (= A1 true))
                          (= Z true)
                          (= Y true)
                          (= X true)
                          (= W true)
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true))
                      (or (or a!3 (= A1 true))
                          (not (= Z true))
                          (= Y true)
                          (= X true)
                          (= W true)
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true))
                      a!7
                      (or a!4
                          (not (= X true))
                          (= W true)
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true))
                      (or (or a!4 (= X true))
                          (not (= W true))
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true))
                      a!8
                      (or a!5 (not (= U true)) (= T true) (= S true))
                      (or (or a!5 (= U true)) (not (= T true)) (= S true))
                      a!9))
           (a!15 (and (and a!14 (not (= U true))) (not (= T true))))
           (a!20 (and (and a!14 (not (= U true))) (= T true) (not (= S true)))))
     (let ((a!21 (or (not (= F true))
                     (and a!15 (not (= S true)))
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
                     a!16
                     (and a!11
                          (= A1 true)
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true)))
                     a!17
                     (and a!12
                          (= Y true)
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true)))
                     a!18
                     (and a!13
                          (= W true)
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true)))
                     a!19
                     (and a!14 (= U true) (not (= T true)) (not (= S true)))
                     a!20
                     (and a!15 (= S true)))))
     (let ((a!23 (and (or (>= (+ (- 2) P) 0) (not (= G true)))
                      (= I 0)
                      a!1
                      (or (= E true) (not (= D true)))
                      (or (< (+ (- 2) P) 0) (= G true))
                      (= J 0)
                      (= L 0)
                      (= K 0)
                      (= N 0)
                      (= M 0)
                      (= H 0)
                      (= O 0)
                      (= (+ (- 1) P) 0)
                      (or a!2 (= R true))
                      (or (= F true) a!10)
                      (or (not (= E true)) (= D true))
                      (= C true)
                      a!21
                      (= B true)
                      a!22
                      (= A true)
                      (or (not (= F true))
                          (< (- 32766 P) 0)
                          (< (- 32766 O) 0)
                          (< (- 32766 N) 0)
                          (< (- 32766 M) 0)
                          (< (- 32766 L) 0)
                          (< (- 32766 K) 0)
                          (< (- 32766 J) 0)
                          (< (- 32766 I) 0)
                          (< (- 32766 H) 0)
                          (= E true))
                      (= Q true))))
       (=> a!23
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
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Bool)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
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
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Int)
         (W1 Bool)
         (X1 Int)
         (Y1 Int)
         (Z1 Int)
         (A2 Int)
         (B2 Int)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool))
  (let ((a!1 (ite (>= (+ (- 1) O) 0) (+ (- 1) O) O))
           (a!4 (ite (= E true) (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q) Q))
           (a!6 (ite (= G2 true) (ite (>= (+ (- 1) N) 0) (+ (- 1) N) N) N))
           (a!8 (ite (= F2 true) (ite (>= (+ (- 1) M) 0) (+ (- 1) M) M) M))
           (a!10 (ite (>= (+ (- 1) R) 0) (+ (- 1) R) R))
           (a!12 (or (not (= O1 true))
                     (and (not (= R1 true))
                          (>= B2 0)
                          (>= (- 1 B2) 0)
                          (>= A2 0)
                          (>= Z1 0)
                          (>= Y1 0)
                          (>= X1 0)
                          (>= V1 0)
                          (>= U1 0)
                          (>= T1 0)
                          (>= S1 0))
                     (not (= D2 true))))
           (a!13 (ite (= L1 true) (ite (>= (+ (- 1) S) 0) (+ (- 1) S) S) S))
           (a!15 (ite (= E2 true) (ite (>= (+ (- 1) L) 0) (+ (- 1) L) L) L))
           (a!20 (ite (= E2 true) (ite (>= (+ (- 1) L) 0) (+ 1 T) T) T))
           (a!23 (ite (= H2 true) (ite (>= (+ (- 1) U) 0) (+ (- 1) U) U) U))
           (a!24 (and (= O1 true)
                      (or (= R1 true)
                          (< B2 0)
                          (< (- 1 B2) 0)
                          (< A2 0)
                          (< Z1 0)
                          (< Y1 0)
                          (< X1 0)
                          (< V1 0)
                          (< U1 0)
                          (< T1 0)
                          (< S1 0))))
           (a!25 (or (or (= H2 true) (= W1 true)) (= L1 true)))
           (a!33 (and (and (not (= H2 true)) (not (= W1 true)))
                      (not (= L1 true))))
           (a!38 (and (and (not (= H2 true)) (not (= W1 true)))
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
           (a!44 (or (and (= Q1 true)
                          (>= (- 32766 B2) 0)
                          (>= (- 32766 A2) 0)
                          (>= (- 32766 Z1) 0)
                          (>= (- 32766 Y1) 0)
                          (>= (- 32766 X1) 0)
                          (>= (- 32766 V1) 0)
                          (>= (- 32766 U1) 0)
                          (>= (- 32766 T1) 0)
                          (>= (- 32766 S1) 0))
                     (not (= P1 true)))))
     (let ((a!2 (ite (= C true) a!1 (ite (= B true) a!1 (ite (= A true) a!1 O))))
           (a!5 (ite (= A1 true) (ite (>= (+ (- 1) R) 0) (+ 1 Q) Q) a!4))
           (a!7 (ite (= B true) (ite (>= (+ (- 1) O) 0) (+ 1 N) N) a!6))
           (a!9 (ite (= A true) (ite (>= (+ (- 1) O) 0) (+ 1 M) M) a!8))
           (a!11 (ite (= L1 true)
                      (ite (>= (+ (- 1) S) 0) (+ 1 R) R)
                      (ite (= A1 true) a!10 (ite (= P true) a!10 R))))
           (a!14 (ite (= W1 true) (ite (>= (+ (- 1) T) 0) (+ 1 S) S) a!13))
           (a!16 (ite (= F2 true) (ite (>= (+ (- 1) M) 0) (+ 1 L) L) a!15))
           (a!21 (ite (= W1 true) (ite (>= (+ (- 1) T) 0) (+ (- 1) T) T) a!20))
           (a!26 (or (or (or a!25 (= A1 true)) (= P true)) (= E true)))
           (a!29 (or (or (or a!25 (= A1 true)) (= P true))
                     (not (= E true))
                     (= C true)
                     (= B true)
                     (= A true)
                     (= G2 true)
                     (= F2 true)
                     (= E2 true)))
           (a!34 (and (and a!33 (not (= A1 true))) (not (= P true))))
           (a!39 (and (and a!33 (not (= A1 true)))
                      (= P true)
                      (not (= E true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= G2 true))
                      (not (= F2 true))
                      (not (= E2 true)))))
     (let ((a!3 (ite (= E true) (ite (>= (+ (- 1) Q) 0) (+ 1 O) O) a!2))
           (a!17 (ite (= G2 true) (ite (>= (+ (- 1) N) 0) (+ 1 L) L) a!16))
           (a!22 (ite (= H2 true) (ite (>= (+ (- 1) U) 0) (+ 1 T) T) a!21))
           (a!27 (or (or (or a!26 (= C true)) (= B true)) (= A true)))
           (a!30 (or (or (or a!26 (= C true)) (= B true))
                     (not (= A true))
                     (= G2 true)
                     (= F2 true)
                     (= E2 true)))
           (a!35 (and (and a!34 (not (= E true))) (not (= C true))))
           (a!40 (and (and a!34 (not (= E true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true))
                      (not (= G2 true))
                      (not (= F2 true))
                      (not (= E2 true)))))
     (let ((a!18 (ite (= C true) (ite (>= (+ (- 1) O) 0) (+ 1 L) L) a!17))
           (a!28 (or (or (or a!27 (= G2 true)) (= F2 true)) (= E2 true)))
           (a!31 (or (or (or a!27 (= G2 true)) (= F2 true)) (not (= E2 true))))
           (a!36 (and (and a!35 (not (= B true))) (not (= A true))))
           (a!41 (and (and a!35 (not (= B true)))
                      (= A true)
                      (not (= G2 true))
                      (not (= F2 true))
                      (not (= E2 true)))))
     (let ((a!19 (ite (= P true) (ite (>= (+ (- 1) R) 0) (+ 1 L) L) a!18))
           (a!32 (and a!28
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
                      (or a!25
                          (not (= A1 true))
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      (or (or a!25 (= A1 true))
                          (not (= P true))
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      a!29
                      (or a!26
                          (not (= C true))
                          (= B true)
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      (or (or a!26 (= C true))
                          (not (= B true))
                          (= A true)
                          (= G2 true)
                          (= F2 true)
                          (= E2 true))
                      a!30
                      (or a!27 (not (= G2 true)) (= F2 true) (= E2 true))
                      (or (or a!27 (= G2 true)) (not (= F2 true)) (= E2 true))
                      a!31))
           (a!37 (and (and a!36 (not (= G2 true))) (not (= F2 true))))
           (a!42 (and (and a!36 (not (= G2 true)))
                      (= F2 true)
                      (not (= E2 true)))))
     (let ((a!43 (or (not (= Q1 true))
                     (and a!37 (not (= E2 true)))
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
                     a!38
                     (and a!33
                          (= A1 true)
                          (not (= P true))
                          (not (= E true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= G2 true))
                          (not (= F2 true))
                          (not (= E2 true)))
                     a!39
                     (and a!34
                          (= E true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= G2 true))
                          (not (= F2 true))
                          (not (= E2 true)))
                     a!40
                     (and a!35
                          (= B true)
                          (not (= A true))
                          (not (= G2 true))
                          (not (= F2 true))
                          (not (= E2 true)))
                     a!41
                     (and a!36 (= G2 true) (not (= F2 true)) (not (= E2 true)))
                     a!42
                     (and a!37 (= E2 true)))))
     (let ((a!45 (and (str_invariant J1
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
                      (= (- V1 a!3) 0)
                      (= (- X1 a!5) 0)
                      (= (- U1 a!7) 0)
                      (or (>= (+ (- 2) B2) 0) (not (= R1 true)))
                      (= (- T1 a!9) 0)
                      (= (- Y1 a!11) 0)
                      a!12
                      (or (and (= P1 true) (= H true)) (not (= O1 true)))
                      (or (< (+ (- 2) B2) 0) (= R1 true))
                      (= (- Z1 a!14) 0)
                      (= (- S1 a!19) 0)
                      (= (- A2 a!22) 0)
                      (= (- B2 a!23) 0)
                      (or a!24 (= D2 true))
                      (or (= Q1 true) a!32)
                      (or (not (= P1 true)) (not (= H true)) (= O1 true))
                      (not (= N1 true))
                      a!43
                      (not (= M1 true))
                      a!44
                      (not (= K1 true))
                      (or (not (= Q1 true))
                          (< (- 32766 B2) 0)
                          (< (- 32766 A2) 0)
                          (< (- 32766 Z1) 0)
                          (< (- 32766 Y1) 0)
                          (< (- 32766 X1) 0)
                          (< (- 32766 V1) 0)
                          (< (- 32766 U1) 0)
                          (< (- 32766 T1) 0)
                          (< (- 32766 S1) 0)
                          (= P1 true))
                      (not (= C2 true)))))
       (=> a!45
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
