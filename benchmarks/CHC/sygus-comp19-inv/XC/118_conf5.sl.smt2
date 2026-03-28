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
  (let ((a!1 (and (inv-f Z Y X W V U T S R Q P O N M L K J I H G F E D C B A)
                     (= (- Z P) 0)
                     (= (- Y N) 0)
                     (= (- X M) 0)
                     (= (- W K) 0)
                     (= (- V I) 0)
                     (= (- U G) 0)
                     (< (- E P) 0)
                     (= (- T E) 0)
                     (not (= (- B E) 0))
                     (= (- S B) 0)
                     (not (= B 0)))))
       (=> a!1 false))
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
              (= (- Y N) 0)
              (= (- X M) 0)
              (= (- W L) 0)
              (= (- V I) 0)
              (= (- U H) 0)
              (= (- S C) 0)
              (= (+ (- 5) N) 0)
              (= (+ (- 2) M) 0)
              (= (+ (- 5) L) 0)
              (= (+ (- 8) I) 0)
              (= (+ (- 9) H) 0)
              (= C 0)
              (= (+ (- 1) Q) 0))
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
  (let ((a!1 (and (= (- V G1) 0) (= (- P C1) 0) (= (- L A1) 0) (= (- F Y) 0))))
     (let ((a!2 (and a!1
                     (>= (- J V) 0)
                     (= (+ (- (- 1) V) U) 0)
                     (= (+ (- 1326) O) 0)
                     (= (+ (- (- 1) F) E) 0)
                     (= (+ (- 168) O K) 0)
                     (= (- U Z1) 0)
                     (= (- O S) 0)
                     (= (- K D) 0)
                     (= (- E B) 0)
                     (= (- F1 T) 0)
                     (= (- O1 T) 0)
                     (= (- E1 R) 0)
                     (= (- D1 R) 0)
                     (= (- B1 N) 0)
                     (= (- H N) 0)
                     (= (- Z J) 0)
                     (= (- C J) 0))))
     (let ((a!3 (or (and a!1
                         (= (- V Z1) 0)
                         (= (- P S) 0)
                         (= (- L D) 0)
                         (= (- F B) 0)
                         (= (- Z J) 0)
                         (= (- C J) 0)
                         (= (- F1 O1) 0)
                         (= (- E1 D1) 0)
                         (= (- C1 S) 0)
                         (= (- B1 H) 0)
                         (= (- A1 D) 0)
                         (= (- Y B) 0))
                    a!2)))
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
                a!3)
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
