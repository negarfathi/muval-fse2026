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
         (Z Int)
         (A1 Int)
         (B1 Int))
  (=> (and (inv-f B1 A1 Z Y X W V U T S R Q P O N M L K J I H G F E D C B A)
              (= (- B1 R) 0)
              (= (- A1 P) 0)
              (= (- Z N) 0)
              (= (- Y L) 0)
              (= (- X K) 0)
              (= (- W J) 0)
              (= (- V H) 0)
              (= E 0)
              (= (- U E) 0)
              (not (= B 0))
              (= (- T B) 0)
              (= (- R P) 0))
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
         (Z Int)
         (A1 Int)
         (B1 Int))
  (=> (and (= (- B1 R) 0)
              (= (- A1 P) 0)
              (= (- Z O) 0)
              (= (- Y L) 0)
              (= (- X K) 0)
              (= (- W J) 0)
              (= (- V I) 0)
              (= (- U F) 0)
              (= (- T C) 0)
              (= (+ (- 4) O) 0)
              (= (+ (- 1) L) 0)
              (= (+ (- 3) K) 0)
              (= (+ (- 7) J) 0)
              (= (+ (- 1) I) 0)
              (= (- R F) 0)
              (= (- P C) 0))
         (inv-f B1 A1 Z Y X W V U T S R Q P O N M L K J I H G F E D C B A))
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
         (Z1 Int)
         (A2 Int)
         (B2 Int)
         (C2 Int)
         (D2 Int))
  (let ((a!1 (and (= (- S F1) 0) (= (- M B1) 0) (= (- I A1) 0) (= (- F Z) 0))))
     (let ((a!2 (and a!1
                     (not (= I 0))
                     (= (+ (- 1 I) H) 0)
                     (= (- R S) 0)
                     (= (+ (- 1 F) E) 0)
                     (= (+ (- (- 671) O) K) 0)
                     (= (- R H1) 0)
                     (= (- K C) 0)
                     (= (- H B) 0)
                     (= (- E A) 0)
                     (= (- I1 X) 0)
                     (= (- D2 X) 0)
                     (= (- G1 U) 0)
                     (= (- S1 U) 0)
                     (= (- E1 Q) 0)
                     (= (- W Q) 0)
                     (= (- D1 P) 0)
                     (= (- L P) 0)
                     (= (- C1 O) 0)
                     (= (- D O) 0))))
     (let ((a!3 (or (and a!1
                         (= (- S H1) 0)
                         (= (- M C) 0)
                         (= (- I B) 0)
                         (= (- F A) 0)
                         (= (- I1 D2) 0)
                         (= (- G1 S1) 0)
                         (= (- F1 H1) 0)
                         (= (- E1 W) 0)
                         (= (- D1 L) 0)
                         (= (- C1 D) 0)
                         (= (- B1 C) 0)
                         (= (- Z A) 0))
                    a!2)))
       (=> (and (inv-f I1
                       G1
                       F1
                       E1
                       D1
                       C1
                       B1
                       A1
                       Z
                       Y
                       X
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
                       K
                       J
                       I
                       H
                       G
                       F
                       E)
                a!3)
           (inv-f D2
                  S1
                  H1
                  W
                  L
                  D
                  C
                  B
                  A
                  C2
                  B2
                  A2
                  Z1
                  Y1
                  X1
                  W1
                  V1
                  U1
                  T1
                  R1
                  Q1
                  P1
                  O1
                  N1
                  M1
                  L1
                  K1
                  J1)))))
    ))


(check-sat)
(exit)
