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
              (not (= Q true)))
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
         (C1 Bool))
  (let ((a!1 (or (not (= D true))
                    (and (>= O 0) (>= (- 1 O) 0))
                    (not (= Q true))))
           (a!2 (and (= D true) (or (< O 0) (< (- 1 O) 0))))
           (a!3 (or (or (= C1 true) (= B1 true)) (= A1 true)))
           (a!11 (and (and (not (= C1 true)) (not (= B1 true)))
                      (not (= A1 true))))
           (a!16 (and (and (not (= C1 true)) (not (= B1 true)))
                      (= A1 true)
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true)))))
     (let ((a!4 (or (or (or a!3 (= Z true)) (= Y true)) (= X true)))
           (a!7 (or (or (or a!3 (= Z true)) (= Y true))
                    (not (= X true))
                    (= W true)
                    (= V true)
                    (= U true)
                    (= T true)
                    (= S true)
                    (= R true)))
           (a!12 (and (and a!11 (not (= Z true))) (not (= Y true))))
           (a!17 (and (and a!11 (not (= Z true)))
                      (= Y true)
                      (not (= X true))
                      (not (= W true))
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true)))))
     (let ((a!5 (or (or (or a!4 (= W true)) (= V true)) (= U true)))
           (a!8 (or (or (or a!4 (= W true)) (= V true))
                    (not (= U true))
                    (= T true)
                    (= S true)
                    (= R true)))
           (a!13 (and (and a!12 (not (= X true))) (not (= W true))))
           (a!18 (and (and a!12 (not (= X true)))
                      (= W true)
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true)))))
     (let ((a!6 (or (or (or a!5 (= T true)) (= S true)) (= R true)))
           (a!9 (or (or (or a!5 (= T true)) (= S true)) (not (= R true))))
           (a!14 (and (and a!13 (not (= V true))) (not (= U true))))
           (a!19 (and (and a!13 (not (= V true)))
                      (= U true)
                      (not (= T true))
                      (not (= S true))
                      (not (= R true)))))
     (let ((a!10 (and a!6
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
                      (or a!3
                          (not (= Z true))
                          (= Y true)
                          (= X true)
                          (= W true)
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true)
                          (= R true))
                      (or (or a!3 (= Z true))
                          (not (= Y true))
                          (= X true)
                          (= W true)
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true)
                          (= R true))
                      a!7
                      (or a!4
                          (not (= W true))
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true)
                          (= R true))
                      (or (or a!4 (= W true))
                          (not (= V true))
                          (= U true)
                          (= T true)
                          (= S true)
                          (= R true))
                      a!8
                      (or a!5 (not (= T true)) (= S true) (= R true))
                      (or (or a!5 (= T true)) (not (= S true)) (= R true))
                      a!9))
           (a!15 (and (and a!14 (not (= T true))) (not (= S true))))
           (a!20 (and (and a!14 (not (= T true))) (= S true) (not (= R true)))))
     (let ((a!21 (or (not (= E true))
                     (and a!15 (not (= R true)))
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
                     a!16
                     (and a!11
                          (= Z true)
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!17
                     (and a!12
                          (= X true)
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!18
                     (and a!13
                          (= V true)
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!19
                     (and a!14 (= T true) (not (= S true)) (not (= R true)))
                     a!20
                     (and a!15 (= R true)))))
     (let ((a!22 (and (or (>= (+ (- 2) O) 0) (not (= F true)))
                      (= H 0)
                      a!1
                      (or (= E true) (not (= D true)))
                      (or (< (+ (- 2) O) 0) (= F true))
                      (= I 0)
                      (= K 0)
                      (= J 0)
                      (= M 0)
                      (= L 0)
                      (= G 0)
                      (= N 0)
                      (= (+ (- 1) O) 0)
                      (or a!2 (= Q true))
                      (or (= E true) a!10)
                      (or (not (= E true)) (= D true))
                      (= C true)
                      a!21
                      (= B true)
                      (= A true)
                      (= P true))))
       (=> a!22
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
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Int)
         (L Int)
         (M Int)
         (N Bool)
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
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Bool)
         (V1 Int)
         (W1 Int)
         (X1 Int)
         (Y1 Int)
         (Z1 Int)
         (A2 Bool)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool))
  (let ((a!1 (ite (>= (+ (- 1) O) 0) (+ (- 1) O) O))
           (a!4 (ite (= D true) (ite (>= (+ (- 1) P) 0) (+ (- 1) P) P) P))
           (a!6 (ite (= E2 true) (ite (>= (+ (- 1) M) 0) (+ (- 1) M) M) M))
           (a!8 (ite (= D2 true) (ite (>= (+ (- 1) L) 0) (+ (- 1) L) L) L))
           (a!10 (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q))
           (a!12 (or (not (= N1 true))
                     (and (>= Z1 0) (>= (- 1 Z1) 0))
                     (not (= B2 true))))
           (a!13 (ite (= J1 true) (ite (>= (+ (- 1) R) 0) (+ (- 1) R) R) R))
           (a!15 (ite (= C2 true) (ite (>= (+ (- 1) K) 0) (+ (- 1) K) K) K))
           (a!20 (ite (= C2 true) (ite (>= (+ (- 1) K) 0) (+ 1 S) S) S))
           (a!23 (ite (= F2 true) (ite (>= (+ (- 1) T) 0) (+ (- 1) T) T) T))
           (a!24 (and (= N1 true) (or (< Z1 0) (< (- 1 Z1) 0))))
           (a!25 (or (or (= F2 true) (= U1 true)) (= J1 true)))
           (a!33 (and (and (not (= F2 true)) (not (= U1 true)))
                      (not (= J1 true))))
           (a!38 (and (and (not (= F2 true)) (not (= U1 true)))
                      (= J1 true)
                      (not (= Y true))
                      (not (= N true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= E2 true))
                      (not (= D2 true))
                      (not (= C2 true)))))
     (let ((a!2 (ite (= C true) a!1 (ite (= B true) a!1 (ite (= A true) a!1 O))))
           (a!5 (ite (= Y true) (ite (>= (+ (- 1) Q) 0) (+ 1 P) P) a!4))
           (a!7 (ite (= B true) (ite (>= (+ (- 1) O) 0) (+ 1 M) M) a!6))
           (a!9 (ite (= A true) (ite (>= (+ (- 1) O) 0) (+ 1 L) L) a!8))
           (a!11 (ite (= J1 true)
                      (ite (>= (+ (- 1) R) 0) (+ 1 Q) Q)
                      (ite (= Y true) a!10 (ite (= N true) a!10 Q))))
           (a!14 (ite (= U1 true) (ite (>= (+ (- 1) S) 0) (+ 1 R) R) a!13))
           (a!16 (ite (= D2 true) (ite (>= (+ (- 1) L) 0) (+ 1 K) K) a!15))
           (a!21 (ite (= U1 true) (ite (>= (+ (- 1) S) 0) (+ (- 1) S) S) a!20))
           (a!26 (or (or (or a!25 (= Y true)) (= N true)) (= D true)))
           (a!29 (or (or (or a!25 (= Y true)) (= N true))
                     (not (= D true))
                     (= C true)
                     (= B true)
                     (= A true)
                     (= E2 true)
                     (= D2 true)
                     (= C2 true)))
           (a!34 (and (and a!33 (not (= Y true))) (not (= N true))))
           (a!39 (and (and a!33 (not (= Y true)))
                      (= N true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))
                      (not (= E2 true))
                      (not (= D2 true))
                      (not (= C2 true)))))
     (let ((a!3 (ite (= D true) (ite (>= (+ (- 1) P) 0) (+ 1 O) O) a!2))
           (a!17 (ite (= E2 true) (ite (>= (+ (- 1) M) 0) (+ 1 K) K) a!16))
           (a!22 (ite (= F2 true) (ite (>= (+ (- 1) T) 0) (+ 1 S) S) a!21))
           (a!27 (or (or (or a!26 (= C true)) (= B true)) (= A true)))
           (a!30 (or (or (or a!26 (= C true)) (= B true))
                     (not (= A true))
                     (= E2 true)
                     (= D2 true)
                     (= C2 true)))
           (a!35 (and (and a!34 (not (= D true))) (not (= C true))))
           (a!40 (and (and a!34 (not (= D true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true))
                      (not (= E2 true))
                      (not (= D2 true))
                      (not (= C2 true)))))
     (let ((a!18 (ite (= C true) (ite (>= (+ (- 1) O) 0) (+ 1 K) K) a!17))
           (a!28 (or (or (or a!27 (= E2 true)) (= D2 true)) (= C2 true)))
           (a!31 (or (or (or a!27 (= E2 true)) (= D2 true)) (not (= C2 true))))
           (a!36 (and (and a!35 (not (= B true))) (not (= A true))))
           (a!41 (and (and a!35 (not (= B true)))
                      (= A true)
                      (not (= E2 true))
                      (not (= D2 true))
                      (not (= C2 true)))))
     (let ((a!19 (ite (= N true) (ite (>= (+ (- 1) Q) 0) (+ 1 K) K) a!18))
           (a!32 (and a!28
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
                      (or a!25
                          (not (= Y true))
                          (= N true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      (or (or a!25 (= Y true))
                          (not (= N true))
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      a!29
                      (or a!26
                          (not (= C true))
                          (= B true)
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      (or (or a!26 (= C true))
                          (not (= B true))
                          (= A true)
                          (= E2 true)
                          (= D2 true)
                          (= C2 true))
                      a!30
                      (or a!27 (not (= E2 true)) (= D2 true) (= C2 true))
                      (or (or a!27 (= E2 true)) (not (= D2 true)) (= C2 true))
                      a!31))
           (a!37 (and (and a!36 (not (= E2 true))) (not (= D2 true))))
           (a!42 (and (and a!36 (not (= E2 true)))
                      (= D2 true)
                      (not (= C2 true)))))
     (let ((a!43 (or (not (= O1 true))
                     (and a!37 (not (= C2 true)))
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
                     a!38
                     (and a!33
                          (= Y true)
                          (not (= N true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= E2 true))
                          (not (= D2 true))
                          (not (= C2 true)))
                     a!39
                     (and a!34
                          (= D true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true))
                          (not (= E2 true))
                          (not (= D2 true))
                          (not (= C2 true)))
                     a!40
                     (and a!35
                          (= B true)
                          (not (= A true))
                          (not (= E2 true))
                          (not (= D2 true))
                          (not (= C2 true)))
                     a!41
                     (and a!36 (= E2 true) (not (= D2 true)) (not (= C2 true)))
                     a!42
                     (and a!37 (= C2 true)))))
     (let ((a!44 (and (str_invariant I1
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
                      (= (- T1 a!3) 0)
                      (= (- V1 a!5) 0)
                      (= (- S1 a!7) 0)
                      (or (>= (+ (- 2) Z1) 0) (not (= P1 true)))
                      (= (- R1 a!9) 0)
                      (= (- W1 a!11) 0)
                      a!12
                      (or (and (= O1 true) (= H true)) (not (= N1 true)))
                      (or (< (+ (- 2) Z1) 0) (= P1 true))
                      (= (- X1 a!14) 0)
                      (= (- Q1 a!19) 0)
                      (= (- Y1 a!22) 0)
                      (= (- Z1 a!23) 0)
                      (or a!24 (= B2 true))
                      (or (= O1 true) a!32)
                      (or (not (= O1 true)) (not (= H true)) (= N1 true))
                      (not (= M1 true))
                      a!43
                      (not (= L1 true))
                      (not (= K1 true))
                      (not (= A2 true)))))
       (=> a!44
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
