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
         (Y Bool))
  (=> (and (str_invariant Y X W V U T S R Q P O N M L K J I H G F E D C B A)
              (not (= O true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Int)
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
         (Y Bool))
  (let ((a!1 (and (>= (- 1 K) 0) (= (- (+ J K L M) E) 0) (>= K 0)))
           (a!2 (- M (ite (>= (+ (- 1) P) 0) P (- 1 P))))
           (a!3 (not (= (- (+ J K L M) E) 0)))
           (a!5 (or (or (= Y true) (= X true)) (= W true)))
           (a!11 (and (and (not (= Y true)) (not (= X true))) (not (= W true))))
           (a!15 (and (and (not (= Y true)) (not (= X true)))
                      (= W true)
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true))))
           (a!20 (or (and (= I true) (>= (+ (- 1) P) 0)) (not (= H true)))))
     (let ((a!4 (and (= G true) (or (< (- 1 K) 0) a!3 (< K 0))))
           (a!6 (or (or (or a!5 (= V true)) (= U true)) (= T true)))
           (a!8 (or (or (or a!5 (= V true)) (= U true))
                    (not (= T true))
                    (= S true)
                    (= R true)
                    (= Q true)))
           (a!12 (and (and a!11 (not (= V true))) (not (= U true))))
           (a!16 (and (and a!11 (not (= V true)))
                      (= U true)
                      (not (= T true))
                      (not (= S true))
                      (not (= R true))
                      (not (= Q true)))))
     (let ((a!7 (or (or (or a!6 (= S true)) (= R true)) (= Q true)))
           (a!9 (or (or (or a!6 (= S true)) (= R true)) (not (= Q true))))
           (a!13 (and (and a!12 (not (= T true))) (not (= S true))))
           (a!17 (and (and a!12 (not (= T true)))
                      (= S true)
                      (not (= R true))
                      (not (= Q true)))))
     (let ((a!10 (and a!7
                      (or (not (= Y true))
                          (= X true)
                          (= W true)
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true)
                          (= R true)
                          (= Q true))
                      (or (= Y true)
                          (not (= X true))
                          (= W true)
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true)
                          (= R true)
                          (= Q true))
                      (or (or (= Y true) (= X true))
                          (not (= W true))
                          (= V true)
                          (= U true)
                          (= T true)
                          (= S true)
                          (= R true)
                          (= Q true))
                      (or a!5
                          (not (= V true))
                          (= U true)
                          (= T true)
                          (= S true)
                          (= R true)
                          (= Q true))
                      (or (or a!5 (= V true))
                          (not (= U true))
                          (= T true)
                          (= S true)
                          (= R true)
                          (= Q true))
                      a!8
                      (or a!6 (not (= S true)) (= R true) (= Q true))
                      (or (or a!6 (= S true)) (not (= R true)) (= Q true))
                      a!9))
           (a!14 (and (and a!13 (not (= R true))) (not (= Q true))))
           (a!18 (and (and a!13 (not (= R true))) (= Q true))))
     (let ((a!19 (or (not (= I true))
                     a!14
                     (and (= Y true)
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     (and (not (= Y true))
                          (= X true)
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!15
                     (and a!11
                          (= V true)
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!16
                     (and a!12
                          (= T true)
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true)))
                     a!17
                     (and a!13 (= R true) (not (= Q true)))
                     a!18)))
     (let ((a!21 (and (or (not (= G true)) a!1 (not (= O true)))
                      (= a!2 0)
                      (or a!4 (= O true))
                      (or (= H true) (not (= G true)))
                      (= J 0)
                      (= K 0)
                      (= L 0)
                      (= (- F (+ J K L M)) 0)
                      (or (= I true) a!10)
                      (or (not (= H true)) (= G true))
                      (= D true)
                      a!19
                      (= C true)
                      (= (- E P) 0)
                      (= B true)
                      a!20
                      (= A true)
                      (or (not (= I true)) (< (+ (- 1) P) 0) (= H true))
                      (= N true))))
       (=> a!21
           (str_invariant Y X W V U T S R Q P O N M L K J I H G F E D C B A))))))))
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
         (L Bool)
         (M Bool)
         (N Bool)
         (O Int)
         (P Int)
         (Q Bool)
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
         (K1 Int)
         (L1 Int)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Bool)
         (V1 Bool)
         (W1 Int)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Bool)
         (A2 Bool)
         (B2 Bool))
  (let ((a!1 (ite (= C true) (ite (>= (+ (- 1) R) 0) (+ (- 1) R) R) R))
           (a!5 (and (>= (- 1 R1) 0)
                     (= (- (+ Q1 R1 S1 T1) K) 0)
                     (= (- (+ Q1 R1 S1 T1) K1) 0)
                     (>= R1 0)))
           (a!6 (ite (>= (+ (- 1) P) 0) (+ (- 1) P) P))
           (a!9 (not (= (- (+ Q1 R1 S1 T1) K) 0)))
           (a!10 (not (= (- (+ Q1 R1 S1 T1) K1) 0)))
           (a!12 (ite (= B true) (ite (>= (+ (- 1) O) 0) (+ (- 1) O) O) O))
           (a!16 (ite (= A true) (ite (>= (+ (- 1) P) 0) (+ 1 S) S) S))
           (a!23 (or (or (= X1 true) (= M1 true)) (= B1 true)))
           (a!29 (and (and (not (= X1 true)) (not (= M1 true)))
                      (not (= B1 true))))
           (a!33 (and (and (not (= X1 true)) (not (= M1 true)))
                      (= B1 true)
                      (not (= Q true))
                      (not (= F true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true))))
           (a!38 (or (and (= P1 true) (>= (+ (- 1) W1) 0)) (not (= O1 true))))
           (a!39 (= B2 (and (>= (+ (- 1) S) 0) (= R 0) (= O 0) (= P 0))))
           (a!40 (= A2 (and (>= (+ (- 1) S) 0) (>= (+ (- 1) R) 0))))
           (a!41 (and (>= (+ (- 1) S) 0) (>= (+ (+ (- 1) P) O) 0))))
     (let ((a!2 (ite (= F true)
                     (ite (>= (+ (- 1) O) 0) (+ 1 R) R)
                     (ite (= D true) (ite (= Y1 true) 1 R) a!1)))
           (a!7 (ite (= Q true)
                     a!6
                     (ite (= D true)
                          (ite (= Y1 true) 0 P)
                          (ite (= A true) a!6 P))))
           (a!11 (and (= N1 true) (or (< (- 1 R1) 0) a!9 a!10 (< R1 0))))
           (a!13 (ite (= F true)
                      (ite (>= (+ (- 1) O) 0) 0 O)
                      (ite (= D true) (ite (= Y1 true) 0 O) a!12)))
           (a!17 (ite (= B true) (ite (>= (+ (- 1) O) 0) (+ 1 S) S) a!16))
           (a!24 (or (or (or a!23 (= Q true)) (= F true)) (= D true)))
           (a!26 (or (or (or a!23 (= Q true)) (= F true))
                     (not (= D true))
                     (= C true)
                     (= B true)
                     (= A true)))
           (a!30 (and (and a!29 (not (= Q true))) (not (= F true))))
           (a!34 (and (and a!29 (not (= Q true)))
                      (= F true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true)))))
     (let ((a!3 (ite (= Q true) (ite (>= (+ (- 1) P) 0) (+ 1 R) R) a!2))
           (a!8 (ite (= X1 true)
                     (ite (= B2 true) (+ 1 P) P)
                     (ite (= B1 true) (ite (= Z1 true) 0 P) a!7)))
           (a!14 (ite (= B1 true) (ite (= Z1 true) (+ (+ 1 P) O) O) a!13))
           (a!18 (ite (= C true) (ite (>= (+ (- 1) R) 0) (+ 1 S) S) a!17))
           (a!25 (or (or (or a!24 (= C true)) (= B true)) (= A true)))
           (a!27 (or (or (or a!24 (= C true)) (= B true)) (not (= A true))))
           (a!31 (and (and a!30 (not (= D true))) (not (= C true))))
           (a!35 (and (and a!30 (not (= D true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true)))))
     (let ((a!4 (- S1 (ite (= M1 true) (ite (= A2 true) (+ (- 1) R) R) a!3)))
           (a!15 (- Q1 (ite (= M1 true) (ite (= A2 true) (+ 2 O) O) a!14)))
           (a!19 (ite (= D true) (ite (= Y1 true) (+ (+ (- 1) S) R P O) S) a!18))
           (a!28 (and a!25
                      (or (not (= X1 true))
                          (= M1 true)
                          (= B1 true)
                          (= Q true)
                          (= F true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (= X1 true)
                          (not (= M1 true))
                          (= B1 true)
                          (= Q true)
                          (= F true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (or (= X1 true) (= M1 true))
                          (not (= B1 true))
                          (= Q true)
                          (= F true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or a!23
                          (not (= Q true))
                          (= F true)
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (or a!23 (= Q true))
                          (not (= F true))
                          (= D true)
                          (= C true)
                          (= B true)
                          (= A true))
                      a!26
                      (or a!24 (not (= C true)) (= B true) (= A true))
                      (or (or a!24 (= C true)) (not (= B true)) (= A true))
                      a!27))
           (a!32 (and (and a!31 (not (= B true))) (not (= A true))))
           (a!36 (and (and a!31 (not (= B true))) (= A true))))
     (let ((a!20 (ite (= F true)
                      (ite (>= (+ (- 1) O) 0) (+ (+ (- 1) S) O) S)
                      a!19))
           (a!37 (or (not (= P1 true))
                     a!32
                     (and (= X1 true)
                          (not (= M1 true))
                          (not (= B1 true))
                          (not (= Q true))
                          (not (= F true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     (and (not (= X1 true))
                          (= M1 true)
                          (not (= B1 true))
                          (not (= Q true))
                          (not (= F true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!33
                     (and a!29
                          (= Q true)
                          (not (= F true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!34
                     (and a!30
                          (= D true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!35
                     (and a!31 (= B true) (not (= A true)))
                     a!36)))
     (let ((a!21 (ite (= M1 true)
                      (ite (= A2 true) (+ (- 1) S) S)
                      (ite (= B1 true) (ite (= Z1 true) (+ (- 1) S) S) a!20))))
     (let ((a!22 (- T1 (ite (= X1 true) (ite (= B2 true) (+ (- 1) S) S) a!21))))
     (let ((a!42 (and (str_invariant F1
                                     E1
                                     D1
                                     C1
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
                                     E)
                      (= a!4 0)
                      (or (not (= N1 true)) a!5 (not (= V1 true)))
                      (= (- R1 a!8) 0)
                      (or a!11 (= V1 true))
                      (or (and (= O1 true) (= L true)) (not (= N1 true)))
                      (= a!15 0)
                      (= a!22 0)
                      (= (- L1 (+ Q1 R1 S1 T1)) 0)
                      (or (= P1 true) a!28)
                      (or (not (= O1 true)) (not (= L true)) (= N1 true))
                      (not (= J1 true))
                      a!37
                      (not (= I1 true))
                      (= (- K1 J) 0)
                      (not (= H1 true))
                      a!38
                      (not (= G1 true))
                      (or (not (= P1 true)) (< (+ (- 1) W1) 0) (= O1 true))
                      a!39
                      a!40
                      (= Z1 a!41)
                      (= Y1 (>= (+ (- 1) S) 0))
                      (not (= U1 true)))))
       (=> a!42
           (str_invariant X1
                          M1
                          B1
                          Q
                          F
                          D
                          C
                          B
                          A
                          W1
                          V1
                          U1
                          T1
                          S1
                          R1
                          Q1
                          P1
                          O1
                          N1
                          L1
                          K1
                          J1
                          I1
                          H1
                          G1))))))))))
    ))


(check-sat)
(exit)
