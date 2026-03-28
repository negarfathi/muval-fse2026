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
                     (= (- C1 T) 0)
                     (= (- B1 R) 0)
                     (= (- A1 O) 0)
                     (= (- Z M) 0)
                     (= (- Y K) 0)
                     (= (- X J) 0)
                     (= (- W G) 0)
                     (< (- (+ (- 1) J) G) 0)
                     (= (- V D) 0)
                     (>= (+ (- 1) J) 0)
                     (= (- U A) 0)
                     (< (- A D) 0))))
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
  (=> (and (= (- C1 T) 0)
              (= (- B1 S) 0)
              (= (- A1 O) 0)
              (= (- Z N) 0)
              (= (- Y K) 0)
              (= (- W H) 0)
              (= (+ (- 1) T) 0)
              (= (+ (- 5) S) 0)
              (= (+ (- 7) O) 0)
              (= (+ (- 6) N) 0)
              (= (+ (- 7) K) 0)
              (= H 0))
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
  (let ((a!1 (and (= (- W H1) 0)
                     (= (- R F1) 0)
                     (= (- K C1) 0)
                     (= (- H B1) 0))))
     (let ((a!2 (and a!1
                     (>= (- (+ (- 1) O) K) 0)
                     (= (+ (- (- 1) K) J) 0)
                     (= (- Q Z) 0))))
     (let ((a!3 (and a!2
                     (>= (- H E) 0)
                     (= (- G E) 0)
                     (= (- (- V W) P) 0)
                     (= (- U V) 0)
                     (= (- F G) 0)
                     (= (- U U1) 0)
                     (= (- Q Y) 0)
                     (= (- J C) 0)
                     (= (- F B) 0)
                     (= (- I1 Z) 0)
                     (= (- F2 Z) 0)
                     (= (- G1 T) 0)
                     (= (- J1 T) 0)
                     (= (- E1 P) 0)
                     (= (- N P) 0)
                     (= (- D1 O) 0)
                     (= (- D O) 0)
                     (= (- A1 E) 0)
                     (= (- A E) 0))))
     (let ((a!4 (or (and a!1
                         (= (- W U1) 0)
                         (= (- R Y) 0)
                         (= (- K C) 0)
                         (= (- H B) 0)
                         (= (- D1 O) 0)
                         (= (- D O) 0)
                         (= (- I1 F2) 0)
                         (= (- H1 U1) 0)
                         (= (- G1 J1) 0)
                         (= (- F1 Y) 0)
                         (= (- E1 N) 0)
                         (= (- B1 B) 0)
                         (= (- A1 A) 0))
                    a!3
                    (and a!2
                         (< (- H E) 0)
                         (= (- U W) 0)
                         (= (- F H) 0)
                         (= (- U U1) 0)
                         (= (- Q Y) 0)
                         (= (- J C) 0)
                         (= (- F B) 0)
                         (= (- I1 Z) 0)
                         (= (- F2 Z) 0)
                         (= (- G1 T) 0)
                         (= (- J1 T) 0)
                         (= (- E1 P) 0)
                         (= (- N P) 0)
                         (= (- D1 O) 0)
                         (= (- D O) 0)
                         (= (- A1 E) 0)
                         (= (- A E) 0)))))
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
