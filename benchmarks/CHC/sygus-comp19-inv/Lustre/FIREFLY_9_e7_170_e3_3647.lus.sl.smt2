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
         (X Bool))
  (let ((a!1 (or (and (= G true) (< (- F M) 0)) (= O true)))
           (a!2 (or (or (= X true) (= W true)) (= V true)))
           (a!6 (and (and (not (= X true)) (not (= W true))) (not (= V true))))
           (a!9 (and (and (not (= X true)) (not (= W true)))
                     (= V true)
                     (not (= U true))
                     (not (= T true))
                     (not (= S true))
                     (not (= R true))
                     (not (= Q true))))
           (a!13 (or (and (= I true) (>= P 0) (>= (- 4 P) 0)) (not (= H true)))))
     (let ((a!3 (or (or (or a!2 (= U true)) (= T true)) (= S true)))
           (a!4 (or (or (or a!2 (= U true)) (= T true))
                    (not (= S true))
                    (= R true)
                    (= Q true)))
           (a!7 (and (and a!6 (not (= U true))) (not (= T true))))
           (a!10 (and (and a!6 (not (= U true)))
                      (= T true)
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true)))))
     (let ((a!5 (and (or (or a!3 (= R true)) (= Q true))
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
                     (or a!2
                         (not (= U true))
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true))
                     (or (or a!2 (= U true))
                         (not (= T true))
                         (= S true)
                         (= R true)
                         (= Q true))
                     a!4
                     (or a!3 (not (= R true)) (= Q true))
                     (or (or a!3 (= R true)) (not (= Q true)))))
           (a!8 (and (and a!7 (not (= S true))) (not (= R true))))
           (a!11 (and (and a!7 (not (= S true))) (= R true) (not (= Q true)))))
     (let ((a!12 (or (not (= I true))
                     (and a!8 (not (= Q true)))
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
                     a!9
                     (and a!6
                          (= U true)
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!10
                     (and a!7 (= S true) (not (= R true)) (not (= Q true)))
                     a!11
                     (and a!8 (= Q true)))))
     (let ((a!14 (and (= (- D P) 0)
                      (or (not (= G true)) (>= (- F M) 0) (not (= O true)))
                      (or (= H true) (not (= G true)))
                      (= J 0)
                      (= K 0)
                      (= L 0)
                      (= (- M D) 0)
                      a!1
                      (or (= I true) a!5)
                      (or (not (= H true)) (= G true))
                      (= E true)
                      a!12
                      (= C true)
                      (= (- F P) 0)
                      (= B true)
                      a!13
                      (= A true)
                      (or (not (= I true)) (< P 0) (< (- 4 P) 0) (= H true))
                      (= N true))))
       (=> a!14 (str_invariant X W V U T S R Q P O N M L K J I H G F E D C B A)))))))
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
         (B2 Bool))
  (let ((a!1 (ite (= E true)
                     (ite (= (+ (- 1) P) 0) (+ 1 Q) Q)
                     (ite (= B true) (ite (= W1 true) 0 Q) Q)))
           (a!4 (ite (= B true) (ite (= W1 true) (+ (+ 1 Q) P) P) P))
           (a!8 (ite (= D true)
                     (ite (= Y1 true) 1 R)
                     (ite (= C true) (ite (= X1 true) (+ (- 1) R) R) R)))
           (a!11 (ite (= C true)
                      (ite (= X1 true) (+ (- 1) S) S)
                      (ite (= B true) (ite (= W1 true) (+ (- 1) S) S) S)))
           (a!14 (or (and (= M1 true) (< (- L1 S1) 0)) (= U1 true)))
           (a!15 (or (or (= V1 true) (= K1 true)) (= Z true)))
           (a!19 (or (and (not (= N1 true)) (not (= L true))) (= M1 true)))
           (a!20 (and (and (not (= V1 true)) (not (= K1 true)))
                      (not (= Z true))))
           (a!23 (and (and (not (= V1 true)) (not (= K1 true)))
                      (= Z true)
                      (not (= O true))
                      (not (= E true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))))
           (a!27 (or (and (= O1 true) (>= A 0) (>= (- 4 A) 0))
                     (not (= N1 true))))
           (a!28 (and (>= (+ (- 1) S) 0) (= R 0) (= P 0) (= Q 0)))
           (a!29 (and (>= (+ (- 1) S) 0) (>= (+ (- 1) R) 0)))
           (a!30 (and (>= (+ (- 1) S) 0) (>= (+ (+ (- 1) Q) P) 0))))
     (let ((a!2 (ite (= O true) (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q) a!1))
           (a!5 (ite (= E true)
                     (ite (= (+ (- 1) P) 0) 0 P)
                     (ite (= C true) (ite (= X1 true) (+ 2 P) P) a!4)))
           (a!9 (ite (= O true) (ite (>= (+ (- 1) Q) 0) (+ 1 R) R) a!8))
           (a!12 (ite (= Z true)
                      (ite (= Z1 true) (+ (- 1) S) S)
                      (ite (= D true) (ite (= Y1 true) (+ (- 1) S) S) a!11)))
           (a!16 (or (or (or a!15 (= O true)) (= E true)) (= D true)))
           (a!17 (or (or (or a!15 (= O true)) (= E true))
                     (not (= D true))
                     (= C true)
                     (= B true)))
           (a!21 (and (and a!20 (not (= O true))) (not (= E true))))
           (a!24 (and (and a!20 (not (= O true)))
                      (= E true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true)))))
     (let ((a!3 (ite (= V1 true)
                     (ite (= B2 true) (+ 1 Q) Q)
                     (ite (= Z true) (ite (= Z1 true) 0 Q) a!2)))
           (a!6 (ite (= Z true) (ite (= Z1 true) (+ (- 1 Q) P) P) a!5))
           (a!10 (- R1 (ite (= K1 true) (ite (= A2 true) (+ (- 1) R) R) a!9)))
           (a!13 (ite (= V1 true)
                      (ite (= B2 true) (+ (- 1) S) S)
                      (ite (= K1 true) (ite (= A2 true) (+ (- 1) S) S) a!12)))
           (a!18 (and (or (or a!16 (= C true)) (= B true))
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
                      (or a!15
                          (not (= O true))
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (or a!15 (= O true))
                          (not (= E true))
                          (= D true)
                          (= C true)
                          (= B true))
                      a!17
                      (or a!16 (not (= C true)) (= B true))
                      (or (or a!16 (= C true)) (not (= B true)))))
           (a!22 (and (and a!21 (not (= D true))) (not (= C true))))
           (a!25 (and (and a!21 (not (= D true))) (= C true) (not (= B true)))))
     (let ((a!7 (- P1 (ite (= K1 true) (ite (= A2 true) (+ 2 P) P) a!6)))
           (a!26 (or (not (= O1 true))
                     (and a!22 (not (= B true)))
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
                     a!23
                     (and a!20
                          (= O true)
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     a!24
                     (and a!21 (= D true) (not (= C true)) (not (= B true)))
                     a!25
                     (and a!22 (= B true)))))
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
                      (or (not (= M1 true)) (>= (- L1 S1) 0) (not (= U1 true)))
                      (or (= N1 true) (= L true) (not (= M1 true)))
                      (= (- I1 I) 0)
                      (= a!10 0)
                      (= (- S1 a!13) 0)
                      a!14
                      (or (= O1 true) a!18)
                      a!19
                      (not (= J1 true))
                      a!26
                      (not (= H1 true))
                      (= (- L1 K) 0)
                      (not (= G1 true))
                      a!27
                      (not (= F1 true))
                      (or (not (= O1 true)) (< A 0) (< (- 4 A) 0) (= N1 true))
                      (= B2 a!28)
                      (= A2 a!29)
                      (= Z1 a!30)
                      (= Y1 a!28)
                      (= X1 a!29)
                      (= W1 a!30)
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
