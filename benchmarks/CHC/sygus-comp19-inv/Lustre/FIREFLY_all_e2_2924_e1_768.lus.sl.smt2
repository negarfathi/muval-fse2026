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
         (Y Bool))
  (=> (and (str_invariant Y X W V U T S R Q P O N M L K J I H G F E D C B A)
              (not (= P true)))
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
         (Y Bool))
  (let ((a!1 (- (- (- (- G K) L) M) N))
           (a!3 (not (= (- (+ K L M N) G) 0)))
           (a!5 (or (or (= Y true) (= X true)) (= W true)))
           (a!9 (and (and (not (= Y true)) (not (= X true))) (not (= W true))))
           (a!12 (and (and (not (= Y true)) (not (= X true)))
                      (= W true)
                      (not (= V true))
                      (not (= U true))
                      (not (= T true))
                      (not (= S true))
                      (not (= R true))))
           (a!16 (or (and (= J true) (>= Q 0) (>= (- 4 Q) 0)) (not (= I true)))))
     (let ((a!2 (and (= (- (+ K L M N) G) 0) (>= a!1 0) (>= N 0) (>= (- G N) 0)))
           (a!4 (and (= H true) (or a!3 (< a!1 0) (< N 0) (< (- G N) 0))))
           (a!6 (or (or (or a!5 (= V true)) (= U true)) (= T true)))
           (a!7 (or (or (or a!5 (= V true)) (= U true))
                    (not (= T true))
                    (= S true)
                    (= R true)))
           (a!10 (and (and a!9 (not (= V true))) (not (= U true))))
           (a!13 (and (and a!9 (not (= V true)))
                      (= U true)
                      (not (= T true))
                      (not (= S true))
                      (not (= R true)))))
     (let ((a!8 (and (or (or a!6 (= S true)) (= R true))
                     (or (not (= Y true))
                         (= X true)
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or (= Y true)
                         (not (= X true))
                         (= W true)
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or (or (= Y true) (= X true))
                         (not (= W true))
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or a!5
                         (not (= V true))
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true))
                     (or (or a!5 (= V true))
                         (not (= U true))
                         (= T true)
                         (= S true)
                         (= R true))
                     a!7
                     (or a!6 (not (= S true)) (= R true))
                     (or (or a!6 (= S true)) (not (= R true)))))
           (a!11 (and (and a!10 (not (= T true))) (not (= S true))))
           (a!14 (and (and a!10 (not (= T true))) (= S true) (not (= R true)))))
     (let ((a!15 (or (not (= J true))
                     (and a!11 (not (= R true)))
                     (and (= Y true)
                          (not (= X true))
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     (and (not (= Y true))
                          (= X true)
                          (not (= W true))
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!12
                     (and a!9
                          (= V true)
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true)))
                     a!13
                     (and a!10 (= T true) (not (= S true)) (not (= R true)))
                     a!14
                     (and a!11 (= R true)))))
     (let ((a!17 (and (or (not (= H true)) a!2 (not (= P true)))
                      (= (- D Q) 0)
                      (or a!4 (= P true))
                      (or (= I true) (not (= H true)))
                      (= K 0)
                      (= L 0)
                      (= M 0)
                      (= (- N D) 0)
                      (= (- F (+ K L M N)) 0)
                      (or (= J true) a!8)
                      (or (not (= I true)) (= H true))
                      (= E true)
                      a!15
                      (= C true)
                      (= (- G Q) 0)
                      (= B true)
                      a!16
                      (= A true)
                      (or (not (= J true)) (< Q 0) (< (- 4 Q) 0) (= I true))
                      (= O true))))
       (=> a!17
           (str_invariant Y X W V U T S R Q P O N M L K J I H G F E D C B A)))))))
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
         (L Int)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Int)
         (Q Bool)
         (R Int)
         (S Int)
         (T Int)
         (U Bool)
         (V Bool)
         (W Int)
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
         (L1 Int)
         (M1 Bool)
         (N1 Int)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Bool)
         (W1 Bool)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Bool)
         (A2 Bool)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool))
  (let ((a!1 (ite (= F true)
                     (ite (= (+ (- 1) P) 0) (+ 1 R) R)
                     (ite (= B true) (ite (= Y1 true) 0 R) R)))
           (a!4 (- (- (- (- N1 R1) S1) T1) U1))
           (a!6 (ite (= B true) (ite (= Y1 true) (+ (+ 1 R) P) P) P))
           (a!10 (not (= (- (+ R1 S1 T1 U1) K) 0)))
           (a!11 (not (= (- (+ R1 S1 T1 U1) N1) 0)))
           (a!13 (ite (= D true)
                      (ite (= A2 true) 1 S)
                      (ite (= C true) (ite (= Z1 true) (+ (- 1) S) S) S)))
           (a!16 (ite (= C true)
                      (ite (= Z1 true) (+ (- 1) T) T)
                      (ite (= B true) (ite (= Y1 true) (+ (- 1) T) T) T)))
           (a!19 (or (or (= X1 true) (= M1 true)) (= B1 true)))
           (a!23 (and (and (not (= X1 true)) (not (= M1 true)))
                      (not (= B1 true))))
           (a!26 (and (and (not (= X1 true)) (not (= M1 true)))
                      (= B1 true)
                      (not (= Q true))
                      (not (= F true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))))
           (a!30 (or (and (= Q1 true) (>= A 0) (>= (- 4 A) 0))
                     (not (= P1 true))))
           (a!31 (and (>= (+ (- 1) T) 0) (= S 0) (= P 0) (= R 0)))
           (a!32 (and (>= (+ (- 1) T) 0) (>= (+ (- 1) S) 0)))
           (a!33 (and (>= (+ (- 1) T) 0) (>= (+ (+ (- 1) R) P) 0))))
     (let ((a!2 (ite (= Q true) (ite (>= (+ (- 1) R) 0) (+ (- 1) R) R) a!1))
           (a!5 (and (= (- (+ R1 S1 T1 U1) K) 0)
                     (= (- (+ R1 S1 T1 U1) N1) 0)
                     (>= a!4 0)
                     (>= U1 0)
                     (>= (- N1 U1) 0)))
           (a!7 (ite (= F true)
                     (ite (= (+ (- 1) P) 0) 0 P)
                     (ite (= C true) (ite (= Z1 true) (+ 2 P) P) a!6)))
           (a!12 (and (= O1 true)
                      (or a!10 a!11 (< a!4 0) (< U1 0) (< (- N1 U1) 0))))
           (a!14 (ite (= Q true) (ite (>= (+ (- 1) R) 0) (+ 1 S) S) a!13))
           (a!17 (ite (= B1 true)
                      (ite (= B2 true) (+ (- 1) T) T)
                      (ite (= D true) (ite (= A2 true) (+ (- 1) T) T) a!16)))
           (a!20 (or (or (or a!19 (= Q true)) (= F true)) (= D true)))
           (a!21 (or (or (or a!19 (= Q true)) (= F true))
                     (not (= D true))
                     (= C true)
                     (= B true)))
           (a!24 (and (and a!23 (not (= Q true))) (not (= F true))))
           (a!27 (and (and a!23 (not (= Q true)))
                      (= F true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true)))))
     (let ((a!3 (ite (= X1 true)
                     (ite (= D2 true) (+ 1 R) R)
                     (ite (= B1 true) (ite (= B2 true) 0 R) a!2)))
           (a!8 (ite (= B1 true) (ite (= B2 true) (+ (+ 1 R) P) P) a!7))
           (a!15 (- T1 (ite (= M1 true) (ite (= C2 true) (+ (- 1) S) S) a!14)))
           (a!18 (ite (= X1 true)
                      (ite (= D2 true) (+ (- 1) T) T)
                      (ite (= M1 true) (ite (= C2 true) (+ (- 1) T) T) a!17)))
           (a!22 (and (or (or a!20 (= C true)) (= B true))
                      (or (not (= X1 true))
                          (= M1 true)
                          (= B1 true)
                          (= Q true)
                          (= F true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (= X1 true)
                          (not (= M1 true))
                          (= B1 true)
                          (= Q true)
                          (= F true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (or (= X1 true) (= M1 true))
                          (not (= B1 true))
                          (= Q true)
                          (= F true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or a!19
                          (not (= Q true))
                          (= F true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (or a!19 (= Q true))
                          (not (= F true))
                          (= D true)
                          (= C true)
                          (= B true))
                      a!21
                      (or a!20 (not (= C true)) (= B true))
                      (or (or a!20 (= C true)) (not (= B true)))))
           (a!25 (and (and a!24 (not (= D true))) (not (= C true))))
           (a!28 (and (and a!24 (not (= D true))) (= C true) (not (= B true)))))
     (let ((a!9 (- R1 (ite (= M1 true) (ite (= C2 true) (+ 2 P) P) a!8)))
           (a!29 (or (not (= Q1 true))
                     (and a!25 (not (= B true)))
                     (and (= X1 true)
                          (not (= M1 true))
                          (not (= B1 true))
                          (not (= Q true))
                          (not (= F true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     (and (not (= X1 true))
                          (= M1 true)
                          (not (= B1 true))
                          (not (= Q true))
                          (not (= F true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     a!26
                     (and a!23
                          (= Q true)
                          (not (= F true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     a!27
                     (and a!24 (= D true) (not (= C true)) (not (= B true)))
                     a!28
                     (and a!25 (= B true)))))
     (let ((a!34 (and (str_invariant F1
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
                      (= (- S1 a!3) 0)
                      (or (not (= O1 true)) a!5 (not (= W1 true)))
                      (= a!9 0)
                      (or a!12 (= W1 true))
                      (or (and (= P1 true) (= M true)) (not (= O1 true)))
                      (= (- J1 I) 0)
                      (= a!15 0)
                      (= (- U1 a!18) 0)
                      (= (- L1 (+ R1 S1 T1 U1)) 0)
                      (or (= Q1 true) a!22)
                      (or (not (= P1 true)) (not (= M true)) (= O1 true))
                      (not (= K1 true))
                      a!29
                      (not (= I1 true))
                      (= (- N1 L) 0)
                      (not (= H1 true))
                      a!30
                      (not (= G1 true))
                      (or (not (= Q1 true)) (< A 0) (< (- 4 A) 0) (= P1 true))
                      (= D2 a!31)
                      (= C2 a!32)
                      (= B2 a!33)
                      (= A2 a!31)
                      (= Z1 a!32)
                      (= Y1 a!33)
                      (not (= V1 true)))))
       (=> a!34
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
                          G1)))))))
    ))


(check-sat)
(exit)
