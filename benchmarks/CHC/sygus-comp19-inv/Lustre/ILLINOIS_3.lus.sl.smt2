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
              Bool
              Bool
              Bool)
             Bool)
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Int)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Bool)
         (N Bool)
         (O Int)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool))
  (=> (and (str_invariant X W V U T S R Q P O N M L K J I H G F E D C B A)
              (not (= N true)))
         false)
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
         (J Int)
         (K Int)
         (L Int)
         (M Bool)
         (N Bool)
         (O Int)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool))
  (let ((a!1 (- L (ite (>= (+ (- 1) O) 0) O (- 1 O))))
           (a!2 (or (not (= F true)) (= (- (+ I J K L) E) 0) (not (= N true))))
           (a!3 (not (= (- (+ I J K L) E) 0)))
           (a!4 (or (or (= X true) (= W true)) (= V true)))
           (a!10 (and (and (not (= X true)) (not (= W true))) (not (= V true))))
           (a!14 (and (and (not (= X true)) (not (= W true)))
                      (= V true)
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true))
                      (not (= P true))))
           (a!19 (or (and (= H true) (>= (+ (- 1) O) 0)) (not (= G true)))))
     (let ((a!5 (or (or (or a!4 (= U true)) (= T true)) (= S true)))
           (a!7 (or (or (or a!4 (= U true)) (= T true))
                    (not (= S true))
                    (= R true)
                    (= Q true)
                    (= P true)))
           (a!11 (and (and a!10 (not (= U true))) (not (= T true))))
           (a!15 (and (and a!10 (not (= U true)))
                      (= T true)
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true))
                      (not (= P true)))))
     (let ((a!6 (or (or (or a!5 (= R true)) (= Q true)) (= P true)))
           (a!8 (or (or (or a!5 (= R true)) (= Q true)) (not (= P true))))
           (a!12 (and (and a!11 (not (= S true))) (not (= R true))))
           (a!16 (and (and a!11 (not (= S true)))
                      (= R true)
                      (not (= Q true))
                      (not (= P true)))))
     (let ((a!9 (and a!6
                     (or (not (= X true))
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     (or (= X true)
                         (not (= W true))
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     (or (or (= X true) (= W true))
                         (not (= V true))
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     (or a!4
                         (not (= U true))
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     (or (or a!4 (= U true))
                         (not (= T true))
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     a!7
                     (or a!5 (not (= R true)) (= Q true) (= P true))
                     (or (or a!5 (= R true)) (not (= Q true)) (= P true))
                     a!8))
           (a!13 (and (and a!12 (not (= Q true))) (not (= P true))))
           (a!17 (and (and a!12 (not (= Q true))) (= P true))))
     (let ((a!18 (or (not (= H true))
                     a!13
                     (and (= X true)
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true))
                          (not (= P true)))
                     (and (not (= X true))
                          (= W true)
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true))
                          (not (= P true)))
                     a!14
                     (and a!10
                          (= U true)
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true))
                          (not (= P true)))
                     a!15
                     (and a!11
                          (= S true)
                          (not (= R true))
                          (not (= Q true))
                          (not (= P true)))
                     a!16
                     (and a!12 (= Q true) (not (= P true)))
                     a!17)))
     (let ((a!20 (and (= a!1 0)
                      a!2
                      (or (= G true) (not (= F true)))
                      (= I 0)
                      (= J 0)
                      (= K 0)
                      (or (and (= F true) a!3) (= N true))
                      (or (= H true) a!9)
                      (or (not (= G true)) (= F true))
                      (= D true)
                      a!18
                      (= C true)
                      (= (- E O) 0)
                      (= B true)
                      a!19
                      (= A true)
                      (or (not (= H true)) (< (+ (- 1) O) 0) (= G true))
                      (= M true))))
       (=> a!20 (str_invariant X W V U T S R Q P O N M L K J I H G F E D C B A))))))))
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
         (K Bool)
         (L Bool)
         (M Bool)
         (N Int)
         (O Bool)
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
         (J1 Int)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
         (R1 Int)
         (S1 Bool)
         (T1 Bool)
         (U1 Int)
         (V1 Bool)
         (W1 Bool)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Bool))
  (let ((a!1 (ite (= C true) (ite (>= (+ (- 1) Q) 0) (+ (- 1) Q) Q) Q))
           (a!5 (ite (>= (+ (- 1) P) 0) (+ (- 1) P) P))
           (a!8 (or (not (= L1 true))
                    (= (- (+ O1 P1 Q1 R1) J1) 0)
                    (not (= T1 true))))
           (a!9 (ite (= B true) (ite (>= (+ (- 1) N) 0) (+ (- 1) N) N) N))
           (a!13 (ite (= A true) (ite (>= (+ (- 1) P) 0) (+ 1 R) R) R))
           (a!20 (not (= (- (+ O1 P1 Q1 R1) J1) 0)))
           (a!21 (or (or (= V1 true) (= K1 true)) (= Z true)))
           (a!27 (and (and (not (= V1 true)) (not (= K1 true)))
                      (not (= Z true))))
           (a!31 (and (and (not (= V1 true)) (not (= K1 true)))
                      (= Z true)
                      (not (= O true))
                      (not (= E true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))))
           (a!36 (or (and (= N1 true) (>= (+ (- 1) U1) 0)) (not (= M1 true))))
           (a!37 (= Z1 (and (>= (+ (- 1) R) 0) (= Q 0) (= N 0) (= P 0))))
           (a!38 (= Y1 (and (>= (+ (- 1) R) 0) (>= (+ (- 1) Q) 0))))
           (a!39 (and (>= (+ (- 1) R) 0) (>= (+ (+ (- 1) P) N) 0))))
     (let ((a!2 (ite (= E true)
                     (ite (>= (+ (- 1) N) 0) (+ 1 Q) Q)
                     (ite (= D true) (ite (= W1 true) 1 Q) a!1)))
           (a!6 (ite (= O true)
                     a!5
                     (ite (= D true)
                          (ite (= W1 true) 0 P)
                          (ite (= A true) a!5 P))))
           (a!10 (ite (= E true)
                      (ite (>= (+ (- 1) N) 0) 0 N)
                      (ite (= D true) (ite (= W1 true) 0 N) a!9)))
           (a!14 (ite (= B true) (ite (>= (+ (- 1) N) 0) (+ 1 R) R) a!13))
           (a!22 (or (or (or a!21 (= O true)) (= E true)) (= D true)))
           (a!24 (or (or (or a!21 (= O true)) (= E true))
                     (not (= D true))
                     (= C true)
                     (= B true)
                     (= A true)))
           (a!28 (and (and a!27 (not (= O true))) (not (= E true))))
           (a!32 (and (and a!27 (not (= O true)))
                      (= E true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true)))))
     (let ((a!3 (ite (= O true) (ite (>= (+ (- 1) P) 0) (+ 1 Q) Q) a!2))
           (a!7 (ite (= V1 true)
                     (ite (= Z1 true) (+ 1 P) P)
                     (ite (= Z true) (ite (= X1 true) 0 P) a!6)))
           (a!11 (ite (= Z true) (ite (= X1 true) (+ (+ 1 P) N) N) a!10))
           (a!15 (ite (= C true) (ite (>= (+ (- 1) Q) 0) (+ 1 R) R) a!14))
           (a!23 (or (or (or a!22 (= C true)) (= B true)) (= A true)))
           (a!25 (or (or (or a!22 (= C true)) (= B true)) (not (= A true))))
           (a!29 (and (and a!28 (not (= D true))) (not (= C true))))
           (a!33 (and (and a!28 (not (= D true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true)))))
     (let ((a!4 (- Q1 (ite (= K1 true) (ite (= Y1 true) (+ (- 1) Q) Q) a!3)))
           (a!12 (- O1 (ite (= K1 true) (ite (= Y1 true) (+ 2 N) N) a!11)))
           (a!16 (ite (= D true) (ite (= W1 true) (+ (+ (- 1) R) Q P N) R) a!15))
           (a!26 (and a!23
                      (or (not (= V1 true))
                          (= K1 true)
                          (= Z true)
                          (= O true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (= V1 true)
                          (not (= K1 true))
                          (= Z true)
                          (= O true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (or (= V1 true) (= K1 true))
                          (not (= Z true))
                          (= O true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or a!21
                          (not (= O true))
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (or a!21 (= O true))
                          (not (= E true))
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      a!24
                      (or a!22 (not (= C true)) (= B true) (= A true))
                      (or (or a!22 (= C true)) (not (= B true)) (= A true))
                      a!25))
           (a!30 (and (and a!29 (not (= B true))) (not (= A true))))
           (a!34 (and (and a!29 (not (= B true))) (= A true))))
     (let ((a!17 (ite (= E true)
                      (ite (>= (+ (- 1) N) 0) (+ (+ (- 1) R) N) R)
                      a!16))
           (a!35 (or (not (= N1 true))
                     a!30
                     (and (= V1 true)
                          (not (= K1 true))
                          (not (= Z true))
                          (not (= O true))
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     (and (not (= V1 true))
                          (= K1 true)
                          (not (= Z true))
                          (not (= O true))
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!31
                     (and a!27
                          (= O true)
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!32
                     (and a!28
                          (= D true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!33
                     (and a!29 (= B true) (not (= A true)))
                     a!34)))
     (let ((a!18 (ite (= K1 true)
                      (ite (= Y1 true) (+ (- 1) R) R)
                      (ite (= Z true) (ite (= X1 true) (+ (- 1) R) R) a!17))))
     (let ((a!19 (- R1 (ite (= V1 true) (ite (= Z1 true) (+ (- 1) R) R) a!18))))
     (let ((a!40 (and (str_invariant E1
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
                      (= a!4 0)
                      (= (- P1 a!7) 0)
                      a!8
                      (or (and (= M1 true) (= K true)) (not (= L1 true)))
                      (= a!12 0)
                      (= a!19 0)
                      (or (and (= L1 true) a!20) (= T1 true))
                      (or (= N1 true) a!26)
                      (or (not (= M1 true)) (not (= K true)) (= L1 true))
                      (not (= I1 true))
                      a!35
                      (not (= H1 true))
                      (= (- J1 J) 0)
                      (not (= G1 true))
                      a!36
                      (not (= F1 true))
                      (or (not (= N1 true)) (< (+ (- 1) U1) 0) (= M1 true))
                      a!37
                      a!38
                      (= X1 a!39)
                      (= W1 (>= (+ (- 1) R) 0))
                      (not (= S1 true)))))
       (=> a!40
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
                          F1))))))))))
    ))


(check-sat)
(exit)
