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
         (W Bool))
  (=> (and (str_invariant W V U T S R Q P O N M L K J I H G F E D C B A)
              (not (= N true)))
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
         (W Bool))
  (let ((a!1 (or (or (= W true) (= V true)) (= U true)))
           (a!5 (and (and (not (= W true)) (not (= V true))) (not (= U true))))
           (a!8 (and (and (not (= W true)) (not (= V true)))
                     (= U true)
                     (not (= T true))
                     (not (= S true))
                     (not (= R true))
                     (not (= Q true))
                     (not (= P true))))
           (a!12 (or (and (= H true) (>= (+ (- 1) O) 0)) (not (= G true)))))
     (let ((a!2 (or (or (or a!1 (= T true)) (= S true)) (= R true)))
           (a!3 (or (or (or a!1 (= T true)) (= S true))
                    (not (= R true))
                    (= Q true)
                    (= P true)))
           (a!6 (and (and a!5 (not (= T true))) (not (= S true))))
           (a!9 (and (and a!5 (not (= T true)))
                     (= S true)
                     (not (= R true))
                     (not (= Q true))
                     (not (= P true)))))
     (let ((a!4 (and (or (or a!2 (= Q true)) (= P true))
                     (or (not (= W true))
                         (= V true)
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     (or (= W true)
                         (not (= V true))
                         (= U true)
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     (or (or (= W true) (= V true))
                         (not (= U true))
                         (= T true)
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     (or a!1
                         (not (= T true))
                         (= S true)
                         (= R true)
                         (= Q true)
                         (= P true))
                     (or (or a!1 (= T true))
                         (not (= S true))
                         (= R true)
                         (= Q true)
                         (= P true))
                     a!3
                     (or a!2 (not (= Q true)) (= P true))
                     (or (or a!2 (= Q true)) (not (= P true)))))
           (a!7 (and (and a!6 (not (= R true))) (not (= Q true))))
           (a!10 (and (and a!6 (not (= R true))) (= Q true) (not (= P true)))))
     (let ((a!11 (or (not (= H true))
                     (and a!7 (not (= P true)))
                     (and (= W true)
                          (not (= V true))
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true))
                          (not (= P true)))
                     (and (not (= W true))
                          (= V true)
                          (not (= U true))
                          (not (= T true))
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true))
                          (not (= P true)))
                     a!8
                     (and a!5
                          (= T true)
                          (not (= S true))
                          (not (= R true))
                          (not (= Q true))
                          (not (= P true)))
                     a!9
                     (and a!6 (= R true) (not (= Q true)) (not (= P true)))
                     a!10
                     (and a!7 (= P true)))))
     (let ((a!13 (and (= (- C O) 0)
                      (or (= G true) (not (= F true)))
                      (= I 0)
                      (= J 0)
                      (= K 0)
                      (= (- L C) 0)
                      (= (- E (+ L K J I)) 0)
                      (or (= H true) a!4)
                      (or (not (= G true)) (= F true))
                      (= D true)
                      a!11
                      (= B true)
                      a!12
                      (= A true)
                      (or (not (= H true)) (< (+ (- 1) O) 0) (= G true))
                      (= N true)
                      (= M true))))
       (=> a!13 (str_invariant W V U T S R Q P O N M L K J I H G F E D C B A)))))))
    ))
