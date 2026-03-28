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
  (=> (and (inv-f Z Y X W V U T S R Q P O N M L K J I H G F E D C B A)
              (= (- Z R) 0)
              (= (- Y Q) 0)
              (= (- X P) 0)
              (= (- W N) 0)
              (= (- V J) 0)
              (= (- U G) 0)
              (= (- T D) 0)
              (< (- 499 G) 0)
              (= (- S A) 0)
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
         (Z Int))
  (=> (and (= (- Z R) 0)
              (= (- Y Q) 0)
              (= (- X P) 0)
              (= (- W O) 0)
              (= (- V J) 0)
              (= (- U H) 0)
              (= (+ (- 1) R) 0)
              (= (+ (- 9) Q) 0)
              (= P 0)
              (= (+ (- 3) O) 0)
              (= (+ (- 8) J) 0)
              (= H 0))
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
  (let ((a!1 (and (= (- T C1) 0) (= (- L A1) 0) (= (- I Z) 0))))
     (let ((a!2 (and a!1
                     (>= (- 499 L) 0)
                     (= (+ (- (- 1) L) K) 0)
                     (= (+ (- 159) R) 0))))
     (let ((a!3 (and a!2
                     (>= (- I E) 0)
                     (= (- G E) 0)
                     (= (- Q (+ W R)) 0)
                     (= (- P Q) 0)
                     (= (- F G) 0)
                     (= (- P S) 0)
                     (= (- K D) 0)
                     (= (- F C) 0)
                     (= (- G1 X) 0)
                     (= (- Z1 X) 0)
                     (= (- F1 W) 0)
                     (= (- O1 W) 0)
                     (= (- E1 V) 0)
                     (= (- D1 V) 0)
                     (= (- B1 O) 0)
                     (= (- H O) 0)
                     (= (- Y E) 0)
                     (= (- B E) 0))))
     (let ((a!4 (or (and a!1
                         (= (- T S) 0)
                         (= (- L D) 0)
                         (= (- I C) 0)
                         (= (- G1 Z1) 0)
                         (= (- F1 O1) 0)
                         (= (- E1 D1) 0)
                         (= (- C1 S) 0)
                         (= (- B1 H) 0)
                         (= (- Z C) 0)
                         (= (- Y B) 0))
                    a!3
                    (and a!2
                         (< (- I E) 0)
                         (= (- P R) 0)
                         (= (- F I) 0)
                         (= (- P S) 0)
                         (= (- K D) 0)
                         (= (- F C) 0)
                         (= (- G1 X) 0)
                         (= (- Z1 X) 0)
                         (= (- F1 W) 0)
                         (= (- O1 W) 0)
                         (= (- E1 V) 0)
                         (= (- D1 V) 0)
                         (= (- B1 O) 0)
                         (= (- H O) 0)
                         (= (- Y E) 0)
                         (= (- B E) 0)))))
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
                a!4)
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
                  H1))))))
    ))


(check-sat)
(exit)
