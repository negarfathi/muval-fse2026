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
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Int
              Bool)
             Bool)
(assert (forall ((A Bool)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Bool)
         (P Bool)
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
              (not (= P true)))
         false)
    ))
(assert (forall ((A Bool)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int)
         (K Int)
         (L Int)
         (M Int)
         (N Int)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool))
  (let ((a!1 (and (= (+ (- 1) F) 0)
                     (= (+ (- 1) B) 0)
                     (= K 0)
                     (= E 0)
                     (or (>= N 0) (not (= P true)))
                     (= I 0)
                     (= H 0)
                     (= G 0)
                     (= J 0)
                     (= D 0)
                     (= (+ (- 1) C) 0)
                     (= (+ (- 1) L) 0)
                     (= M 0)
                     (= N 0)
                     (or (< N 0) (= P true))
                     (= A true)
                     (= O true))))
       (=> a!1
           (str_invariant Y X W V U T S R Q P O N M L K J I H G F E D C B A)))
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
         (P Int)
         (Q Bool)
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
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int)
         (M1 Bool)
         (N1 Int)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
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
  (let ((a!1 (ite (= C true)
                     (ite (= C2 true) (+ 1 L) L)
                     (ite (= B true) (ite (= B2 true) (+ (- 1) L) L) L)))
           (a!3 (ite (= F true)
                     (ite (>= (+ (- 1) M) 0) (+ (- 1) M) M)
                     (ite (= D true) (ite (= D2 true) (+ 1 M) M) M)))
           (a!4 (ite (= C true)
                     (ite (= C2 true) (+ (- 1) K) K)
                     (ite (= B true) (ite (= B2 true) (+ 1 K) K) K)))
           (a!5 (ite (= C true)
                     (ite (= C2 true) (+ (- 1) G) G)
                     (ite (= A true) (ite (= A2 true) (+ 1 G) G) G)))
           (a!6 (ite (= C true)
                     (ite (= C2 true) (+ 5 O) O)
                     (ite (= B true) (ite (= B2 true) (+ (- 5) O) O) O)))
           (a!8 (ite (= B1 true)
                     (ite (= Z1 true) (+ (- 1) H) H)
                     (ite (= A true) (ite (= A2 true) (+ 1 H) H) H)))
           (a!9 (ite (= Q true) (ite (>= (+ (- 1) S) 0) (+ (- 1) S) S) S))
           (a!12 (ite (= Q true)
                      (ite (>= (+ (- 1) M) 0) (+ 1 N) N)
                      (ite (= B true) (ite (= B2 true) (+ (- 1) N) N) N)))
           (a!13 (ite (= M1 true)
                      (ite (= Y1 true) (+ 1 P) P)
                      (ite (= D true) (ite (= D2 true) (+ (- 1) P) P) P)))
           (a!14 (ite (= B true)
                      (ite (= B2 true) (+ 1 I) I)
                      (ite (= A true) (ite (= A2 true) (+ (- 1) I) I) I)))
           (a!15 (ite (= Q true)
                      (ite (>= (+ (- 1) S) 0) (+ 1 J) J)
                      (ite (= A true) (ite (= A2 true) (+ (- 1) J) J) J)))
           (a!16 (ite (= Q true) (ite (>= (+ (- 1) S) 0) (+ 1 R) R) R))
           (a!18 (ite (= X1 true)
                      (ite (>= (+ (- 1) T) 0) (+ (- 1) T) T)
                      (ite (= M1 true) (ite (= Y1 true) (+ 1 T) T) T)))
           (a!19 (= D2 (and (>= (+ (- 1) P) 0) (>= (+ (- 1) L) 0))))
           (a!20 (= C2 (and (>= (+ (- 1) K) 0) (>= (+ (- 1) G) 0))))
           (a!21 (= B2
                    (and (>= (+ (- 5) O) 0)
                         (>= (+ (- 1) N) 0)
                         (>= (+ (- 1) L) 0))))
           (a!22 (= A2 (and (>= (+ (- 1) J) 0) (>= (+ (- 1) I) 0))))
           (a!23 (= Z1 (and (>= (+ (- 1) R) 0) (>= (+ (- 1) H) 0))))
           (a!24 (= Y1 (and (>= (+ (- 1) S) 0) (>= (+ (- 1) O) 0)))))
     (let ((a!2 (ite (= F true)
                     (ite (>= (+ (- 1) M) 0) (+ 1 L) L)
                     (ite (= D true) (ite (= D2 true) (+ (- 1) L) L) a!1)))
           (a!7 (ite (= M1 true)
                     (ite (= Y1 true) (+ (- 1) O) O)
                     (ite (= D true) (ite (= D2 true) (+ 1 O) O) a!6)))
           (a!10 (ite (= M1 true)
                      (ite (= Y1 true) (+ (- 1) S) S)
                      (ite (= B1 true) (ite (= Z1 true) (+ 1 S) S) a!9)))
           (a!17 (- S1 (ite (= B1 true) (ite (= Z1 true) (+ (- 1) R) R) a!16))))
     (let ((a!11 (ite (= X1 true) (ite (>= (+ (- 1) T) 0) (+ 1 S) S) a!10)))
     (let ((a!25 (and (str_invariant F1
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
                      (= (- N1 a!2) 0)
                      (= (- O1 a!3) 0)
                      (= (- L1 a!4) 0)
                      (= (- H1 a!5) 0)
                      (= (- Q1 a!7) 0)
                      (= (- I1 a!8) 0)
                      (= (- T1 a!11) 0)
                      (or (>= U1 0) (not (= W1 true)))
                      (= (- P1 a!12) 0)
                      (= (- R1 a!13) 0)
                      (= (- J1 a!14) 0)
                      (= (- K1 a!15) 0)
                      (= a!17 0)
                      (= (- U1 a!18) 0)
                      (or (< U1 0) (= W1 true))
                      (not (= G1 true))
                      a!19
                      a!20
                      a!21
                      a!22
                      a!23
                      a!24
                      (not (= V1 true)))))
       (=> a!25
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
                          G1))))))
    ))


(check-sat)
(exit)
