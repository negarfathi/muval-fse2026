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
         (A1 Int))
  (=> (and (inv-f A1 Z Y X W V U T S R Q P O N M L K J I H G F E D C B A)
              (= (- A1 S) 0)
              (= (- Z R) 0)
              (= (- Y P) 0)
              (= (- X L) 0)
              (= (- W J) 0)
              (= (- V G) 0)
              (= (- U D) 0)
              (< (- 4 G) 0)
              (= (- T A) 0)
              (< (- A D) 0))
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
         (A1 Int))
  (=> (and (= (- A1 S) 0)
              (= (- Z R) 0)
              (= (- Y Q) 0)
              (= (- X M) 0)
              (= (- W J) 0)
              (= (- V H) 0)
              (= (+ (- 5) S) 0)
              (= (+ (- 8) R) 0)
              (= (+ (- 5) Q) 0)
              (= (+ (- 3) M) 0)
              (= (+ (- 9) J) 0)
              (= H 0))
         (inv-f A1 Z Y X W V U T S R Q P O N M L K J I H G F E D C B A))
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
         (B2 Int))
  (let ((a!1 (and (= (- V E1) 0)
                     (= (- Q D1) 0)
                     (= (- L B1) 0)
                     (= (- H A1) 0))))
     (let ((a!2 (and a!1
                     (>= (- 4 L) 0)
                     (= (+ (- (- 1) L) K) 0)
                     (= (+ (- 399) V P) 0))))
     (let ((a!3 (and a!2
                     (>= (- H E) 0)
                     (= (- G E) 0)
                     (= (- T (+ Y X)) 0)
                     (= (- S T) 0)
                     (= (- F G) 0)
                     (= (- S F1) 0)
                     (= (- P U) 0)
                     (= (- K D) 0)
                     (= (- F C) 0)
                     (= (- H1 Y) 0)
                     (= (- B2 Y) 0)
                     (= (- G1 X) 0)
                     (= (- Q1 X) 0)
                     (= (- C1 O) 0)
                     (= (- J O) 0)
                     (= (- Z E) 0)
                     (= (- B E) 0))))
     (let ((a!4 (or (and a!1
                         (= (- V F1) 0)
                         (= (- Q U) 0)
                         (= (- L D) 0)
                         (= (- H C) 0)
                         (= (- H1 B2) 0)
                         (= (- G1 Q1) 0)
                         (= (- E1 F1) 0)
                         (= (- D1 U) 0)
                         (= (- C1 J) 0)
                         (= (- A1 C) 0)
                         (= (- Z B) 0))
                    a!3
                    (and a!2
                         (< (- H E) 0)
                         (= (- S V) 0)
                         (= (- F H) 0)
                         (= (- S F1) 0)
                         (= (- P U) 0)
                         (= (- K D) 0)
                         (= (- F C) 0)
                         (= (- H1 Y) 0)
                         (= (- B2 Y) 0)
                         (= (- G1 X) 0)
                         (= (- Q1 X) 0)
                         (= (- C1 O) 0)
                         (= (- J O) 0)
                         (= (- Z E) 0)
                         (= (- B E) 0)))))
       (=> (and (inv-f H1
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
                       E)
                a!4)
           (inv-f B2
                  Q1
                  F1
                  U
                  J
                  D
                  C
                  B
                  A
                  A2
                  Z1
                  Y1
                  X1
                  W1
                  V1
                  U1
                  T1
                  S1
                  R1
                  P1
                  O1
                  N1
                  M1
                  L1
                  K1
                  J1
                  I1))))))
    ))


(check-sat)
(exit)
