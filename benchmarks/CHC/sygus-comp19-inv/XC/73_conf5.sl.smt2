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
         (E1 Int))
  (=> (and (inv-f E1
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
              (= (- E1 T) 0)
              (= (- D1 Q) 0)
              (= (- C1 O) 0)
              (= (- B1 L) 0)
              (= (- A1 J) 0)
              (= (- Z G) 0)
              (>= (- (- 1) C) 0)
              (= (- Y F) 0)
              (>= (+ (- 4608) C) 0)
              (= (- X C) 0)
              (< (+ (- 36) T) 0))
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
         (E1 Int))
  (let ((a!1 (and (= (- E1 U) 0)
                     (= (- D1 Q) 0)
                     (= (- C1 P) 0)
                     (= (- B1 L) 0)
                     (= (- A1 K) 0)
                     (= (- Z G) 0)
                     (= (- Y F) 0)
                     (= (- X D) 0)
                     (= (+ (- 4) Q) 0)
                     (= (+ (- 7) P) 0)
                     (= (+ (- 6) L) 0)
                     (= (+ (- 5) K) 0)
                     (= (+ (- 3) G) 0)
                     (= U 0)
                     (>= F 0)
                     (>= (+ (- 127) F) 0)
                     (= (+ (* (- 36) F) D) 0))))
       (=> a!1
           (inv-f E1
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
         (J2 Int))
  (let ((a!1 (and (= (- Y K1) 0)
                     (= (- T I1) 0)
                     (= (- N G1) 0)
                     (= (- F D1) 0))))
     (let ((a!2 (and a!1
                     (>= (- 35 Y) 0)
                     (= (+ (- (- 1) F) E) 0)
                     (= (+ (- (- 512) V) S) 0)
                     (= (+ (- (- 1) Y) X) 0)
                     (= (+ (- P N) M) 0)
                     (= (- W X) 0)
                     (= (- Q S) 0)
                     (= (- L M) 0)
                     (= (- D E) 0)
                     (= (- W J2) 0)
                     (= (- Q N1) 0)
                     (= (- L R) 0)
                     (= (- D B) 0)
                     (= (- J1 V) 0)
                     (= (- Y1 V) 0)
                     (= (- H1 P) 0)
                     (= (- C1 P) 0)
                     (= (- F1 K) 0)
                     (= (- G K) 0)
                     (= (- E1 J) 0)
                     (= (- C J) 0)
                     (= (- B1 A) 0))))
     (let ((a!3 (or (and a!1
                         (= (- Y J2) 0)
                         (= (- T N1) 0)
                         (= (- N R) 0)
                         (= (- F B) 0)
                         (= (- K1 J2) 0)
                         (= (- J1 Y1) 0)
                         (= (- I1 N1) 0)
                         (= (- H1 C1) 0)
                         (= (- G1 R) 0)
                         (= (- F1 G) 0)
                         (= (- E1 C) 0)
                         (= (- D1 B) 0)
                         (= (- B1 A) 0))
                    a!2
                    (and a!1
                         (< (- 35 Y) 0)
                         (= (- W Y) 0)
                         (= (- Q T) 0)
                         (= (- L N) 0)
                         (= (- D F) 0)
                         (= (- W J2) 0)
                         (= (- Q N1) 0)
                         (= (- L R) 0)
                         (= (- D B) 0)
                         (= (- J1 V) 0)
                         (= (- Y1 V) 0)
                         (= (- H1 P) 0)
                         (= (- C1 P) 0)
                         (= (- F1 K) 0)
                         (= (- G K) 0)
                         (= (- E1 J) 0)
                         (= (- C J) 0)
                         (= (- B1 A) 0)))))
       (=> (and (inv-f K1
                       J1
                       I1
                       H1
                       G1
                       F1
                       E1
                       D1
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
                       F
                       E
                       D)
                a!3)
           (inv-f J2
                  Y1
                  N1
                  C1
                  R
                  G
                  C
                  B
                  A
                  I2
                  H2
                  G2
                  F2
                  E2
                  D2
                  C2
                  B2
                  A2
                  Z1
                  X1
                  W1
                  V1
                  U1
                  T1
                  S1
                  R1
                  Q1
                  P1
                  O1
                  M1
                  L1)))))
    ))


(check-sat)
(exit)
