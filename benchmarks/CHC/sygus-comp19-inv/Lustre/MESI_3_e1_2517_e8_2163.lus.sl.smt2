(set-logic HORN)

(declare-fun str_invariant
             (Bool
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
              Bool
              Bool
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
         (L Bool)
         (M Bool)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Int)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool))
  (=> (and (str_invariant A1
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
              (not (= W true)))
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
         (L Bool)
         (M Bool)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Int)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool))
  (let ((a!1 (- (- (- (- 3 K) J) I) H))
           (a!2 (and (or (not (= A1 true))
                         (not (= Z true))
                         (not (= A1 true))
                         (not (= Y true)))
                     (or (not (= A1 true)) (not (= X true)))
                     (or (not (= Z true)) (not (= Y true)))
                     (or (not (= Z true)) (not (= X true)))
                     (or (not (= Y true)) (not (= X true)))))
           (a!3 (- K (ite (>= (- (- 1) U) 0) (- U) U)))
           (a!4 (- J (ite (>= (- (- 1) T) 0) (- T) T)))
           (a!5 (- I (ite (>= (- (- 1) S) 0) (- S) S)))
           (a!6 (- H (ite (>= (- (- 1) R) 0) (- R) R))))
     (let ((a!7 (and (or (= M true) (not (= L true)))
                     (or (not (= L true)) (>= a!1 0) (not (= W true)))
                     (or (= M true)
                         (and (= A1 true) (= Z true) (= A1 true) (= Y true))
                         (and (= A1 true) (= X true))
                         (and (= Z true) (= Y true))
                         (and (= Z true) (= X true))
                         (and (= Y true) (= X true)))
                     (or (not (= M true)) (= L true))
                     (or (and (= L true) (< a!1 0)) (= W true))
                     (or (not (= M true)) a!2)
                     (= G true)
                     (= (+ (- 3) N) 0)
                     (= a!3 0)
                     (= F true)
                     (= O 0)
                     (= P 0)
                     (= Q 0)
                     (= E true)
                     (= a!4 0)
                     (= D true)
                     (= (- R N) 0)
                     (= a!5 0)
                     (= C true)
                     (= (- S O) 0)
                     (= a!6 0)
                     (= B true)
                     (= (- T P) 0)
                     (= A true)
                     (= (- U Q) 0)
                     (= V true))))
       (=> a!7
           (str_invariant A1
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
                          A))))
    ))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Bool)
         (E Bool)
         (F Bool)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Bool)
         (R Bool)
         (S Int)
         (T Int)
         (U Bool)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
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
         (P1 Int)
         (Q1 Bool)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Bool)
         (V1 Bool)
         (W1 Int)
         (X1 Int)
         (Y1 Int)
         (Z1 Int)
         (A2 Int)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool))
  (let ((a!1 (- (- (- (- 3 T1) S1) R1) P1))
           (a!2 (ite (= F1 true)
                     (ite (= D2 true) 0 W)
                     (ite (= U true) (ite (= C2 true) 0 W) W)))
           (a!5 (ite (= U true) (ite (= C2 true) (+ (+ (- 1) W) V T S) S) S))
           (a!8 (and (or (not (= B2 true))
                         (not (= Q1 true))
                         (not (= B2 true))
                         (not (= F1 true)))
                     (or (not (= B2 true)) (not (= U true)))
                     (or (not (= Q1 true)) (not (= F1 true)))
                     (or (not (= Q1 true)) (not (= U true)))
                     (or (not (= F1 true)) (not (= U true)))))
           (a!9 (ite (= F1 true)
                     (ite (= D2 true) 1 V)
                     (ite (= U true) (ite (= C2 true) 1 V) V)))
           (a!12 (- T1 (ite (>= (- (- 1) C) 0) (- C) C)))
           (a!13 (ite (= F1 true)
                      (ite (= D2 true) 0 T)
                      (ite (= U true) (ite (= C2 true) 0 T) T)))
           (a!15 (- S1 (ite (>= (- (- 1) B) 0) (- B) B)))
           (a!16 (- R1 (ite (>= (- (- 1) A) 0) (- A) A)))
           (a!17 (- P1 (ite (>= (- (- 1) A2) 0) (- A2) A2))))
     (let ((a!3 (ite (= Q1 true) (ite (>= (+ (- 1) V) 0) (+ (- 1) W) W) a!2))
           (a!6 (ite (= F1 true) (ite (= D2 true) (+ (+ (- 1) W) V T S) S) a!5))
           (a!10 (ite (= Q1 true) (ite (>= (+ (- 1) V) 0) (+ (- 1) V) V) a!9))
           (a!14 (- X1
                    (ite (= B2 true)
                         (ite (= E2 true) (+ W V T) T)
                         (ite (= Q1 true) T a!13)))))
     (let ((a!4 (- Z1 (ite (= B2 true) (ite (= E2 true) 0 W) a!3)))
           (a!7 (- W1
                   (ite (= B2 true)
                        (ite (= E2 true) (+ (- 1) S) S)
                        (ite (= Q1 true) S a!6))))
           (a!11 (- Y1 (ite (= B2 true) (ite (= E2 true) 0 V) a!10))))
     (let ((a!18 (and (str_invariant H1
                                     G1
                                     E1
                                     D1
                                     C1
                                     B1
                                     A1
                                     Z
                                     Y
                                     X
                                     W
                                     V
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
                                     I
                                     H
                                     G
                                     F
                                     E)
                      (or (and (= V1 true) (= Q true)) (not (= U1 true)))
                      (or (not (= U1 true)) (>= a!1 0) (not (= J true)))
                      (= a!4 0)
                      (or (= V1 true)
                          (and (= B2 true) (= Q1 true) (= B2 true) (= F1 true))
                          (and (= B2 true) (= U true))
                          (and (= Q1 true) (= F1 true))
                          (and (= Q1 true) (= U true))
                          (and (= F1 true) (= U true)))
                      (or (not (= V1 true)) (not (= Q true)) (= U1 true))
                      (or (and (= U1 true) (< a!1 0)) (= J true))
                      (= a!7 0)
                      (or (not (= V1 true)) a!8)
                      (not (= O1 true))
                      (= a!11 0)
                      (= a!12 0)
                      (not (= N1 true))
                      (= a!14 0)
                      (not (= M1 true))
                      (= a!15 0)
                      (not (= L1 true))
                      (= (- A2 W1) 0)
                      (= a!16 0)
                      (not (= K1 true))
                      (= (- A X1) 0)
                      (= a!17 0)
                      (not (= J1 true))
                      (= (- B Y1) 0)
                      (not (= I1 true))
                      (= (- C Z1) 0)
                      (= E2 (>= (+ (- 1) S) 0))
                      (= D2 (>= (+ (- 1) T) 0))
                      (= C2 (>= (+ (- 1) S) 0))
                      (not (= D true)))))
       (=> a!18
           (str_invariant B2
                          Q1
                          F1
                          U
                          J
                          D
                          C
                          B
                          A
                          A2
                          Z1
                          Y1
                          X1
                          W1
                          V1
                          U1
                          T1
                          S1
                          R1
                          P1
                          O1
                          N1
                          M1
                          L1
                          K1
                          J1
                          I1))))))
    ))


(check-sat)
(exit)
