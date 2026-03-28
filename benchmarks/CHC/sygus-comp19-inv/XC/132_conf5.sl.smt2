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
         (D1 Int)
         (E1 Int)
         (F1 Int)
         (G1 Int)
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int))
  (=> (and (inv-f L1
                     K1
                     J1
                     I1
                     H1
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
              (= (- L1 B1) 0)
              (= (- K1 Y) 0)
              (= (- J1 U) 0)
              (= (- I1 Q) 0)
              (= (- H1 M) 0)
              (= (- G1 J) 0)
              (= (- F1 H) 0)
              (= (- E1 E) 0)
              (= (- D1 C) 0)
              (< Y 0))
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
         (D1 Int)
         (E1 Int)
         (F1 Int)
         (G1 Int)
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int))
  (=> (and (= (- K1 Z) 0)
              (= (- I1 R) 0)
              (= (- H1 N) 0)
              (= (- G1 J) 0)
              (= (- F1 I) 0)
              (= (- E1 E) 0)
              (= (+ (- 9) R) 0)
              (= N 0)
              (= (+ (- 7) J) 0)
              (= (+ (- 4) I) 0)
              (= E 0)
              (= Z 0))
         (inv-f L1
                K1
                J1
                I1
                H1
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
                A))
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
         (H2 Int)
         (I2 Int)
         (J2 Int)
         (K2 Int)
         (L2 Int)
         (M2 Int)
         (N2 Int)
         (O2 Int)
         (P2 Int)
         (Q2 Int)
         (R2 Int)
         (S2 Int)
         (T2 Int)
         (U2 Int)
         (V2 Int)
         (W2 Int)
         (X2 Int))
  (let ((a!1 (and (= (- C1 P1) 0)
                     (= (- Y O1) 0)
                     (= (- T N1) 0)
                     (= (- P M1) 0)
                     (= (- K K1) 0)
                     (= (- E I1) 0))))
     (let ((a!2 (and (and a!1 (>= (+ (- 49) G1) 0))
                     (>= (- 56 G1) 0)
                     (= (+ (* (- 2) C1) X) 0)
                     (= (+ (- 676) I) 0)
                     (= (+ (- 48 G1) D) 0)
                     (= (+ (- P T) O) 0)
                     (= (- (- B1 X) D) 0)
                     (= (+ (- 688) S) 0)
                     (= (- A1 B1) 0)
                     (= (- W X) 0)
                     (= (- R S) 0)
                     (= (- N O) 0)
                     (= (- H I) 0)
                     (= (- C D) 0)
                     (= (- A1 M2) 0)
                     (= (- W B2) 0)
                     (= (- R Q1) 0)
                     (= (- N F1) 0)
                     (= (- H J) 0)
                     (= (- C A) 0)
                     (= (- R1 G1) 0)
                     (= (- X2 G1) 0)
                     (= (- L1 M) 0)
                     (= (- U M) 0)
                     (= (- J1 G) 0)
                     (= (- B G) 0)
                     (= (- H1 W2) 0)))
           (a!3 (and (and a!1 (>= (+ (- 49) G1) 0))
                     (< (- 56 G1) 0)
                     (= (- A1 C1) 0)
                     (= (- W Y) 0)
                     (= (- R T) 0)
                     (= (- N P) 0)
                     (= (- H K) 0)
                     (= (- C E) 0)
                     (= (- A1 M2) 0)
                     (= (- W B2) 0)
                     (= (- R Q1) 0)
                     (= (- N F1) 0)
                     (= (- H J) 0)
                     (= (- C A) 0)
                     (= (- R1 G1) 0)
                     (= (- X2 G1) 0)
                     (= (- L1 M) 0)
                     (= (- U M) 0)
                     (= (- J1 G) 0)
                     (= (- B G) 0)
                     (= (- H1 W2) 0))))
     (let ((a!4 (or (and a!1
                         (= (- C1 M2) 0)
                         (= (- Y B2) 0)
                         (= (- T Q1) 0)
                         (= (- P F1) 0)
                         (= (- K J) 0)
                         (= (- E A) 0)
                         (= (- R1 X2) 0)
                         (= (- P1 M2) 0)
                         (= (- O1 B2) 0)
                         (= (- N1 Q1) 0)
                         (= (- M1 F1) 0)
                         (= (- L1 U) 0)
                         (= (- K1 J) 0)
                         (= (- J1 B) 0)
                         (= (- I1 A) 0)
                         (= (- H1 W2) 0))
                    a!2
                    a!3
                    (and a!1
                         (< (+ (- 49) G1) 0)
                         (= (- A1 C1) 0)
                         (= (- W Y) 0)
                         (= (- R T) 0)
                         (= (- N P) 0)
                         (= (- H K) 0)
                         (= (- C E) 0)
                         (= (- A1 M2) 0)
                         (= (- W B2) 0)
                         (= (- R Q1) 0)
                         (= (- N F1) 0)
                         (= (- H J) 0)
                         (= (- C A) 0)
                         (= (- R1 G1) 0)
                         (= (- X2 G1) 0)
                         (= (- L1 M) 0)
                         (= (- U M) 0)
                         (= (- J1 G) 0)
                         (= (- B G) 0)
                         (= (- H1 W2) 0)))))
       (=> (and (inv-f R1
                       P1
                       O1
                       N1
                       M1
                       L1
                       K1
                       J1
                       I1
                       H1
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
                       E
                       D
                       C)
                a!4)
           (inv-f X2
                  M2
                  B2
                  Q1
                  F1
                  U
                  J
                  B
                  A
                  W2
                  V2
                  U2
                  T2
                  S2
                  R2
                  Q2
                  P2
                  O2
                  N2
                  L2
                  K2
                  J2
                  I2
                  H2
                  G2
                  F2
                  E2
                  D2
                  C2
                  A2
                  Z1
                  Y1
                  X1
                  W1
                  V1
                  U1
                  T1
                  S1)))))
    ))


(check-sat)
(exit)
