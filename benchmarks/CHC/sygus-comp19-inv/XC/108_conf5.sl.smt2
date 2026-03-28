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
         (E1 Int)
         (F1 Int))
  (let ((a!1 (and (inv-f F1
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
                     (= (- F1 V) 0)
                     (= (- E1 U) 0)
                     (= (- D1 S) 0)
                     (= (- C1 Q) 0)
                     (= (- B1 N) 0)
                     (= (- A1 L) 0)
                     (= (- Z J) 0)
                     (= (- Y I) 0)
                     (= (- X F) 0)
                     (< (- (+ (- 1) U) F) 0)
                     (= (- W C) 0)
                     (< (- C V) 0))))
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
         (C1 Int)
         (D1 Int)
         (E1 Int)
         (F1 Int))
  (=> (and (= (- F1 V) 0)
              (= (- D1 S) 0)
              (= (- C1 R) 0)
              (= (- B1 N) 0)
              (= (- A1 M) 0)
              (= (- Z J) 0)
              (= (- Y I) 0)
              (= (- X G) 0)
              (= (- W D) 0)
              (= R 0)
              (= (+ (- 7) N) 0)
              (= (+ (- 8) M) 0)
              (= (+ (- 5) J) 0)
              (= (+ (- 6) I) 0)
              (>= (- D V) 0)
              (= S 0)
              (= G 0))
         (inv-f F1
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
                A))
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
         (J2 Int)
         (K2 Int)
         (L2 Int))
  (let ((a!1 (and (= (- V I1) 0)
                     (= (- P G1) 0)
                     (= (- J C1) 0)
                     (= (- F B1) 0))))
     (let ((a!2 (and a!1 (>= (- (+ (- 1) Z) J) 0))))
     (let ((a!3 (and a!2
                     (>= (- (+ (- 1) A1) F) 0)
                     (= (- E A1) 0)
                     (= (- U V) 0)
                     (= (- S U) 0)
                     (= (- D E) 0)
                     (= (+ (- (- 1) J) H) 0)
                     (= (- (+ (- 270) O) M) 0)
                     (= (- S E1) 0)
                     (= (- O I) 0)
                     (= (- H A) 0)
                     (= (- D K2) 0)
                     (= (- L1 A1) 0)
                     (= (- L2 A1) 0)
                     (= (- K1 Z) 0)
                     (= (- A2 Z) 0)
                     (= (- J1 X) 0)
                     (= (- P1 X) 0)
                     (= (- H1 R) 0)
                     (= (- T R) 0)
                     (= (- F1 N) 0)
                     (= (- C N) 0)
                     (= (- D1 M) 0)
                     (= (- B M) 0)))
           (a!4 (and a!2
                     (< (- (+ (- 1) A1) F) 0)
                     (= (- S V) 0)
                     (= (- D F) 0)
                     (= (+ (- (- 1) J) H) 0)
                     (= (- (+ (- 270) O) M) 0)
                     (= (- S E1) 0)
                     (= (- O I) 0)
                     (= (- H A) 0)
                     (= (- D K2) 0)
                     (= (- L1 A1) 0)
                     (= (- L2 A1) 0)
                     (= (- K1 Z) 0)
                     (= (- A2 Z) 0)
                     (= (- J1 X) 0)
                     (= (- P1 X) 0)
                     (= (- H1 R) 0)
                     (= (- T R) 0)
                     (= (- F1 N) 0)
                     (= (- C N) 0)
                     (= (- D1 M) 0)
                     (= (- B M) 0))))
     (let ((a!5 (or (and a!1
                         (= (- V E1) 0)
                         (= (- P I) 0)
                         (= (- J A) 0)
                         (= (- F K2) 0)
                         (= (- K1 Z) 0)
                         (= (- A2 Z) 0)
                         (= (- L1 L2) 0)
                         (= (- J1 P1) 0)
                         (= (- I1 E1) 0)
                         (= (- H1 T) 0)
                         (= (- G1 I) 0)
                         (= (- F1 C) 0)
                         (= (- D1 B) 0)
                         (= (- B1 K2) 0))
                    a!3
                    a!4)))
       (=> (and (inv-f L1
                       K1
                       J1
                       I1
                       H1
                       G1
                       F1
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
                       H
                       G
                       F
                       E
                       D)
                a!5)
           (inv-f L2
                  A2
                  P1
                  E1
                  T
                  I
                  C
                  B
                  A
                  K2
                  J2
                  I2
                  H2
                  G2
                  F2
                  E2
                  D2
                  C2
                  B2
                  Z1
                  Y1
                  X1
                  W1
                  V1
                  U1
                  T1
                  S1
                  R1
                  Q1
                  O1
                  N1
                  M1))))))
    ))


(check-sat)
(exit)
