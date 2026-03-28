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
  (let ((a!1 (and (inv-f C1
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
                     (= (- C1 W) 0)
                     (= (- B1 N) 0)
                     (= (- A1 H) 0)
                     (= (- H C) 0)
                     (= (- Z C) 0)
                     (not (= (+ (- 1) N) 0)))))
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
         (Z Int)
         (A1 Int)
         (B1 Int)
         (C1 Int))
  (=> (and (= (- C1 X) 0)
              (= (- B1 O) 0)
              (= (- A1 I) 0)
              (= (- Z D) 0)
              (= (+ (- 5) X) 0)
              (= (- I D) 0)
              (= (+ (- 1) O) 0))
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
  (let ((a!1 (and (= (- C1 I1) 0)
                     (= (- S H1) 0)
                     (= (- L G1) 0)
                     (= (- G F1) 0))))
     (let ((a!2 (and a!1 (not (= (- L G) 0)))))
     (let ((a!3 (and a!2
                     (= P 0)
                     (= (+ (- 303 C1) X) 0)
                     (= (- I G) 0)
                     (= (+ (- 403 X) W) 0)
                     (= (+ (- (- 1) G) E) 0)
                     (= (+ (- 73) V) 0)
                     (= (- Z V) 0)
                     (= (- Q P) 0)
                     (= (- J I) 0)
                     (= (- F E) 0)
                     (= (- Z F2) 0)
                     (= (- Q U1) 0)
                     (= (- J J1) 0)
                     (= (- F Y) 0)
                     (= (- E1 N) 0))))
     (let ((a!4 (or (and a!1
                         (= (- C1 F2) 0)
                         (= (- S U1) 0)
                         (= (- L J1) 0)
                         (= (- G Y) 0)
                         (= (- I1 F2) 0)
                         (= (- H1 U1) 0)
                         (= (- E1 N) 0))
                    (and a!2
                         (= (+ (- 1) R) 0)
                         (= (- B1 C1) 0)
                         (= (- K G) 0)
                         (= (+ (- 480) A1) 0)
                         (= (- Z A1) 0)
                         (= (- Q R) 0)
                         (= (- J K) 0)
                         (= (- F G) 0)
                         (= (- Z F2) 0)
                         (= (- Q U1) 0)
                         (= (- J J1) 0)
                         (= (- F Y) 0)
                         (= (- E1 N) 0))
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
                  K1))))))
    ))


(check-sat)
(exit)
