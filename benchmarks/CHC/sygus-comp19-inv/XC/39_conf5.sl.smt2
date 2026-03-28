(set-logic HORN)

(declare-fun inv-f
             (Int
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
              Int)
             Bool)
(assert (forall ((A Int)
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
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Int)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int))
  (=> (and (inv-f Z Y X W V U T S R Q P O N M L K J I H G F E D C B A)
              (= (- Z P) 0)
              (= (- Y L) 0)
              (= (- X K) 0)
              (= (- W J) 0)
              (= (- V H) 0)
              (= (- U D) 0)
              (= (- P A) 0)
              (= (- T A) 0)
              (< (- A P) 0))
         false)
    ))
(assert (forall ((A Int)
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
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Int)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int))
  (=> (and (= (- Z Q) 0)
              (= (- Y L) 0)
              (= (- X K) 0)
              (= (- W J) 0)
              (= (- V I) 0)
              (= (- U E) 0)
              (= (- T A) 0)
              (= (+ (- 3) L) 0)
              (= K 0)
              (= (+ (- 7) J) 0)
              (= (+ (- 5) I) 0)
              (= E 0)
              (= Q 0)
              (>= (+ (- 1) A) 0))
         (inv-f Z Y X W V U T S R Q P O N M L K J I H G F E D C B A))
    ))
(assert (forall ((A Int)
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
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Int)
         (T Int)
         (U Int)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Int)
         (C1 Int)
         (D1 Int)
         (E1 Int)
         (F1 Int)
         (G1 Int)
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int)
         (M1 Int)
         (N1 Int)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Int)
         (W1 Int)
         (X1 Int)
         (Y1 Int)
         (Z1 Int))
  (let ((a!1 (and (= (- V G1) 0) (= (- M B1) 0) (= (- I A1) 0))))
     (let ((a!2 (and a!1
                     (= (- V E) 0)
                     (= (+ (- 1) U) 0)
                     (= (- (+ (- 965) L) I) 0)
                     (= (- T U) 0)
                     (= (- K L) 0)
                     (= (- G I) 0)
                     (= (- T Z1) 0)
                     (= (- K H) 0)
                     (= (- G D) 0)
                     (= (- F1 Q) 0)
                     (= (- O1 Q) 0)
                     (= (- E1 P) 0)
                     (= (- D1 P) 0)
                     (= (- C1 O) 0)
                     (= (- S O) 0)
                     (= (- Z E) 0)
                     (= (- C E) 0)
                     (= (- Y B) 0)))
           (a!3 (and a!1
                     (not (= (- V E) 0))
                     (= (+ (- (- 1) V) R) 0)
                     (= (- F O) 0)
                     (= (- T R) 0)
                     (= (- K M) 0)
                     (= (- G F) 0)
                     (= (- T Z1) 0)
                     (= (- K H) 0)
                     (= (- G D) 0)
                     (= (- F1 Q) 0)
                     (= (- O1 Q) 0)
                     (= (- E1 P) 0)
                     (= (- D1 P) 0)
                     (= (- C1 O) 0)
                     (= (- S O) 0)
                     (= (- Z E) 0)
                     (= (- C E) 0)
                     (= (- Y B) 0))))
     (let ((a!4 (or (and a!1
                         (= (- V Z1) 0)
                         (= (- M H) 0)
                         (= (- I D) 0)
                         (= (- G1 Z1) 0)
                         (= (- F1 O1) 0)
                         (= (- E1 D1) 0)
                         (= (- C1 S) 0)
                         (= (- B1 H) 0)
                         (= (- A1 D) 0)
                         (= (- Z C) 0)
                         (= (- Y B) 0))
                    a!2
                    a!3)))
       (=> (and (inv-f G1
                       F1
                       E1
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
                       G
                       F
                       E)
                a!4)
           (inv-f Z1
                  O1
                  D1
                  S
                  H
                  D
                  C
                  B
                  A
                  Y1
                  X1
                  W1
                  V1
                  U1
                  T1
                  S1
                  R1
                  Q1
                  P1
                  N1
                  M1
                  L1
                  K1
                  J1
                  I1
                  H1)))))
    ))


(check-sat)
(exit)
