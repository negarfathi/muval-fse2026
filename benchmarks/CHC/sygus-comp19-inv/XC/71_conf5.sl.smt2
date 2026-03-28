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
              (= (- C1 R) 0)
              (= (- B1 O) 0)
              (= (- A1 N) 0)
              (= (- Z M) 0)
              (= (- Y K) 0)
              (= (- X G) 0)
              (= (- W F) 0)
              (>= (- 35 R) 0)
              (= (- V C) 0)
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
         (C1 Int))
  (let ((a!1 (and (= (- C1 S) 0)
                     (= (- B1 O) 0)
                     (= (- A1 N) 0)
                     (= (- Z M) 0)
                     (= (- Y L) 0)
                     (= (- X G) 0)
                     (= (- W F) 0)
                     (= (- V D) 0)
                     (= (+ (- 6) O) 0)
                     (= N 0)
                     (= (+ (- 3) M) 0)
                     (= (+ (- 7) L) 0)
                     (= (+ (- 6) G) 0)
                     (= S 0)
                     (>= F 0)
                     (>= (+ (- 127) F) 0)
                     (= (+ (* (- 36) F) D) 0))))
       (=> a!1
           (inv-f C1 B1 A1 Z Y X W V U T S R Q P O N M L K J I H G F E D C B A)))
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
  (let ((a!1 (and (= (- W I1) 0) (= (- P E1) 0) (= (- G B1) 0))))
     (let ((a!2 (and a!1
                     (>= (- 35 W) 0)
                     (= (+ (- (- 1) G) F) 0)
                     (= (- O T) 0)
                     (= (+ (- (- 1) W) V) 0)
                     (= (- M R) 0)
                     (= (- U V) 0)
                     (= (- L M) 0)
                     (= (- E F) 0)
                     (= (- U F2) 0)
                     (= (- L N) 0)
                     (= (- E B) 0)
                     (= (- H1 T) 0)
                     (= (- U1 T) 0)
                     (= (- G1 S) 0)
                     (= (- J1 S) 0)
                     (= (- F1 R) 0)
                     (= (- Y R) 0)
                     (= (- D1 K) 0)
                     (= (- D K) 0)
                     (= (- C1 J) 0)
                     (= (- C J) 0)
                     (= (- A1 A) 0))))
     (let ((a!3 (or (and a!1
                         (= (- W F2) 0)
                         (= (- P N) 0)
                         (= (- G B) 0)
                         (= (- I1 F2) 0)
                         (= (- H1 U1) 0)
                         (= (- G1 J1) 0)
                         (= (- F1 Y) 0)
                         (= (- E1 N) 0)
                         (= (- D1 D) 0)
                         (= (- C1 C) 0)
                         (= (- B1 B) 0)
                         (= (- A1 A) 0))
                    a!2
                    (and a!1
                         (< (- 35 W) 0)
                         (= (- U W) 0)
                         (= (- L P) 0)
                         (= (- E G) 0)
                         (= (- U F2) 0)
                         (= (- L N) 0)
                         (= (- E B) 0)
                         (= (- H1 T) 0)
                         (= (- U1 T) 0)
                         (= (- G1 S) 0)
                         (= (- J1 S) 0)
                         (= (- F1 R) 0)
                         (= (- Y R) 0)
                         (= (- D1 K) 0)
                         (= (- D K) 0)
                         (= (- C1 J) 0)
                         (= (- C J) 0)
                         (= (- A1 A) 0)))))
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
                a!3)
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
