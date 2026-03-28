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
         (B1 Int)
         (C1 Int)
         (D1 Int))
  (=> (and (inv-f D1
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
              (= (- D1 U) 0)
              (= (- C1 S) 0)
              (= (- B1 R) 0)
              (= (- A1 Q) 0)
              (= (- Z P) 0)
              (= (- Y N) 0)
              (= (- X K) 0)
              (= (- W F) 0)
              (< (- F) 0)
              (= (- V C) 0)
              (< (- C U) 0))
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
         (B1 Int)
         (C1 Int)
         (D1 Int))
  (=> (and (= (- C1 S) 0)
              (= (- B1 R) 0)
              (= (- A1 Q) 0)
              (= (- Z P) 0)
              (= (- Y O) 0)
              (= (- X L) 0)
              (= (- W G) 0)
              (= (+ (- 1) R) 0)
              (= (+ (- 3) Q) 0)
              (= (+ (- 8) P) 0)
              (= (+ (- 2) O) 0)
              (= (+ (- 4) L) 0)
              (= S 0)
              (= G 0))
         (inv-f D1 C1 B1 A1 Z Y X W V U T S R Q P O N M L K J I H G F E D C B A))
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
         (D2 Int)
         (E2 Int)
         (F2 Int)
         (G2 Int)
         (H2 Int))
  (let ((a!1 (and (= (- S E1) 0)
                     (= (- O D1) 0)
                     (= (- J C1) 0)
                     (= (- G B1) 0))))
     (let ((a!2 (and (and a!1 (>= (- J) 0))
                     (>= (- (+ (- 1) Z) G) 0)
                     (= (- F Z) 0)
                     (= (+ (- 453) N) 0)
                     (= (- M N) 0)
                     (= (- D F) 0)
                     (= (+ (- (- 1) J) I) 0)
                     (= (- (+ (- 611) R) M) 0)
                     (= (- R E) 0)
                     (= (- M C) 0)
                     (= (- I B) 0)
                     (= (- D A) 0)
                     (= (- J1 Z) 0)
                     (= (- H2 Z) 0)
                     (= (- I1 X) 0)
                     (= (- W1 X) 0)
                     (= (- H1 W) 0)
                     (= (- L1 W) 0)
                     (= (- G1 V) 0)
                     (= (- A1 V) 0)
                     (= (- F1 U) 0)
                     (= (- P U) 0)))
           (a!3 (and (and a!1 (>= (- J) 0))
                     (< (- (+ (- 1) Z) G) 0)
                     (= (- M O) 0)
                     (= (- D G) 0)
                     (= (+ (- (- 1) J) I) 0)
                     (= (- (+ (- 611) R) M) 0)
                     (= (- R E) 0)
                     (= (- M C) 0)
                     (= (- I B) 0)
                     (= (- D A) 0)
                     (= (- J1 Z) 0)
                     (= (- H2 Z) 0)
                     (= (- I1 X) 0)
                     (= (- W1 X) 0)
                     (= (- H1 W) 0)
                     (= (- L1 W) 0)
                     (= (- G1 V) 0)
                     (= (- A1 V) 0)
                     (= (- F1 U) 0)
                     (= (- P U) 0))))
     (let ((a!4 (or (and a!1
                         (= (- S E) 0)
                         (= (- O C) 0)
                         (= (- J B) 0)
                         (= (- G A) 0)
                         (= (- J1 H2) 0)
                         (= (- I1 W1) 0)
                         (= (- H1 L1) 0)
                         (= (- G1 A1) 0)
                         (= (- F1 P) 0)
                         (= (- E1 E) 0)
                         (= (- D1 C) 0)
                         (= (- B1 A) 0))
                    a!2
                    a!3)))
       (=> (and (inv-f J1
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
                a!4)
           (inv-f H2
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
                  K1)))))
    ))


(check-sat)
(exit)
