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
              Bool)
             Bool)
(assert (forall ((A Bool)
         (B Bool)
         (C Int)
         (D Bool)
         (E Int)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Bool)
         (P Bool)
         (Q Int)
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
         (C1 Bool))
  (=> (and (str_invariant C1
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
              (not (= P true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Int)
         (D Bool)
         (E Int)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Bool)
         (P Bool)
         (Q Int)
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
         (C1 Bool))
  (let ((a!1 (or (or (= C1 true) (= B1 true)) (= A1 true)))
           (a!9 (and (and (not (= C1 true)) (not (= B1 true)))
                     (not (= A1 true))))
           (a!14 (and (and (not (= C1 true)) (not (= B1 true)))
                      (= A1 true)
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true))))
           (a!20 (or (and (= H true) (>= (+ (- 1) Q) 0)) (not (= G true)))))
     (let ((a!2 (or (or (or a!1 (= Z true)) (= Y true)) (= X true)))
           (a!5 (or (or (or a!1 (= Z true)) (= Y true))
                    (not (= X true))
                    (= W true)
                    (= V true)
                    (= U true)
                    (= T true)
                    (= S true)
                    (= R true)))
           (a!10 (and (and a!9 (not (= Z true))) (not (= Y true))))
           (a!15 (and (and a!9 (not (= Z true)))
                      (= Y true)
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true)))))
     (let ((a!3 (or (or (or a!2 (= W true)) (= V true)) (= U true)))
           (a!6 (or (or (or a!2 (= W true)) (= V true))
                    (not (= U true))
                    (= T true)
                    (= S true)
                    (= R true)))
           (a!11 (and (and a!10 (not (= X true))) (not (= W true))))
           (a!16 (and (and a!10 (not (= X true)))
                      (= W true)
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true)))))
     (let ((a!4 (or (or (or a!3 (= T true)) (= S true)) (= R true)))
           (a!7 (or (or (or a!3 (= T true)) (= S true)) (not (= R true))))
           (a!12 (and (and a!11 (not (= V true))) (not (= U true))))
           (a!17 (and (and a!11 (not (= V true)))
                      (= U true)
                      (not (= T true))
                      (not (= S true))
                      (not (= R true)))))
     (let ((a!8 (and a!4
                     (or (not (= C1 true))
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or (= C1 true)
                         (not (= B1 true))
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or (or (= C1 true) (= B1 true))
                         (not (= A1 true))
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or a!1
                         (not (= Z true))
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or (or a!1 (= Z true))
                         (not (= Y true))
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     a!5
                     (or a!2
                         (not (= W true))
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or (or a!2 (= W true))
                         (not (= V true))
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     a!6
                     (or a!3 (not (= T true)) (= S true) (= R true))
                     (or (or a!3 (= T true)) (not (= S true)) (= R true))
                     a!7))
           (a!13 (and (and a!12 (not (= T true))) (not (= S true))))
           (a!18 (and (and a!12 (not (= T true))) (= S true) (not (= R true)))))
     (let ((a!19 (or (not (= H true))
                     (and a!13 (not (= R true)))
                     (and (= C1 true)
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     (and (not (= C1 true))
                          (= B1 true)
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!14
                     (and a!9
                          (= Z true)
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!15
                     (and a!10
                          (= X true)
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!16
                     (and a!11
                          (= V true)
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!17
                     (and a!12 (= T true) (not (= S true)) (not (= R true)))
                     a!18
                     (and a!13 (= R true)))))
     (let ((a!21 (and (= M 0)
                      (or (>= (+ (- 2) N) 0) (not (= I true)))
                      (= (- C Q) 0)
                      (= L 0)
                      (or (= G true) (not (= F true)))
                      (or (< (+ (- 2) N) 0) (= I true))
                      (= (- J C) 0)
                      (= K 0)
                      (= N 0)
                      (= (- E (+ N M L K J)) 0)
                      (or (= H true) a!8)
                      (or (not (= G true)) (= F true))
                      (= D true)
                      a!19
                      (= B true)
                      a!20
                      (= A true)
                      (or (not (= H true)) (< (+ (- 1) Q) 0) (= G true))
                      (= P true)
                      (= O true))))
       (=> a!21
           (str_invariant C1
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
         (G Int)
         (H Bool)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Bool)
         (U Bool)
         (V Int)
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
         (M1 Int)
         (N1 Bool)
         (O1 Int)
         (P1 Bool)
         (Q1 Bool)
         (R1 Bool)
         (S1 Bool)
         (T1 Int)
         (U1 Bool)
         (V1 Int)
         (W1 Int)
         (X1 Int)
         (Y1 Int)
         (Z1 Bool)
         (A2 Bool)
         (B2 Int)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool)
         (K2 Bool)
         (L2 Bool))
  (let ((a!1 (ite (= A true) (ite (>= (+ (- 1) P) 0) (+ (- 1) P) P) P))
           (a!6 (ite (= C2 true) (ite (>= (+ (- 1) S) 0) (+ 1 O) O) O))
           (a!12 (= (- (+ T1 V1 W1 X1 Y1) I) 0))
           (a!13 (ite (= D2 true) (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q) Q))
           (a!16 (ite (= E2 true) (ite (>= (+ (- 1) R) 0) (+ (- 1) R) R) R))
           (a!19 (ite (>= (+ (- 1) S) 0) (+ (- 1) S) S))
           (a!22 (or (or (= F2 true) (= U1 true)) (= J1 true)))
           (a!30 (and (and (not (= F2 true)) (not (= U1 true)))
                      (not (= J1 true))))
           (a!35 (and (and (not (= F2 true)) (not (= U1 true)))
                      (= J1 true)
                      (not (= Y true))
                      (not (= N true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= E2 true))
                      (not (= D2 true))
                      (not (= C2 true))))
           (a!41 (or (and (= R1 true) (>= (+ (- 1) B2) 0)) (not (= Q1 true))))
           (a!42 (and (>= (+ (- 1) O) 0) (= P 0) (= R 0) (= S 0) (= Q 0)))
           (a!43 (= K2 (and (= (+ (- 1) Q) 0) (= R 0))))
           (a!44 (= J2 (and (= Q 0) (= (+ (- 1) R) 0))))
           (a!45 (= H2 (and (>= (+ (- 1) O) 0) (>= (+ S R Q P) 0))))
           (a!46 (and (>= (+ (- 1) O) 0) (>= (+ (+ (- 1) S) R Q P) 0))))
     (let ((a!2 (ite (= C true)
                     (ite (= L2 true) (+ 1 P) P)
                     (ite (= B true) (ite (= G2 true) 0 P) a!1)))
           (a!7 (ite (= D2 true) (ite (>= (+ (- 1) Q) 0) (+ 1 O) O) a!6))
           (a!14 (ite (= D true)
                      (ite (>= (+ (- 2) R Q) 0) 1 Q)
                      (ite (= B true) (ite (= G2 true) 1 Q) a!13)))
           (a!17 (ite (= D true)
                      (ite (>= (+ (- 2) R Q) 0) (+ (+ (- 1) R) Q) R)
                      (ite (= B true) (ite (= G2 true) (+ S R Q P) R) a!16)))
           (a!20 (ite (= J1 true)
                      a!19
                      (ite (= B true)
                           (ite (= G2 true) 0 S)
                           (ite (= C2 true) a!19 S))))
           (a!23 (or (or (or a!22 (= Y true)) (= N true)) (= D true)))
           (a!26 (or (or (or a!22 (= Y true)) (= N true))
                     (not (= D true))
                     (= C true)
                     (= B true)
                     (= A true)
                     (= E2 true)
                     (= D2 true)
                     (= C2 true)))
           (a!31 (and (and a!30 (not (= Y true))) (not (= N true))))
           (a!36 (and (and a!30 (not (= Y true)))
                      (= N true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= E2 true))
                      (not (= D2 true))
                      (not (= C2 true)))))
     (let ((a!3 (ite (= Y true)
                     (ite (= K2 true) (+ 1 P) P)
                     (ite (= N true) (ite (= J2 true) (+ 1 P) P) a!2)))
           (a!8 (ite (= E2 true) (ite (>= (+ (- 1) R) 0) (+ 1 O) O) a!7))
           (a!15 (ite (= U1 true)
                      (ite (= H2 true) (+ Q P) Q)
                      (ite (= Y true) (ite (= K2 true) 0 Q) a!14)))
           (a!18 (ite (= U1 true)
                      (ite (= H2 true) (+ (+ 1 S) R) R)
                      (ite (= N true) (ite (= J2 true) 0 R) a!17)))
           (a!21 (ite (= F2 true)
                      (ite (= I2 true) (+ 1 S) S)
                      (ite (= U1 true) (ite (= H2 true) 0 S) a!20)))
           (a!24 (or (or (or a!23 (= C true)) (= B true)) (= A true)))
           (a!27 (or (or (or a!23 (= C true)) (= B true))
                     (not (= A true))
                     (= E2 true)
                     (= D2 true)
                     (= C2 true)))
           (a!32 (and (and a!31 (not (= D true))) (not (= C true))))
           (a!37 (and (and a!31 (not (= D true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true))
                      (not (= E2 true))
                      (not (= D2 true))
                      (not (= C2 true)))))
     (let ((a!4 (ite (= J1 true) (ite (>= (+ (- 1) S) 0) (+ 1 P) P) a!3))
           (a!9 (ite (= A true) (ite (>= (+ (- 1) P) 0) (+ 1 O) O) a!8))
           (a!25 (or (or (or a!24 (= E2 true)) (= D2 true)) (= C2 true)))
           (a!28 (or (or (or a!24 (= E2 true)) (= D2 true)) (not (= C2 true))))
           (a!33 (and (and a!32 (not (= B true))) (not (= A true))))
           (a!38 (and (and a!32 (not (= B true)))
                      (= A true)
                      (not (= E2 true))
                      (not (= D2 true))
                      (not (= C2 true)))))
     (let ((a!5 (- V1 (ite (= U1 true) (ite (= H2 true) 0 P) a!4)))
           (a!10 (ite (= C true)
                      (ite (= L2 true) (+ (- 1) O) O)
                      (ite (= B true) (ite (= G2 true) (+ (- 1) O) O) a!9)))
           (a!29 (and a!25
                      (or (not (= F2 true))
                          (= U1 true)
                          (= J1 true)
                          (= Y true)
                          (= N true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      (or (= F2 true)
                          (not (= U1 true))
                          (= J1 true)
                          (= Y true)
                          (= N true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      (or (or (= F2 true) (= U1 true))
                          (not (= J1 true))
                          (= Y true)
                          (= N true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      (or a!22
                          (not (= Y true))
                          (= N true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      (or (or a!22 (= Y true))
                          (not (= N true))
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      a!26
                      (or a!23
                          (not (= C true))
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      (or (or a!23 (= C true))
                          (not (= B true))
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      a!27
                      (or a!24 (not (= E2 true)) (= D2 true) (= C2 true))
                      (or (or a!24 (= E2 true)) (not (= D2 true)) (= C2 true))
                      a!28))
           (a!34 (and (and a!33 (not (= E2 true))) (not (= D2 true))))
           (a!39 (and (and a!33 (not (= E2 true)))
                      (= D2 true)
                      (not (= C2 true)))))
     (let ((a!11 (ite (= F2 true)
                      (ite (= I2 true) (+ (- 1) O) O)
                      (ite (= U1 true) (ite (= H2 true) (+ (- 1) O) O) a!10)))
           (a!40 (or (not (= R1 true))
                     (and a!34 (not (= C2 true)))
                     (and (= F2 true)
                          (not (= U1 true))
                          (not (= J1 true))
                          (not (= Y true))
                          (not (= N true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= E2 true))
                          (not (= D2 true))
                          (not (= C2 true)))
                     (and (not (= F2 true))
                          (= U1 true)
                          (not (= J1 true))
                          (not (= Y true))
                          (not (= N true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= E2 true))
                          (not (= D2 true))
                          (not (= C2 true)))
                     a!35
                     (and a!30
                          (= Y true)
                          (not (= N true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= E2 true))
                          (not (= D2 true))
                          (not (= C2 true)))
                     a!36
                     (and a!31
                          (= D true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= E2 true))
                          (not (= D2 true))
                          (not (= C2 true)))
                     a!37
                     (and a!32
                          (= B true)
                          (not (= A true))
                          (not (= E2 true))
                          (not (= D2 true))
                          (not (= C2 true)))
                     a!38
                     (and a!33 (= E2 true) (not (= D2 true)) (not (= C2 true)))
                     a!39
                     (and a!34 (= C2 true)))))
     (let ((a!47 (and (str_invariant I1
                                     H1
                                     G1
                                     F1
                                     E1
                                     D1
                                     C1
                                     B1
                                     A1
                                     Z
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
                                     M
                                     L
                                     K
                                     J
                                     I
                                     H
                                     G
                                     F
                                     E)
                      (= a!5 0)
                      (= (- T1 a!11) 0)
                      (or (not (= P1 true)) a!12 (not (= A2 true)))
                      (or (>= (+ (- 2) Y1) 0) (not (= S1 true)))
                      (= (- M1 G) 0)
                      (or (and (= P1 true) (not a!12)) (= A2 true))
                      (or (and (= Q1 true) (= J true)) (not (= P1 true)))
                      (or (< (+ (- 2) Y1) 0) (= S1 true))
                      (= (- W1 a!15) 0)
                      (= (- X1 a!18) 0)
                      (= (- Y1 a!21) 0)
                      (= (- O1 (+ T1 V1 W1 X1 Y1)) 0)
                      (or (= R1 true) a!29)
                      (or (not (= Q1 true)) (not (= J true)) (= P1 true))
                      (not (= N1 true))
                      a!40
                      (not (= L1 true))
                      a!41
                      (not (= K1 true))
                      (or (not (= R1 true)) (< (+ (- 1) B2) 0) (= Q1 true))
                      (= L2 a!42)
                      a!43
                      a!44
                      (= I2 a!42)
                      a!45
                      (= G2 a!46)
                      (not (= Z1 true)))))
       (=> a!47
           (str_invariant F2
                          U1
                          J1
                          Y
                          N
                          D
                          C
                          B
                          A
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
                          T1
                          S1
                          R1
                          Q1
                          P1
                          O1
                          N1
                          M1
                          L1
                          K1)))))))))
    ))


(check-sat)
(exit)
