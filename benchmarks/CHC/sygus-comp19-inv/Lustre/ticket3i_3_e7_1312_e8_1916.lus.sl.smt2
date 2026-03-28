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
              Int
              Int
              Int
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
         (P Bool)
         (Q Bool)
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
              (not (= Q true)))
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
         (P Bool)
         (Q Bool)
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
         (D1 Bool))
  (let ((a!1 (or (and (< (+ (- 3) O) 0) (< (+ (- 3) N) 0) (< (+ (- 3) M) 0))
                    (= G true)))
           (a!2 (or (or (= D1 true) (= C1 true)) (= B1 true)))
           (a!8 (and (and (not (= D1 true)) (not (= C1 true)))
                     (not (= B1 true))))
           (a!12 (and (and (not (= D1 true)) (not (= C1 true)))
                      (= B1 true)
                      (not (= A1 true))
                      (not (= Z true))
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true)))))
     (let ((a!3 (or (or (or a!2 (= A1 true)) (= Z true)) (= Y true)))
           (a!5 (or (or (or a!2 (= A1 true)) (= Z true))
                    (not (= Y true))
                    (= X true)
                    (= W true)
                    (= V true)))
           (a!9 (and (and a!8 (not (= A1 true))) (not (= Z true))))
           (a!13 (and (and a!8 (not (= A1 true)))
                      (= Z true)
                      (not (= Y true))
                      (not (= X true))
                      (not (= W true))
                      (not (= V true)))))
     (let ((a!4 (or (or (or a!3 (= X true)) (= W true)) (= V true)))
           (a!6 (or (or (or a!3 (= X true)) (= W true)) (not (= V true))))
           (a!10 (and (and a!9 (not (= Y true))) (not (= X true))))
           (a!14 (and (and a!9 (not (= Y true)))
                      (= X true)
                      (not (= W true))
                      (not (= V true)))))
     (let ((a!7 (and a!4
                     (or (not (= D1 true))
                         (= C1 true)
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true))
                     (or (= D1 true)
                         (not (= C1 true))
                         (= B1 true)
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true))
                     (or (or (= D1 true) (= C1 true))
                         (not (= B1 true))
                         (= A1 true)
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true))
                     (or a!2
                         (not (= A1 true))
                         (= Z true)
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true))
                     (or (or a!2 (= A1 true))
                         (not (= Z true))
                         (= Y true)
                         (= X true)
                         (= W true)
                         (= V true))
                     a!5
                     (or a!3 (not (= X true)) (= W true) (= V true))
                     (or (or a!3 (= X true)) (not (= W true)) (= V true))
                     a!6))
           (a!11 (and (and a!10 (not (= W true))) (not (= V true))))
           (a!15 (and (and a!10 (not (= W true))) (= V true))))
     (let ((a!16 (or (not (= F true))
                     a!11
                     (and (= D1 true)
                          (not (= C1 true))
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true)))
                     (and (not (= D1 true))
                          (= C1 true)
                          (not (= B1 true))
                          (not (= A1 true))
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true)))
                     a!12
                     (and a!8
                          (= A1 true)
                          (not (= Z true))
                          (not (= Y true))
                          (not (= X true))
                          (not (= W true))
                          (not (= V true)))
                     a!13
                     (and a!9
                          (= Y true)
                          (not (= X true))
                          (not (= W true))
                          (not (= V true)))
                     a!14
                     (and a!10 (= W true) (not (= V true)))
                     a!15)))
     (let ((a!17 (and (or (>= (+ (- 3) O) 0)
                          (>= (+ (- 3) N) 0)
                          (>= (+ (- 3) M) 0)
                          (not (= G true)))
                      (= M 0)
                      (= N 0)
                      (= (- L R) 0)
                      (or (not (= D true)) (>= L 0) (not (= Q true)))
                      (or (= E true) (not (= D true)))
                      a!1
                      (= (- H S) 0)
                      (= (- I T) 0)
                      (= (- K L) 0)
                      (= (- J U) 0)
                      (= O 0)
                      (or (and (= D true) (< L 0)) (= Q true))
                      (or (= F true) a!7)
                      (or (not (= E true)) (= D true))
                      (= C true)
                      a!16
                      (= B true)
                      (or (and (= F true) (>= U 0) (>= T 0) (>= S 0) (>= R 0))
                          (not (= E true)))
                      (= A true)
                      (or (not (= F true))
                          (< U 0)
                          (< T 0)
                          (< S 0)
                          (< R 0)
                          (= E true))
                      (= P true))))
       (=> a!17
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
                          A))))))))
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
         (U Bool)
         (V Bool)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
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
         (B2 Bool)
         (C2 Bool)
         (D2 Int)
         (E2 Int)
         (F2 Int)
         (G2 Int)
         (H2 Bool))
  (let ((a!1 (ite (and (= (+ (- 1) R) 0) (>= (- O S1) 0)) 2 R))
           (a!2 (ite (= A true) (ite (= (+ (- 2) R) 0) 0 R) R))
           (a!4 (ite (and (= (+ (- 1) S) 0) (>= (- O T1) 0)) 2 S))
           (a!5 (ite (= E true) (ite (= (+ (- 2) S) 0) 0 S) S))
           (a!7 (ite (= A1 true)
                     (ite (= S 0) (+ 1 Q) Q)
                     (ite (= C true) (ite (= R 0) (+ 1 Q) Q) Q)))
           (a!9 (or (and (< (+ (- 3) A2) 0)
                         (< (+ (- 3) Z1) 0)
                         (< (+ (- 3) Y1) 0))
                    (= R1 true)))
           (a!10 (- S1 (ite (= C true) (ite (= R 0) Q L) L)))
           (a!11 (- T1 (ite (= A1 true) (ite (= S 0) Q M) M)))
           (a!12 (ite (= A true) (ite (= (+ (- 2) R) 0) (+ 1 O) O) O))
           (a!15 (ite (and (= (+ (- 1) T) 0) (>= (- O U1) 0)) 2 T))
           (a!16 (ite (= L1 true) (ite (= (+ (- 2) T) 0) 0 T) T))
           (a!18 (- U1 (ite (= H2 true) (ite (= T 0) Q N) N)))
           (a!19 (or (or (= H2 true) (= W1 true)) (= L1 true)))
           (a!25 (and (and (not (= H2 true)) (not (= W1 true)))
                      (not (= L1 true))))
           (a!29 (and (and (not (= H2 true)) (not (= W1 true)))
                      (= L1 true)
                      (not (= A1 true))
                      (not (= P true))
                      (not (= E true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true)))))
     (let ((a!3 (- Y1
                   (ite (= C true) (ite (= R 0) 1 R) (ite (= B true) a!1 a!2))))
           (a!6 (- Z1
                   (ite (= A1 true) (ite (= S 0) 1 S) (ite (= P true) a!4 a!5))))
           (a!8 (- X1 (ite (= H2 true) (ite (= T 0) (+ 1 Q) Q) a!7)))
           (a!13 (ite (= E true) (ite (= (+ (- 2) S) 0) (+ 1 O) O) a!12))
           (a!17 (- A2
                    (ite (= H2 true)
                         (ite (= T 0) 1 T)
                         (ite (= W1 true) a!15 a!16))))
           (a!20 (or (or (or a!19 (= A1 true)) (= P true)) (= E true)))
           (a!22 (or (or (or a!19 (= A1 true)) (= P true))
                     (not (= E true))
                     (= C true)
                     (= B true)
                     (= A true)))
           (a!26 (and (and a!25 (not (= A1 true))) (not (= P true))))
           (a!30 (and (and a!25 (not (= A1 true)))
                      (= P true)
                      (not (= E true))
                      (not (= C true))
                      (not (= B true))
                      (not (= A true)))))
     (let ((a!14 (ite (= L1 true) (ite (= (+ (- 2) T) 0) (+ 1 O) O) a!13))
           (a!21 (or (or (or a!20 (= C true)) (= B true)) (= A true)))
           (a!23 (or (or (or a!20 (= C true)) (= B true)) (not (= A true))))
           (a!27 (and (and a!26 (not (= E true))) (not (= C true))))
           (a!31 (and (and a!26 (not (= E true)))
                      (= C true)
                      (not (= B true))
                      (not (= A true)))))
     (let ((a!24 (and a!21
                      (or (not (= H2 true))
                          (= W1 true)
                          (= L1 true)
                          (= A1 true)
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (= H2 true)
                          (not (= W1 true))
                          (= L1 true)
                          (= A1 true)
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (or (= H2 true) (= W1 true))
                          (not (= L1 true))
                          (= A1 true)
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or a!19
                          (not (= A1 true))
                          (= P true)
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true))
                      (or (or a!19 (= A1 true))
                          (not (= P true))
                          (= E true)
                          (= C true)
                          (= B true)
                          (= A true))
                      a!22
                      (or a!20 (not (= C true)) (= B true) (= A true))
                      (or (or a!20 (= C true)) (not (= B true)) (= A true))
                      a!23))
           (a!28 (and (and a!27 (not (= B true))) (not (= A true))))
           (a!32 (and (and a!27 (not (= B true))) (= A true))))
     (let ((a!33 (or (not (= Q1 true))
                     a!28
                     (and (= H2 true)
                          (not (= W1 true))
                          (not (= L1 true))
                          (not (= A1 true))
                          (not (= P true))
                          (not (= E true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     (and (not (= H2 true))
                          (= W1 true)
                          (not (= L1 true))
                          (not (= A1 true))
                          (not (= P true))
                          (not (= E true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!29
                     (and a!25
                          (= A1 true)
                          (not (= P true))
                          (not (= E true))
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!30
                     (and a!26
                          (= E true)
                          (not (= C true))
                          (not (= B true))
                          (not (= A true)))
                     a!31
                     (and a!27 (= B true) (not (= A true)))
                     a!32)))
     (let ((a!34 (and (str_invariant J1
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
                      (or (>= (+ (- 3) A2) 0)
                          (>= (+ (- 3) Z1) 0)
                          (>= (+ (- 3) Y1) 0)
                          (not (= R1 true)))
                      (= a!3 0)
                      (= a!6 0)
                      (= a!8 0)
                      (or (not (= O1 true)) (>= X1 0) (not (= C2 true)))
                      (or (and (= P1 true) (= H true)) (not (= O1 true)))
                      a!9
                      (= a!10 0)
                      (= a!11 0)
                      (= (- V1 a!14) 0)
                      (= a!17 0)
                      (= a!18 0)
                      (or (and (= O1 true) (< X1 0)) (= C2 true))
                      (or (= Q1 true) a!24)
                      (or (not (= P1 true)) (not (= H true)) (= O1 true))
                      (not (= N1 true))
                      a!33
                      (not (= M1 true))
                      (or (and (= Q1 true)
                               (>= G2 0)
                               (>= F2 0)
                               (>= E2 0)
                               (>= D2 0))
                          (not (= P1 true)))
                      (not (= K1 true))
                      (or (not (= Q1 true))
                          (< G2 0)
                          (< F2 0)
                          (< E2 0)
                          (< D2 0)
                          (= P1 true))
                      (not (= B2 true)))))
       (=> a!34
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
                          K1))))))))
    ))


(check-sat)
(exit)
