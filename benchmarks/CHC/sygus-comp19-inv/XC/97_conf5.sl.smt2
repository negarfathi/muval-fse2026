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
                     (= (- C1 R) 0)
                     (= (- B1 N) 0)
                     (= (- A1 K) 0)
                     (= (- Z I) 0)
                     (= (- Y H) 0)
                     (= (- X G) 0)
                     (= (- W E) 0)
                     (< (- C R) 0)
                     (= (- V C) 0)
                     (= (+ (- 1) A) 0)
                     (= (- U A) 0)
                     (not (= (- R N) 0)))))
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
  (=> (and (= (- C1 S) 0)
              (= (- B1 O) 0)
              (= (- A1 L) 0)
              (= (- Z I) 0)
              (= (- Y H) 0)
              (= (- X G) 0)
              (= (- W F) 0)
              (= (- U A) 0)
              (= (+ (- 3) L) 0)
              (= (+ (- 7) I) 0)
              (= (+ (- 3) H) 0)
              (= (+ (- 6) G) 0)
              (= (+ (- 8) F) 0)
              (= O 0)
              (= S 0)
              (= (+ (- 2) A) 0))
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
  (let ((a!1 (and (= (- W I1) 0)
                     (= (- S H1) 0)
                     (= (- P G1) 0)
                     (= (- I C1) 0))))
     (let ((a!2 (and a!1
                     (>= (- G W) 0)
                     (= (+ (- (- 1) W) V) 0)
                     (= (+ 26 H) 0)
                     (= (- (- R S) E) 0)
                     (= (+ 338 O) 0)
                     (= (- V F2) 0)
                     (= (- R U1) 0)
                     (= (- O J1) 0)
                     (= (- H C) 0)
                     (= (- F1 M) 0)
                     (= (- Y M) 0)
                     (= (- E1 L) 0)
                     (= (- N L) 0)
                     (= (- D1 K) 0)
                     (= (- D K) 0)
                     (= (- B1 G) 0)
                     (= (- B G) 0)
                     (= (- A1 E) 0)
                     (= (- A E) 0))))
     (let ((a!3 (or (and a!1
                         (= (- W F2) 0)
                         (= (- S U1) 0)
                         (= (- P J1) 0)
                         (= (- I C) 0)
                         (= (- B1 G) 0)
                         (= (- B G) 0)
                         (= (- H1 U1) 0)
                         (= (- G1 J1) 0)
                         (= (- F1 Y) 0)
                         (= (- E1 N) 0)
                         (= (- D1 D) 0)
                         (= (- C1 C) 0)
                         (= (- A1 A) 0))
                    a!2)))
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
