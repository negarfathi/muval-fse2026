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
              (= (- Z T) 0)
              (= (- Y Q) 0)
              (= (- X M) 0)
              (= (- W I) 0)
              (= (- V C) 0)
              (< Q 0))
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
  (=> (and (= (- Y R) 0) (= (- W J) 0) (= J 0) (= R 0))
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
  (let ((a!1 (and (= (- W F1) 0)
                     (= (- R E1) 0)
                     (= (- N C1) 0)
                     (= (- G B1) 0))))
     (let ((a!2 (and (and a!1 (>= (+ (- 49) Z) 0))
                     (>= (- 56 Z) 0)
                     (= (+ (* (- 2) W) Q) 0)
                     (= (+ (- 247) M) 0)
                     (= (+ (- 48 Z) F) 0)
                     (= (- L M) 0)
                     (= (- (- V Q) F) 0)
                     (= K 0)
                     (= (- U V) 0)
                     (= (- P Q) 0)
                     (= (- J K) 0)
                     (= (- E F) 0)
                     (= (- U O1) 0)
                     (= (- P D1) 0)
                     (= (- J S) 0)
                     (= (- E H) 0)
                     (= (- G1 Z) 0)
                     (= (- Z1 Z) 0)
                     (= (- A1 D) 0)))
           (a!3 (and (and a!1 (>= (+ (- 49) Z) 0))
                     (< (- 56 Z) 0)
                     (= (- U W) 0)
                     (= (- P R) 0)
                     (= (- J N) 0)
                     (= (- E G) 0)
                     (= (- U O1) 0)
                     (= (- P D1) 0)
                     (= (- J S) 0)
                     (= (- E H) 0)
                     (= (- G1 Z) 0)
                     (= (- Z1 Z) 0)
                     (= (- A1 D) 0))))
     (let ((a!4 (or (and a!1
                         (= (- W O1) 0)
                         (= (- R D1) 0)
                         (= (- N S) 0)
                         (= (- G H) 0)
                         (= (- G1 Z1) 0)
                         (= (- F1 O1) 0)
                         (= (- E1 D1) 0)
                         (= (- C1 S) 0)
                         (= (- B1 H) 0)
                         (= (- A1 D) 0))
                    a!2
                    a!3
                    (and a!1
                         (< (+ (- 49) Z) 0)
                         (= (- U W) 0)
                         (= (- P R) 0)
                         (= (- J N) 0)
                         (= (- E G) 0)
                         (= (- U O1) 0)
                         (= (- P D1) 0)
                         (= (- J S) 0)
                         (= (- E H) 0)
                         (= (- G1 Z) 0)
                         (= (- Z1 Z) 0)
                         (= (- A1 D) 0)))))
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
                  H1)))))
    ))


(check-sat)
(exit)
