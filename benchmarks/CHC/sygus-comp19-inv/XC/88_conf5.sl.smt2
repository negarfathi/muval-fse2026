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
         (O1 Int))
  (let ((a!1 (and (= (- O1 E1) 0)
                     (= (- N1 Z) 0)
                     (= (- M1 W) 0)
                     (= (- L1 V) 0)
                     (= (- K1 T) 0)
                     (= (- J1 N) 0)
                     (= (- I1 I) 0)
                     (= (- H1 C) 0))))
     (let ((a!2 (and a!1
                     (= (- I C) 0)
                     (= (+ (- 1) M) 0)
                     (= (- S (+ E1 Z)) 0)
                     (= (- H C) 0)
                     (= (+ (- Y W) S) 0)
                     (= (- D1 E1) 0)
                     (= (- X Y) 0)
                     (= (- R S) 0)
                     (= (- L M) 0)
                     (= (- G H) 0)
                     (= (- B C) 0)
                     (= (- E1 D1) 0)
                     (= (- Z X) 0)
                     (= (- T R) 0)
                     (= (- N L) 0)
                     (= (- I G) 0)
                     (= (- C B) 0)
                     (= (- I C) 0)
                     (not (= (+ (- 1) N) 0))))
           (a!3 (and a!1
                     (= (- I C) 0)
                     (= K 0)
                     (= (+ (- 871) C1) 0)
                     (= (- F C) 0)
                     (= (+ (- 184) B1) 0)
                     (= (+ (- (- 1) C) A) 0)
                     (= (+ (- (- 143) T) Q) 0)
                     (= (- D1 B1) 0)
                     (= (- X Z) 0)
                     (= (- R Q) 0)
                     (= (- L K) 0)
                     (= (- G F) 0)
                     (= (- B A) 0)
                     (= (- E1 D1) 0)
                     (= (- Z X) 0)
                     (= (- T R) 0)
                     (= (- N L) 0)
                     (= (- I G) 0)
                     (= (- C B) 0)
                     (= (- I C) 0)
                     (not (= (+ (- 1) N) 0)))))
       (=> (and (inv-f O1
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
                (or a!2 a!3))
           false)))
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
         (O1 Int))
  (let ((a!1 (and (= (- O1 F1) 0)
                     (= (- N1 A1) 0)
                     (= (- M1 W) 0)
                     (= (- L1 V) 0)
                     (= (- K1 U) 0)
                     (= (- J1 O) 0)
                     (= (- I1 J) 0)
                     (= (- H1 D) 0)
                     (= (+ (- 9) F1) 0)
                     (= (+ (- 3) A1) 0)
                     (= (+ (- 6) W) 0)
                     (= (+ (- 6) V) 0)
                     (= (+ (- 9) U) 0)
                     (= (+ (- (- 1) J) D) 0)
                     (= O 0))))
       (=> a!1
           (inv-f O1
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
                  A)))
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
         (D3 Int))
  (let ((a!1 (and (= (- K D) 0)
                     (not (= (+ (- 1) Q) 0))
                     (= (- T1 J1) 0)
                     (= (- D3 J1) 0)
                     (= (- S1 E1) 0)
                     (= (- S2 E1) 0)
                     (= (- R1 Z) 0)
                     (= (- H2 Z) 0)
                     (= (- Q1 Y) 0)
                     (= (- W1 Y) 0)
                     (= (- P1 X) 0)
                     (= (- L1 X) 0)
                     (= (- O1 R) 0)
                     (= (- A1 R) 0)
                     (= (- N1 L) 0)
                     (= (- P L) 0)
                     (= (- M1 F) 0)
                     (= (- E F) 0)
                     (= (- K1 A) 0))))
     (let ((a!2 (or (and (= (- I1 T1) 0)
                         (= (- D1 S1) 0)
                         (= (- W P1) 0)
                         (= (- Q O1) 0)
                         (= (- K N1) 0)
                         (= (- D M1) 0)
                         (= (- I1 D3) 0)
                         (= (- D1 S2) 0)
                         (= (- W L1) 0)
                         (= (- Q A1) 0)
                         (= (- K P) 0)
                         (= (- D E) 0)
                         (= (- T1 D3) 0)
                         (= (- S1 S2) 0)
                         (= (- R1 H2) 0)
                         (= (- Q1 W1) 0)
                         (= (- P1 L1) 0)
                         (= (- O1 A1) 0)
                         (= (- K1 A) 0))
                    a!1)))
       (=> (and (inv-f T1
                       S1
                       R1
                       Q1
                       P1
                       O1
                       N1
                       M1
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
                       D
                       C
                       B)
                a!2)
           (inv-f D3
                  S2
                  H2
                  W1
                  L1
                  A1
                  P
                  E
                  A
                  C3
                  B3
                  A3
                  Z2
                  Y2
                  X2
                  W2
                  V2
                  U2
                  T2
                  R2
                  Q2
                  P2
                  O2
                  N2
                  M2
                  L2
                  K2
                  J2
                  I2
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
                  U1))))
    ))


(check-sat)
(exit)
