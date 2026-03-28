(set-logic HORN)

(declare-fun str_invariant
             (Bool
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
              Int
              Bool
              Bool
              Bool
              Bool
              Bool
              Int
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
         (F Int)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Bool)
         (S Bool)
         (T Int)
         (U Bool)
         (V Bool)
         (W Bool))
  (=> (and (str_invariant W V U T S R Q P O N M L K J I H G F E D C B A)
              (not (= S true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Bool)
         (D Bool)
         (E Bool)
         (F Int)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Bool)
         (K Bool)
         (L Int)
         (M Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Bool)
         (S Bool)
         (T Int)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool))
  (let ((a!1 (and (or (not (= W true)) (not (= V true)))
                     (or (not (= W true)) (not (= U true)))
                     (or (not (= V true)) (not (= U true)))))
           (a!2 (or (= W true) (= V true) (= U true)))
           (a!3 (and (not (= W true)) (not (= V true)) (not (= U true))))
           (a!5 (= X (and (= I true) (= G true) (>= (+ (- 1) F) 0)))))
     (let ((a!4 (or (and (not (= K true)) a!2) (= J true))))
     (let ((a!6 (and (or (not (= X true)) (>= P 0) (not (= S true)))
                     (= M 0)
                     (= (- N T) 0)
                     (or (and (= X true) (< P 0)) (= S true))
                     (or (= J true) (not (= I true)))
                     (= L 0)
                     (= O 0)
                     (= (- P N) 0)
                     (= (- Q M) 0)
                     (or (= K true)
                         (and (= W true) (= V true))
                         (and (= W true) (= U true))
                         (and (= V true) (= U true)))
                     (or (not (= J true)) (= I true))
                     (= E true)
                     (or (= H true) (not (= G true)))
                     (or (not (= K true)) a!1)
                     (= D true)
                     (or (not (= H true)) (= G true))
                     (= C true)
                     (or (= H true) a!2)
                     (= (- F T) 0)
                     (= B true)
                     (or (= K true) a!3 (not (= J true)))
                     (or (not (= H true)) a!3)
                     (= A true)
                     a!4
                     a!5
                     (= R true))))
       (=> a!6 (str_invariant W V U T S R Q P O N M L K J I H G F E D C B A)))))
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
         (K Int)
         (L Bool)
         (M Int)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Int)
         (S Int)
         (T Int)
         (U Int)
         (V Int)
         (W Int)
         (X Bool)
         (Y Bool)
         (Z Bool)
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
         (K1 Int)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
         (T1 Bool)
         (U1 Bool))
  (let ((a!1 (ite (= T1 true)
                     (ite (>= (+ (- 1) V) 0) (+ 1 U) U)
                     (ite (>= (+ (- 1) U) 0) (+ (- 1) U) U)))
           (a!2 (or (not (= D1 true))
                    (not (= I1 true))
                    (= (+ (- (- 1) W) C) 0)
                    (= (- C W) 0)))
           (a!3 (ite (= I1 true) (ite (>= (+ (- 1) U) 0) (+ 1 S) S) S))
           (a!4 (ite (= T1 true) (ite (>= (+ (- 1) V) 0) (+ (- 1) V) V) V))
           (a!5 (or (= T1 true) (= I1 true) (= X true)))
           (a!6 (not (= (+ (- (- 1) W) C) 0)))
           (a!9 (ite (= X true) (ite (>= (+ (- 1) U) 0) (+ 1 R) R) R))
           (a!10 (and (not (= T1 true)) (not (= I1 true)) (not (= X true))))
           (a!11 (and (or (not (= T1 true)) (not (= I1 true)))
                      (or (not (= T1 true)) (not (= X true)))
                      (or (not (= I1 true)) (not (= X true)))))
           (a!13 (= U1 (and (= N1 true) (= L1 true) (>= (+ (- 1) K1) 0)))))
     (let ((a!7 (and (= D1 true) (= I1 true) a!6 (not (= (- C W) 0))))
           (a!12 (or (and (not (= P1 true)) a!5) (= O1 true))))
     (let ((a!8 (or (and (= U1 true) (or (< B 0) a!7)) (= E true))))
     (let ((a!14 (and (str_invariant D1
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
                      (= (- A a!1) 0)
                      (or (not (= U1 true)) (and (>= B 0) a!2) (not (= E true)))
                      (= (- R1 a!3) 0)
                      (= (- B a!4) 0)
                      (or (= M1 true) a!5)
                      a!8
                      (or (and (= O1 true) (= O true)) (not (= N1 true)))
                      (= (- Q1 a!9) 0)
                      (= (- S1 T) 0)
                      (or (not (= M1 true)) a!10)
                      (or (= P1 true)
                          (and (= T1 true) (= I1 true))
                          (and (= T1 true) (= X true))
                          (and (= I1 true) (= X true)))
                      (or (not (= O1 true)) (not (= O true)) (= N1 true))
                      (not (= J1 true))
                      (or (= L1 true) (not (= L true)))
                      (or (not (= P1 true)) a!11)
                      (not (= H1 true))
                      (or (not (= L1 true)) (= L true))
                      (not (= G1 true))
                      (= (- K1 K) 0)
                      (not (= F1 true))
                      (or (= P1 true) a!10 (not (= O1 true)))
                      (not (= E1 true))
                      (= (- C R1) 0)
                      a!12
                      a!13
                      (not (= D true)))))
       (=> a!14
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
                          E1))))))
    ))


(check-sat)
(exit)
