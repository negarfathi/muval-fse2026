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
         (F Bool)
         (G Bool)
         (H Bool)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
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
         (A1 Bool)
         (B1 Bool))
  (=> (and (str_invariant B1
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
              (not (= O true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Int)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
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
         (A1 Bool)
         (B1 Bool))
  (let ((a!1 (or (or (= B1 true) (= A1 true)) (= Z true)))
           (a!9 (and (and (not (= B1 true)) (not (= A1 true))) (not (= Z true))))
           (a!14 (and (and (not (= B1 true)) (not (= A1 true)))
                      (= Z true)
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true))))
           (a!20 (or (and (= G true) (>= (+ (- 1) P) 0)) (not (= F true)))))
     (let ((a!2 (or (or (or a!1 (= Y true)) (= X true)) (= W true)))
           (a!5 (or (or (or a!1 (= Y true)) (= X true))
                    (not (= W true))
                    (= V true)
                    (= U true)
                    (= T true)
                    (= S true)
                    (= R true)
                    (= Q true)))
           (a!10 (and (and a!9 (not (= Y true))) (not (= X true))))
           (a!15 (and (and a!9 (not (= Y true)))
                      (= X true)
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true)))))
     (let ((a!3 (or (or (or a!2 (= V true)) (= U true)) (= T true)))
           (a!6 (or (or (or a!2 (= V true)) (= U true))
                    (not (= T true))
                    (= S true)
                    (= R true)
                    (= Q true)))
           (a!11 (and (and a!10 (not (= W true))) (not (= V true))))
           (a!16 (and (and a!10 (not (= W true)))
                      (= V true)
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true)))))
     (let ((a!4 (or (or (or a!3 (= S true)) (= R true)) (= Q true)))
           (a!7 (or (or (or a!3 (= S true)) (= R true)) (not (= Q true))))
           (a!12 (and (and a!11 (not (= U true))) (not (= T true))))
           (a!17 (and (and a!11 (not (= U true)))
                      (= T true)
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true)))))
     (let ((a!8 (and a!4
                     (or (not (= B1 true))
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or (= B1 true)
                         (not (= A1 true))
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or (or (= B1 true) (= A1 true))
                         (not (= Z true))
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or a!1
                         (not (= Y true))
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or (or a!1 (= Y true))
                         (not (= X true))
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     a!5
                     (or a!2
                         (not (= V true))
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or (or a!2 (= V true))
                         (not (= U true))
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     a!6
                     (or a!3 (not (= S true)) (= R true) (= Q true))
                     (or (or a!3 (= S true)) (not (= R true)) (= Q true))
                     a!7))
           (a!13 (and (and a!12 (not (= S true))) (not (= R true))))
           (a!18 (and (and a!12 (not (= S true))) (= R true) (not (= Q true)))))
     (let ((a!19 (or (not (= G true))
                     (and a!13 (not (= Q true)))
                     (and (= B1 true)
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     (and (not (= B1 true))
                          (= A1 true)
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!14
                     (and a!9
                          (= Y true)
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!15
                     (and a!10
                          (= W true)
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!16
                     (and a!11
                          (= U true)
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!17
                     (and a!12 (= S true) (not (= R true)) (not (= Q true)))
                     a!18
                     (and a!13 (= Q true)))))
     (let ((a!21 (and (= L 0)
                      (or (>= (+ (- 2) M) 0) (not (= H true)))
                      (= (- C P) 0)
                      (= K 0)
                      (or (= O true) (and (= E true) (= H true)))
                      (or (= F true) (not (= E true)))
                      (or (< (+ (- 2) M) 0) (= H true))
                      (= (- I C) 0)
                      (= J 0)
                      (= M 0)
                      (or (not (= O true)) (not (= E true)) (not (= H true)))
                      (or (= G true) a!8)
                      (or (not (= F true)) (= E true))
                      (= D true)
                      a!19
                      (= B true)
                      a!20
                      (= A true)
                      (or (not (= G true)) (< (+ (- 1) P) 0) (= F true))
                      (= N true))))
       (=> a!21
           (str_invariant B1
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
         (G Int)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
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
         (L1 Int)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Int)
         (S1 Bool)
         (T1 Int)
         (U1 Int)
         (V1 Int)
         (W1 Int)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Int)
         (A2 Bool)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool))
  (let ((a!1 (ite (= A true) (ite (>= (+ (- 1) O) 0) (+ (- 1) O) O) O))
           (a!6 (ite (= A2 true) (ite (>= (+ (- 1) R) 0) (+ 1 N) N) N))
           (a!12 (ite (= B2 true) (ite (>= (+ (- 1) P) 0) (+ (- 1) P) P) P))
           (a!15 (ite (= C2 true) (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q) Q))
           (a!18 (ite (>= (+ (- 1) R) 0) (+ (- 1) R) R))
           (a!21 (or (or (= D2 true) (= S1 true)) (= H1 true)))
           (a!29 (or (and (not (= O1 true)) (not (= I true))) (= N1 true)))
           (a!30 (and (and (not (= D2 true)) (not (= S1 true)))
                      (not (= H1 true))))
           (a!35 (and (and (not (= D2 true)) (not (= S1 true)))
                      (= H1 true)
                      (not (= W true))
                      (not (= L true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= C2 true))
                      (not (= B2 true))
                      (not (= A2 true))))
           (a!41 (or (and (= P1 true) (>= (+ (- 1) Z1) 0)) (not (= O1 true))))
           (a!42 (and (>= (+ (- 1) N) 0) (= O 0) (= Q 0) (= R 0) (= P 0)))
           (a!43 (= I2 (and (= (+ (- 1) P) 0) (= Q 0))))
           (a!44 (= H2 (and (= P 0) (= (+ (- 1) Q) 0))))
           (a!45 (and (>= (+ (- 1) N) 0) (>= (+ (+ (- 1) R) Q P O) 0))))
     (let ((a!2 (ite (= C true)
                     (ite (= J2 true) (+ 1 O) O)
                     (ite (= B true) (ite (= E2 true) 0 O) a!1)))
           (a!7 (ite (= B2 true) (ite (>= (+ (- 1) P) 0) (+ 1 N) N) a!6))
           (a!13 (ite (= D true)
                      (ite (>= (+ (- 2) Q P) 0) 1 P)
                      (ite (= B true) (ite (= E2 true) 1 P) a!12)))
           (a!16 (ite (= D true)
                      (ite (>= (+ (- 2) Q P) 0) (+ (+ (- 1) Q) P) Q)
                      (ite (= B true) (ite (= E2 true) (+ R Q P O) Q) a!15)))
           (a!19 (ite (= H1 true)
                      a!18
                      (ite (= B true)
                           (ite (= E2 true) 0 R)
                           (ite (= A2 true) a!18 R))))
           (a!22 (or (or (or a!21 (= W true)) (= L true)) (= D true)))
           (a!25 (or (or (or a!21 (= W true)) (= L true))
                     (not (= D true))
                     (= C true)
                     (= B true)
                     (= A true)
                     (= C2 true)
                     (= B2 true)
                     (= A2 true)))
           (a!31 (and (and a!30 (not (= W true))) (not (= L true))))
           (a!36 (and (and a!30 (not (= W true)))
                      (= L true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= C2 true))
                      (not (= B2 true))
                      (not (= A2 true)))))
     (let ((a!3 (ite (= W true)
                     (ite (= I2 true) (+ 1 O) O)
                     (ite (= L true) (ite (= H2 true) (+ 1 O) O) a!2)))
           (a!8 (ite (= C2 true) (ite (>= (+ (- 1) Q) 0) (+ 1 N) N) a!7))
           (a!14 (ite (= S1 true)
                      (ite (= F2 true) (+ P O) P)
                      (ite (= W true) (ite (= I2 true) 0 P) a!13)))
           (a!17 (ite (= S1 true)
                      (ite (= F2 true) (+ (+ 1 R) Q) Q)
                      (ite (= L true) (ite (= H2 true) 0 Q) a!16)))
           (a!20 (ite (= D2 true)
                      (ite (= G2 true) (+ 1 R) R)
                      (ite (= S1 true) (ite (= F2 true) 0 R) a!19)))
           (a!23 (or (or (or a!22 (= C true)) (= B true)) (= A true)))
           (a!26 (or (or (or a!22 (= C true)) (= B true))
                     (not (= A true))
                     (= C2 true)
                     (= B2 true)
                     (= A2 true)))
           (a!32 (and (and a!31 (not (= D true))) (not (= C true))))
           (a!37 (and (and a!31 (not (= D true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true))
                      (not (= C2 true))
                      (not (= B2 true))
                      (not (= A2 true)))))
     (let ((a!4 (ite (= H1 true) (ite (>= (+ (- 1) R) 0) (+ 1 O) O) a!3))
           (a!9 (ite (= A true) (ite (>= (+ (- 1) O) 0) (+ 1 N) N) a!8))
           (a!24 (or (or (or a!23 (= C2 true)) (= B2 true)) (= A2 true)))
           (a!27 (or (or (or a!23 (= C2 true)) (= B2 true)) (not (= A2 true))))
           (a!33 (and (and a!32 (not (= B true))) (not (= A true))))
           (a!38 (and (and a!32 (not (= B true)))
                      (= A true)
                      (not (= C2 true))
                      (not (= B2 true))
                      (not (= A2 true)))))
     (let ((a!5 (- T1 (ite (= S1 true) (ite (= F2 true) 0 O) a!4)))
           (a!10 (ite (= C true)
                      (ite (= J2 true) (+ (- 1) N) N)
                      (ite (= B true) (ite (= E2 true) (+ (- 1) N) N) a!9)))
           (a!28 (and a!24
                      (or (not (= D2 true))
                          (= S1 true)
                          (= H1 true)
                          (= W true)
                          (= L true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= C2 true)
                          (= B2 true)
                          (= A2 true))
                      (or (= D2 true)
                          (not (= S1 true))
                          (= H1 true)
                          (= W true)
                          (= L true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= C2 true)
                          (= B2 true)
                          (= A2 true))
                      (or (or (= D2 true) (= S1 true))
                          (not (= H1 true))
                          (= W true)
                          (= L true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= C2 true)
                          (= B2 true)
                          (= A2 true))
                      (or a!21
                          (not (= W true))
                          (= L true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= C2 true)
                          (= B2 true)
                          (= A2 true))
                      (or (or a!21 (= W true))
                          (not (= L true))
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= C2 true)
                          (= B2 true)
                          (= A2 true))
                      a!25
                      (or a!22
                          (not (= C true))
                          (= B true)
                          (= A true)
                          (= C2 true)
                          (= B2 true)
                          (= A2 true))
                      (or (or a!22 (= C true))
                          (not (= B true))
                          (= A true)
                          (= C2 true)
                          (= B2 true)
                          (= A2 true))
                      a!26
                      (or a!23 (not (= C2 true)) (= B2 true) (= A2 true))
                      (or (or a!23 (= C2 true)) (not (= B2 true)) (= A2 true))
                      a!27))
           (a!34 (and (and a!33 (not (= C2 true))) (not (= B2 true))))
           (a!39 (and (and a!33 (not (= C2 true)))
                      (= B2 true)
                      (not (= A2 true)))))
     (let ((a!11 (ite (= D2 true)
                      (ite (= G2 true) (+ (- 1) N) N)
                      (ite (= S1 true) (ite (= F2 true) (+ (- 1) N) N) a!10)))
           (a!40 (or (not (= P1 true))
                     (and a!34 (not (= A2 true)))
                     (and (= D2 true)
                          (not (= S1 true))
                          (not (= H1 true))
                          (not (= W true))
                          (not (= L true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= C2 true))
                          (not (= B2 true))
                          (not (= A2 true)))
                     (and (not (= D2 true))
                          (= S1 true)
                          (not (= H1 true))
                          (not (= W true))
                          (not (= L true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= C2 true))
                          (not (= B2 true))
                          (not (= A2 true)))
                     a!35
                     (and a!30
                          (= W true)
                          (not (= L true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= C2 true))
                          (not (= B2 true))
                          (not (= A2 true)))
                     a!36
                     (and a!31
                          (= D true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= C2 true))
                          (not (= B2 true))
                          (not (= A2 true)))
                     a!37
                     (and a!32
                          (= B true)
                          (not (= A true))
                          (not (= C2 true))
                          (not (= B2 true))
                          (not (= A2 true)))
                     a!38
                     (and a!33 (= C2 true) (not (= B2 true)) (not (= A2 true)))
                     a!39
                     (and a!34 (= A2 true)))))
     (let ((a!46 (and (str_invariant I1
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
                                     E)
                      (= a!5 0)
                      (= (- R1 a!11) 0)
                      (or (>= (+ (- 2) W1) 0) (not (= Q1 true)))
                      (= (- L1 G) 0)
                      (or (= Y1 true) (and (= N1 true) (= Q1 true)))
                      (or (= O1 true) (= I true) (not (= N1 true)))
                      (or (< (+ (- 2) W1) 0) (= Q1 true))
                      (= (- U1 a!14) 0)
                      (= (- V1 a!17) 0)
                      (= (- W1 a!20) 0)
                      (or (not (= Y1 true)) (not (= N1 true)) (not (= Q1 true)))
                      (or (= P1 true) a!28)
                      a!29
                      (not (= M1 true))
                      a!40
                      (not (= K1 true))
                      a!41
                      (not (= J1 true))
                      (or (not (= P1 true)) (< (+ (- 1) Z1) 0) (= O1 true))
                      (= J2 a!42)
                      a!43
                      a!44
                      (= G2 a!42)
                      (= F2 a!45)
                      (= E2 a!45)
                      (not (= X1 true)))))
       (=> a!46
           (str_invariant D2
                          S1
                          H1
                          W
                          L
                          D
                          C
                          B
                          A
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
                          R1
                          Q1
                          P1
                          O1
                          N1
                          M1
                          L1
                          K1
                          J1)))))))))
    ))


(check-sat)
(exit)
