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
         (C1 Int))
  (=> (and (inv-f C1
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
              (= (- C1 T) 0)
              (= (- B1 S) 0)
              (= (- A1 R) 0)
              (= (- Z Q) 0)
              (= (- Y P) 0)
              (= (- X N) 0)
              (= (- W K) 0)
              (= (- V F) 0)
              (< (- F) 0)
              (= (- U C) 0)
              (< (- T C) 0))
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
         (C1 Int))
  (=> (and (= (- C1 T) 0)
              (= (- B1 S) 0)
              (= (- A1 R) 0)
              (= (- Z Q) 0)
              (= (- Y P) 0)
              (= (- X O) 0)
              (= (- W L) 0)
              (= (- V G) 0)
              (= (- U D) 0)
              (= (+ (- 1) R) 0)
              (= (+ (- 3) Q) 0)
              (= (+ (- 8) P) 0)
              (= (+ (- 2) O) 0)
              (= (+ (- 4) L) 0)
              (>= (- D T) 0)
              (>= (- S) 0)
              (= G 0))
         (inv-f C1 B1 A1 Z Y X W V U T S R Q P O N M L K J I H G F E D C B A))
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
         (F2 Int))
  (let ((a!1 (and (= (- S D1) 0)
                     (= (- P C1) 0)
                     (= (- J B1) 0)
                     (= (- G A1) 0))))
     (let ((a!2 (and (and a!1 (>= (- J) 0))
                     (>= (- (+ (- 1) Z) G) 0)
                     (= (- F Z) 0)
                     (= (+ (- 453) O) 0)
                     (= (- M O) 0)
                     (= (- E F) 0)
                     (= (+ (- (- 1) J) I) 0)
                     (= (- (+ (- 611) R) M) 0)
                     (= (- R D) 0)
                     (= (- M C) 0)
                     (= (- I B) 0)
                     (= (- E A) 0)
                     (= (- I1 Z) 0)
                     (= (- F2 Z) 0)
                     (= (- H1 X) 0)
                     (= (- U1 X) 0)
                     (= (- G1 W) 0)
                     (= (- J1 W) 0)
                     (= (- F1 V) 0)
                     (= (- Y V) 0)
                     (= (- E1 U) 0)
                     (= (- N U) 0)))
           (a!3 (and (and a!1 (>= (- J) 0))
                     (< (- (+ (- 1) Z) G) 0)
                     (= (- M P) 0)
                     (= (- E G) 0)
                     (= (+ (- (- 1) J) I) 0)
                     (= (- (+ (- 611) R) M) 0)
                     (= (- R D) 0)
                     (= (- M C) 0)
                     (= (- I B) 0)
                     (= (- E A) 0)
                     (= (- I1 Z) 0)
                     (= (- F2 Z) 0)
                     (= (- H1 X) 0)
                     (= (- U1 X) 0)
                     (= (- G1 W) 0)
                     (= (- J1 W) 0)
                     (= (- F1 V) 0)
                     (= (- Y V) 0)
                     (= (- E1 U) 0)
                     (= (- N U) 0))))
     (let ((a!4 (or (and a!1
                         (= (- S D) 0)
                         (= (- P C) 0)
                         (= (- J B) 0)
                         (= (- G A) 0)
                         (= (- I1 F2) 0)
                         (= (- H1 U1) 0)
                         (= (- G1 J1) 0)
                         (= (- F1 Y) 0)
                         (= (- E1 N) 0)
                         (= (- D1 D) 0)
                         (= (- C1 C) 0)
                         (= (- A1 A) 0))
                    a!2
                    a!3)))
       (=> (and (inv-f I1
                       H1
                       G1
                       F1
                       E1
                       D1
                       C1
                       B1
                       A1
                       Z
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
                       M
                       L
                       K
                       J
                       I
                       H
                       G
                       F
                       E)
                a!4)
           (inv-f F2
                  U1
                  J1
                  Y
                  N
                  D
                  C
                  B
                  A
                  E2
                  D2
                  C2
                  B2
                  A2
                  Z1
                  Y1
                  X1
                  W1
                  V1
                  T1
                  S1
                  R1
                  Q1
                  P1
                  O1
                  N1
                  M1
                  L1
                  K1)))))
    ))


(check-sat)
(exit)