(assert (forall ((A Int)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Int)
         (I Bool)
         (J Int)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
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
         (G1 Int)
         (H1 Bool)
         (I1 Bool)
         (J1 Int)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Int)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
         (R1 Bool)
         (S1 Bool)
         (T1 Bool)
         (U1 Bool)
         (V1 Bool)
         (W1 Bool)
         (X1 Bool)
         (Y1 Bool)
         (Z1 Bool))
  (let ((a!1 (ite (= E true)
                     (ite (= (+ (- 1) O) 0) (+ 1 P) P)
                     (ite (= B true) (ite (= U1 true) 0 P) P)))
           (a!4 (or (not (= K1 true))
                    (= (- (+ N1 O1 P1 Q1) J) 0)
                    (not (= S1 true))))
           (a!5 (ite (= B true) (ite (= U1 true) (+ (+ 1 P) O) O) O))
           (a!9 (not (= (- (+ N1 O1 P1 Q1) J) 0)))
           (a!10 (ite (= D true)
                      (ite (= W1 true) 1 Q)
                      (ite (= C true) (ite (= V1 true) (+ (- 1) Q) Q) Q)))
           (a!13 (ite (= C true)
                      (ite (= V1 true) (+ (- 1) R) R)
                      (ite (= B true) (ite (= U1 true) (+ (- 1) R) R) R)))
           (a!16 (or (or (= T1 true) (= I1 true)) (= X true)))
           (a!20 (and (and (not (= T1 true)) (not (= I1 true)))
                      (not (= X true))))
           (a!23 (and (and (not (= T1 true)) (not (= I1 true)))
                      (= X true)
                      (not (= M true))
                      (not (= E true))
                      (not (= D true))
                      (not (= C true))
                      (not (= B true))))
           (a!27 (or (and (= M1 true) (>= (+ (- 1) A) 0)) (not (= L1 true))))
           (a!28 (and (>= (+ (- 1) R) 0) (= Q 0) (= O 0) (= P 0)))
           (a!29 (and (>= (+ (- 1) R) 0) (>= (+ (- 1) Q) 0)))
           (a!30 (and (>= (+ (- 1) R) 0) (>= (+ (+ (- 1) P) O) 0))))
     (let ((a!2 (ite (= M true) (ite (>= (+ (- 1) P) 0) (+ (- 1) P) P) a!1))
           (a!6 (ite (= E true)
                     (ite (= (+ (- 1) O) 0) 0 O)
                     (ite (= C true) (ite (= V1 true) (+ 2 O) O) a!5)))
           (a!11 (ite (= M true) (ite (>= (+ (- 1) P) 0) (+ 1 Q) Q) a!10))
           (a!14 (ite (= X true)
                      (ite (= X1 true) (+ (- 1) R) R)
                      (ite (= D true) (ite (= W1 true) (+ (- 1) R) R) a!13)))
           (a!17 (or (or (or a!16 (= M true)) (= E true)) (= D true)))
           (a!18 (or (or (or a!16 (= M true)) (= E true))
                     (not (= D true))
                     (= C true)
                     (= B true)))
           (a!21 (and (and a!20 (not (= M true))) (not (= E true))))
           (a!24 (and (and a!20 (not (= M true)))
                      (= E true)
                      (not (= D true))
                      (not (= C true))
                      (not (= B true)))))
     (let ((a!3 (ite (= T1 true)
                     (ite (= Z1 true) (+ 1 P) P)
                     (ite (= X true) (ite (= X1 true) 0 P) a!2)))
           (a!7 (ite (= X true) (ite (= X1 true) (+ (+ 1 P) O) O) a!6))
           (a!12 (- P1 (ite (= I1 true) (ite (= Y1 true) (+ (- 1) Q) Q) a!11)))
           (a!15 (ite (= T1 true)
                      (ite (= Z1 true) (+ (- 1) R) R)
                      (ite (= I1 true) (ite (= Y1 true) (+ (- 1) R) R) a!14)))
           (a!19 (and (or (or a!17 (= C true)) (= B true))
                      (or (not (= T1 true))
                          (= I1 true)
                          (= X true)
                          (= M true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (= T1 true)
                          (not (= I1 true))
                          (= X true)
                          (= M true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (or (= T1 true) (= I1 true))
                          (not (= X true))
                          (= M true)
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or a!16
                          (not (= M true))
                          (= E true)
                          (= D true)
                          (= C true)
                          (= B true))
                      (or (or a!16 (= M true))
                          (not (= E true))
                          (= D true)
                          (= C true)
                          (= B true))
                      a!18
                      (or a!17 (not (= C true)) (= B true))
                      (or (or a!17 (= C true)) (not (= B true)))))
           (a!22 (and (and a!21 (not (= D true))) (not (= C true))))
           (a!25 (and (and a!21 (not (= D true))) (= C true) (not (= B true)))))
     (let ((a!8 (- N1 (ite (= I1 true) (ite (= Y1 true) (+ 2 O) O) a!7)))
           (a!26 (or (not (= M1 true))
                     (and a!22 (not (= B true)))
                     (and (= T1 true)
                          (not (= I1 true))
                          (not (= X true))
                          (not (= M true))
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     (and (not (= T1 true))
                          (= I1 true)
                          (not (= X true))
                          (not (= M true))
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     a!23
                     (and a!20
                          (= M true)
                          (not (= E true))
                          (not (= D true))
                          (not (= C true))
                          (not (= B true)))
                     a!24
                     (and a!21 (= D true) (not (= C true)) (not (= B true)))
                     a!25
                     (and a!22 (= B true)))))
     (let ((a!31 (and (str_invariant D1
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
                                     F)
                      (= (- O1 a!3) 0)
                      a!4
                      (= a!8 0)
                      (or (and (= K1 true) a!9) (= S1 true))
                      (or (and (= L1 true) (= K true)) (not (= K1 true)))
                      (= (- G1 H) 0)
                      (= a!12 0)
                      (= (- Q1 a!15) 0)
                      (= (- J1 (+ N1 O1 P1 Q1)) 0)
                      (or (= M1 true) a!19)
                      (or (not (= L1 true)) (not (= K true)) (= K1 true))
                      (not (= H1 true))
                      a!26
                      (not (= F1 true))
                      a!27
                      (not (= E1 true))
                      (or (not (= M1 true)) (< (+ (- 1) A) 0) (= L1 true))
                      (= Z1 a!28)
                      (= Y1 a!29)
                      (= X1 a!30)
                      (= W1 a!28)
                      (= V1 a!29)
                      (= U1 a!30)
                      (not (= R1 true)))))
       (=> a!31
           (str_invariant T1
                          I1
                          X
                          M
                          E
                          D
                          C
                          B
                          A
                          S1
                          R1
                          Q1
                          P1
                          O1
                          N1
                          M1
                          L1
                          K1
                          J1
                          H1
                          G1
                          F1
                          E1)))))))
    ))


(check-sat)
(exit)
