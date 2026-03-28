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
         (F1 Int))
  (=> (and (inv-f F1
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
              (= (- F1 X) 0)
              (= (- E1 V) 0)
              (= (- D1 T) 0)
              (= (- C1 R) 0)
              (= (- B1 K) 0)
              (= (- A1 G) 0)
              (< (+ (- 1) K) 0)
              (= (- Z C) 0)
              (< C 0))
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
         (F1 Int))
  (=> (and (= (- F1 X) 0)
              (= (- E1 V) 0)
              (= (- D1 T) 0)
              (= (- C1 S) 0)
              (= (- B1 L) 0)
              (= (+ (- 7) S) 0)
              (= (+ (- 1) X) 0)
              (= (+ (- 1) V) 0)
              (= (+ (- 1) T) 0)
              (= (+ (- 1) L) 0))
         (inv-f F1
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
         (L2 Int))
  (let ((a!1 (and (= (- W I1) 0)
                     (= (- O H1) 0)
                     (= (- K G1) 0)
                     (= (- F F1) 0))))
     (let ((a!2 (and (and a!1 (>= (+ (- 1) O) 0)) (>= (+ (- 1) K) 0)))
           (a!4 (and (and a!1 (>= (+ (- 1) O) 0))
                     (< (+ (- 1) K) 0)
                     (= (- R W) 0)
                     (= (- M O) 0)
                     (= (- H K) 0)
                     (= (- D F) 0)
                     (= (- R E1) 0)
                     (= (- M T) 0)
                     (= (- H I) 0)
                     (= (- D C) 0)
                     (= (- L1 C1) 0)
                     (= (- L2 C1) 0)
                     (= (- K1 A1) 0)
                     (= (- A2 A1) 0)
                     (= (- J1 Y) 0)
                     (= (- P1 Y) 0))))
     (let ((a!3 (and a!2
                     (>= (+ (- 1) F) 0)
                     (= (+ (- C1 O) N) 0)
                     (= (+ (- 24) W V) 0)
                     (= (+ (- A1 K) J) 0)
                     (= (+ (- 828) U) 0)
                     (= (+ (- Y F) E) 0)
                     (= (+ (- (- 435) U) S) 0)
                     (= (- R S) 0)
                     (= (- M N) 0)
                     (= (- H J) 0)
                     (= (- D E) 0)
                     (= (- R E1) 0)
                     (= (- M T) 0)
                     (= (- H I) 0)
                     (= (- D C) 0)
                     (= (- L1 C1) 0)
                     (= (- L2 C1) 0)
                     (= (- K1 A1) 0)
                     (= (- A2 A1) 0)
                     (= (- J1 Y) 0)
                     (= (- P1 Y) 0))))
     (let ((a!5 (or (and a!1
                         (= (- W E1) 0)
                         (= (- O T) 0)
                         (= (- K I) 0)
                         (= (- F C) 0)
                         (= (- L1 L2) 0)
                         (= (- K1 A2) 0)
                         (= (- J1 P1) 0)
                         (= (- I1 E1) 0)
                         (= (- G1 I) 0)
                         (= (- F1 C) 0))
                    a!3
                    (and a!2
                         (< (+ (- 1) F) 0)
                         (= (- R W) 0)
                         (= (- M O) 0)
                         (= (- H K) 0)
                         (= (- D F) 0)
                         (= (- R E1) 0)
                         (= (- M T) 0)
                         (= (- H I) 0)
                         (= (- D C) 0)
                         (= (- L1 C1) 0)
                         (= (- L2 C1) 0)
                         (= (- K1 A1) 0)
                         (= (- A2 A1) 0)
                         (= (- J1 Y) 0)
                         (= (- P1 Y) 0))
                    a!4)))
       (=> (and (inv-f L1
                       K1
                       J1
                       I1
                       H1
                       G1
                       F1
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
                       H
                       G
                       F
                       E
                       D)
                a!5)
           (inv-f L2
                  A2
                  P1
                  E1
                  T
                  I
                  C
                  B
                  A
                  K2
                  J2
                  I2
                  H2
                  G2
                  F2
                  E2
                  D2
                  C2
                  B2
                  Z1
                  Y1
                  X1
                  W1
                  V1
                  U1
                  T1
                  S1
                  R1
                  Q1
                  O1
                  N1
                  M1))))))
    ))


(check-sat)
(exit)
