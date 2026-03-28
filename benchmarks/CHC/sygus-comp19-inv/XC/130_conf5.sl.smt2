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
         (L1 Int)
         (M1 Int)
         (N1 Int)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
         (R1 Int))
  (let ((a!1 (and (= (- R1 F1) 0)
                     (= (- Q1 D1) 0)
                     (= (- P1 B1) 0)
                     (= (- O1 A1) 0)
                     (= (- N1 Y) 0)
                     (= (- M1 V) 0)
                     (= (- L1 T) 0)
                     (= (- K1 P) 0)
                     (= (- J1 K) 0)
                     (= (- I1 G) 0)
                     (= (- H1 C) 0)))
           (a!2 (and (< (+ (- 1) K) 0) (>= (+ (- 1) G) 0))))
     (let ((a!3 (and a!1
                     a!2
                     (>= (+ (- 1) C) 0)
                     (= (+ (- F1 K) J) 0)
                     (= (- (+ (- 828) X) P) 0)
                     (= (+ (- D1 G) F) 0)
                     (= (+ (- (- 435) P) O) 0)
                     (= (+ (- B1 C) B) 0)
                     (= (+ (- 854 V) S) 0)
                     (= (- W X) 0)
                     (= (- R S) 0)
                     (= (- N O) 0)
                     (= (- I J) 0)
                     (= (- E F) 0)
                     (= (- A B) 0)
                     (= (- Y W) 0)
                     (= (- T R) 0)
                     (= (- P N) 0)
                     (= (- K I) 0)
                     (= (- G E) 0)
                     (= (- C A) 0)
                     (< (+ (- 1) K) 0)
                     (< G 0))))
     (let ((a!4 (or a!3
                    (and a!1
                         a!2
                         (< (+ (- 1) C) 0)
                         (= (- W Y) 0)
                         (= (- R T) 0)
                         (= (- N P) 0)
                         (= (- I K) 0)
                         (= (- E G) 0)
                         (= (- A C) 0)
                         (= (- Y W) 0)
                         (= (- T R) 0)
                         (= (- P N) 0)
                         (= (- K I) 0)
                         (= (- G E) 0)
                         (= (- C A) 0)
                         (< (+ (- 1) K) 0)
                         (< G 0))
                    (and a!1
                         (< (+ (- 1) K) 0)
                         (< (+ (- 1) G) 0)
                         (= (- W Y) 0)
                         (= (- R T) 0)
                         (= (- N P) 0)
                         (= (- I K) 0)
                         (= (- E G) 0)
                         (= (- A C) 0)
                         (= (- Y W) 0)
                         (= (- T R) 0)
                         (= (- P N) 0)
                         (= (- K I) 0)
                         (= (- G E) 0)
                         (= (- C A) 0)
                         (< (+ (- 1) K) 0)
                         (< G 0)))))
       (=> (and (inv-f R1
                       Q1
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
                a!4)
           false))))
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
         (R1 Int))
  (=> (and (= (- R1 F1) 0)
              (= (- Q1 D1) 0)
              (= (- P1 B1) 0)
              (= (- O1 A1) 0)
              (= (- N1 Z) 0)
              (= (- M1 V) 0)
              (= (- L1 U) 0)
              (= (- K1 Q) 0)
              (= (- J1 L) 0)
              (= (+ (- 4) A1) 0)
              (= (+ (- 8) Z) 0)
              (= (+ (- 5) V) 0)
              (= (+ (- 9) U) 0)
              (= (+ (- 7) Q) 0)
              (= (+ (- 1) F1) 0)
              (= (+ (- 1) D1) 0)
              (= (+ (- 1) B1) 0)
              (= (+ (- 1) L) 0))
         (inv-f R1
                Q1
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
         (X2 Int)
         (Y2 Int)
         (Z2 Int)
         (A3 Int)
         (B3 Int)
         (C3 Int)
         (D3 Int)
         (E3 Int)
         (F3 Int)
         (G3 Int)
         (H3 Int)
         (I3 Int)
         (J3 Int))
  (let ((a!1 (or (and (= (- B1 S1) 0)
                         (= (- W P1) 0)
                         (= (- R O1) 0)
                         (= (- M N1) 0)
                         (= (- H M1) 0)
                         (= (- D L1) 0)
                         (= (- B1 R1) 0)
                         (= (- W V) 0)
                         (= (- R K) 0)
                         (= (- M A) 0)
                         (= (- H I3) 0)
                         (= (- D H3) 0)
                         (= (- W1 J3) 0)
                         (= (- V1 Y2) 0)
                         (= (- U1 N2) 0)
                         (= (- T1 C2) 0)
                         (= (- S1 R1) 0)
                         (= (- Q1 G1) 0)
                         (= (- P1 V) 0)
                         (= (- O1 K) 0)
                         (= (- M1 I3) 0)
                         (= (- L1 H3) 0))
                    (and (< (+ (- 1) M) 0)
                         (< H 0)
                         (= (- W1 J1) 0)
                         (= (- J3 J1) 0)
                         (= (- V1 H1) 0)
                         (= (- Y2 H1) 0)
                         (= (- U1 E1) 0)
                         (= (- N2 E1) 0)
                         (= (- T1 D1) 0)
                         (= (- C2 D1) 0)
                         (= (- S1 C1) 0)
                         (= (- R1 C1) 0)
                         (= (- Q1 Y) 0)
                         (= (- G1 Y) 0)
                         (= (- P1 X) 0)
                         (= (- V X) 0)
                         (= (- O1 S) 0)
                         (= (- K S) 0)
                         (= (- N1 N) 0)
                         (= (- A N) 0)
                         (= (- M1 I) 0)
                         (= (- I3 I) 0)
                         (= (- L1 E) 0)
                         (= (- H3 E) 0)))))
       (=> (and (inv-f W1
                       V1
                       U1
                       T1
                       S1
                       Q1
                       P1
                       O1
                       N1
                       M1
                       L1
                       K1
                       J1
                       I1
                       H1
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
                       J
                       I
                       H
                       G
                       F
                       E
                       D
                       C
                       B)
                a!1)
           (inv-f J3
                  Y2
                  N2
                  C2
                  R1
                  G1
                  V
                  K
                  A
                  I3
                  H3
                  G3
                  F3
                  E3
                  D3
                  C3
                  B3
                  A3
                  Z2
                  X2
                  W2
                  V2
                  U2
                  T2
                  S2
                  R2
                  Q2
                  P2
                  O2
                  M2
                  L2
                  K2
                  J2
                  I2
                  H2
                  G2
                  F2
                  E2
                  D2
                  B2
                  A2
                  Z1
                  Y1
                  X1)))
    ))


(check-sat)
(exit)
