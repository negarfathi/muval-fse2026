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
              Int
              Bool
              Bool
              Int
              Int
              Int
              Int
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
         (X Bool))
  (=> (and (str_invariant X W V U T S R Q P O N M L K J I H G F E D C B A)
              (not (= O true)))
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
         (Z Bool))
  (let ((a!1 (or (or (= X true) (= W true)) (= V true)))
           (a!5 (and (and (not (= X true)) (not (= W true))) (not (= V true))))
           (a!8 (and (and (not (= X true)) (not (= W true)))
                     (= V true)
                     (not (= U true))
                     (not (= T true))
                     (not (= S true))
                     (not (= R true))
                     (not (= Q true))))
           (a!12 (= Z (or (not (= G true)) (>= (- F J) 0))))
           (a!13 (- (- (- (- F J) K) L) M)))
     (let ((a!2 (or (or (or a!1 (= U true)) (= T true)) (= S true)))
           (a!3 (or (or (or a!1 (= U true)) (= T true))
                    (not (= S true))
                    (= R true)
                    (= Q true)))
           (a!6 (and (and a!5 (not (= U true))) (not (= T true))))
           (a!9 (and (and a!5 (not (= U true)))
                     (= T true)
                     (not (= S true))
                     (not (= R true))
                     (not (= Q true))))
           (a!14 (= Y (or (not (= G true)) (>= a!13 0)))))
     (let ((a!4 (and (or (or a!2 (= R true)) (= Q true))
                     (or (not (= X true))
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or (= X true)
                         (not (= W true))
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or (or (= X true) (= W true))
                         (not (= V true))
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or a!1
                         (not (= U true))
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or (or a!1 (= U true))
                         (not (= T true))
                         (= S true)
                         (= R true)
                         (= Q true))
                     a!3
                     (or a!2 (not (= R true)) (= Q true))
                     (or (or a!2 (= R true)) (not (= Q true)))))
           (a!7 (and (and a!6 (not (= S true))) (not (= R true))))
           (a!10 (and (and a!6 (not (= S true))) (= R true) (not (= Q true)))))
     (let ((a!11 (or (not (= I true))
                     (and a!7 (not (= Q true)))
                     (and (= X true)
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     (and (not (= X true))
                          (= W true)
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!8
                     (and a!5
                          (= U true)
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!9
                     (and a!6 (= S true) (not (= R true)) (not (= Q true)))
                     a!10
                     (and a!7 (= Q true)))))
     (let ((a!15 (and (= (- D P) 0)
                      (or (and (= Y true) (= Z true)) (not (= O true)))
                      (= J 0)
                      (= K 0)
                      (= L 0)
                      (= (- M D) 0)
                      (or (not (= Y true)) (not (= Z true)) (= O true))
                      (or (= H true) (not (= G true)))
                      (= (- F P) 0)
                      (= E true)
                      (or (= I true) a!4)
                      (or (not (= H true)) (= G true))
                      (= C true)
                      a!11
                      (= B true)
                      (or (and (= I true) (>= P 0)) (not (= H true)))
                      (= A true)
                      (or (not (= I true)) (< P 0) (= H true))
                      a!12
                      a!14
                      (= N true))))
       (=> a!15 (str_invariant X W V U T S R Q P O N M L K J I H G F E D C B A)))))))
    ))
(assert (forall ((A Int)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Int)
         (J Bool)
         (K Int)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
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
         (I1 Int)
         (J1 Bool)
         (K1 Bool)
         (L1 Int)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Int)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
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
         (D2 Bool))
  (let ((a!1 (ite (= E true)
                     (ite (= (+ (- 1) P) 0) (+ 1 Q) Q)
                     (ite (= B true) (ite (= Y1 true) 0 Q) Q)))
           (a!4 (ite (= B true) (ite (= Y1 true) (+ (+ 1 Q) P) P) P))
           (a!8 (ite (= D true)
                     (ite (= A2 true) 1 R)
                     (ite (= C true) (ite (= Z1 true) (+ (- 1) R) R) R)))
           (a!11 (ite (= C true)
                      (ite (= Z1 true) (+ (- 1) S) S)
                      (ite (= B true) (ite (= Y1 true) (+ (- 1) S) S) S)))
           (a!14 (or (or (= V1 true) (= K1 true)) (= Z true)))
           (a!18 (and (and (not (= V1 true)) (not (= K1 true)))
                      (not (= Z true))))
           (a!21 (and (and (not (= V1 true)) (not (= K1 true)))
                      (= Z true)
                      (not (= O true))
                      (not (= E true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))))
           (a!25 (and (>= (+ (- 1) S) 0) (= R 0) (= P 0) (= Q 0)))
           (a!26 (and (>= (+ (- 1) S) 0) (>= (+ (- 1) R) 0)))
           (a!27 (and (>= (+ (- 1) S) 0) (>= (+ (+ (- 1) Q) P) 0)))
           (a!28 (= X1 (or (not (= M1 true)) (>= (- L1 P1) 0))))
           (a!29 (- (- (- (- L1 P1) Q1) R1) S1)))
     (let ((a!2 (ite (= O true) (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q) a!1))
           (a!5 (ite (= E true)
                     (ite (= (+ (- 1) P) 0) 0 P)
                     (ite (= C true) (ite (= Z1 true) (+ 2 P) P) a!4)))
           (a!9 (ite (= O true) (ite (>= (+ (- 1) Q) 0) (+ 1 R) R) a!8))
           (a!12 (ite (= Z true)
                      (ite (= B2 true) (+ (- 1) S) S)
                      (ite (= D true) (ite (= A2 true) (+ (- 1) S) S) a!11)))
           (a!15 (or (or (or a!14 (= O true)) (= E true)) (= D true)))
           (a!16 (or (or (or a!14 (= O true)) (= E true))
                     (not (= D true))
                     (= C true)
                     (= B true)))
           (a!19 (and (and a!18 (not (= O true))) (not (= E true))))
           (a!22 (and (and a!18 (not (= O true)))
                      (= E true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))))
           (a!30 (= W1 (or (not (= M1 true)) (>= a!29 0)))))
     (let ((a!3 (ite (= V1 true)
                     (ite (= D2 true) (+ 1 Q) Q)
                     (ite (= Z true) (ite (= B2 true) 0 Q) a!2)))
           (a!6 (ite (= Z true) (ite (= B2 true) (+ (+ 1 Q) P) P) a!5))
           (a!10 (- R1 (ite (= K1 true) (ite (= C2 true) (+ (- 1) R) R) a!9)))
           (a!13 (ite (= V1 true)
                      (ite (= D2 true) (+ (- 1) S) S)
                      (ite (= K1 true) (ite (= C2 true) (+ (- 1) S) S) a!12)))
           (a!17 (and (or (or a!15 (= C true)) (= B true))
                      (or (not (= V1 true))
                          (= K1 true)
                          (= Z true)
                          (= O true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (= V1 true)
                          (not (= K1 true))
                          (= Z true)
                          (= O true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (or (= V1 true) (= K1 true))
                          (not (= Z true))
                          (= O true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or a!14
                          (not (= O true))
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (or a!14 (= O true))
                          (not (= E true))
                          (= D true)
                          (= C true)
                          (= B true))
                      a!16
                      (or a!15 (not (= C true)) (= B true))
                      (or (or a!15 (= C true)) (not (= B true)))))
           (a!20 (and (and a!19 (not (= D true))) (not (= C true))))
           (a!23 (and (and a!19 (not (= D true))) (= C true) (not (= B true)))))
     (let ((a!7 (- P1 (ite (= K1 true) (ite (= C2 true) (+ 2 P) P) a!6)))
           (a!24 (or (not (= O1 true))
                     (and a!20 (not (= B true)))
                     (and (= V1 true)
                          (not (= K1 true))
                          (not (= Z true))
                          (not (= O true))
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     (and (not (= V1 true))
                          (= K1 true)
                          (not (= Z true))
                          (not (= O true))
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     a!21
                     (and a!18
                          (= O true)
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     a!22
                     (and a!19 (= D true) (not (= C true)) (not (= B true)))
                     a!23
                     (and a!20 (= B true)))))
     (let ((a!31 (and (str_invariant E1
                                     D1
                                     C1
                                     B1
                                     A1
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
                                     N
                                     M
                                     L
                                     K
                                     J
                                     I
                                     H
                                     G
                                     F)
                      (= (- Q1 a!3) 0)
                      (= a!7 0)
                      (or (and (= W1 true) (= X1 true)) (not (= U1 true)))
                      (= (- I1 I) 0)
                      (= a!10 0)
                      (= (- S1 a!13) 0)
                      (or (not (= W1 true)) (not (= X1 true)) (= U1 true))
                      (or (and (= N1 true) (= L true)) (not (= M1 true)))
                      (= (- L1 K) 0)
                      (not (= J1 true))
                      (or (= O1 true) a!17)
                      (or (not (= N1 true)) (not (= L true)) (= M1 true))
                      (not (= H1 true))
                      a!24
                      (not (= G1 true))
                      (or (and (= O1 true) (>= A 0)) (not (= N1 true)))
                      (not (= F1 true))
                      (or (not (= O1 true)) (< A 0) (= N1 true))
                      (= D2 a!25)
                      (= C2 a!26)
                      (= B2 a!27)
                      (= A2 a!25)
                      (= Z1 a!26)
                      (= Y1 a!27)
                      a!28
                      a!30
                      (not (= T1 true)))))
       (=> a!31
           (str_invariant V1
                          K1
                          Z
                          O
                          E
                          D
                          C
                          B
                          A
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
                          J1
                          I1
                          H1
                          G1
                          F1)))))))
    ))


(check-sat)
(exit)
