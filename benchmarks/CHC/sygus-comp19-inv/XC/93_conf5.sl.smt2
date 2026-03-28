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
         (F1 Int)
         (G1 Int)
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int)
         (M1 Int)
         (N1 Int)
         (O1 Int))
  (let ((a!1 (= (- (- (* 3 M) J) D) 0)))
     (let ((a!2 (and (inv-f O1
                            N1
                            M1
                            L1
                            K1
                            J1
                            I1
                            H1
                            G1
                            F1
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
                     (= (- O1 C1) 0)
                     (= (- N1 A1) 0)
                     (= (- M1 Y) 0)
                     (= (- L1 T) 0)
                     (= (- K1 O) 0)
                     (= (- J1 N) 0)
                     (= (- I1 M) 0)
                     (= (- H1 J) 0)
                     (< (+ (- (- 1) C1) M) 0)
                     (= (- G1 D) 0)
                     (not a!1))))
       (=> a!2 false)))
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
         (O1 Int))
  (=> (and (= (- O1 D1) 0)
              (= (- N1 A1) 0)
              (= (- M1 Z) 0)
              (= (- L1 U) 0)
              (= (- K1 O) 0)
              (= (- J1 N) 0)
              (= (- I1 M) 0)
              (= (- H1 K) 0)
              (= (- G1 E) 0)
              (= (+ (- 8) A1) 0)
              (= (+ (- 8) Z) 0)
              (= (+ (- 5) U) 0)
              (= (+ (- 3) O) 0)
              (= (+ (- 3) N) 0)
              (>= M 0)
              (= D1 0)
              (= K 0)
              (= E 0))
         (inv-f O1
                N1
                M1
                L1
                K1
                J1
                I1
                H1
                G1
                F1
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
         (L2 Int)
         (M2 Int)
         (N2 Int)
         (O2 Int)
         (P2 Int)
         (Q2 Int)
         (R2 Int)
         (S2 Int)
         (T2 Int)
         (U2 Int)
         (V2 Int)
         (W2 Int)
         (X2 Int)
         (Y2 Int)
         (Z2 Int)
         (A3 Int)
         (B3 Int)
         (C3 Int)
         (D3 Int))
  (let ((a!1 (and (= (- G1 T1) 0)
                     (= (- C1 R1) 0)
                     (= (- W Q1) 0)
                     (= (- L M1) 0)
                     (= (- F K1) 0))))
     (let ((a!2 (and a!1
                     (>= (+ (- (- 1) G1) O) 0)
                     (= (+ (- (- 1) G1) F1) 0)
                     (= (- (+ W V) Q) 0))))
     (let ((a!3 (and a!2
                     (= (+ (- (- 1) L) K) 0)
                     (= (- (- B1 C1) R) 0)
                     (= (+ (- (- 2) F) D) 0)
                     (= (+ (- 918) U) 0)
                     (= (- Z B1) 0)
                     (= (- T U) 0)
                     (= (- J K) 0)
                     (= (- C D) 0)
                     (= (- F1 D3) 0)
                     (= (- Z H2) 0)
                     (= (- T W1) 0)
                     (= (- J E) 0)
                     (= (- C A) 0)
                     (= (- S1 E1) 0)
                     (= (- S2 E1) 0)
                     (= (- P1 R) 0)
                     (= (- L1 R) 0)
                     (= (- O1 Q) 0)
                     (= (- A1 Q) 0)
                     (= (- N1 O) 0)
                     (= (- P O) 0)
                     (= (- J1 C3) 0)))
           (a!4 (and a!2
                     (= (+ (- (- 2) L) I) 0)
                     (= (+ (- 792) Y) 0)
                     (= (+ (- (- 1) F) B) 0)
                     (= (+ (- 773) S) 0)
                     (= (- Z Y) 0)
                     (= (- T S) 0)
                     (= (- J I) 0)
                     (= (- C B) 0)
                     (= (- F1 D3) 0)
                     (= (- Z H2) 0)
                     (= (- T W1) 0)
                     (= (- J E) 0)
                     (= (- C A) 0)
                     (= (- S1 E1) 0)
                     (= (- S2 E1) 0)
                     (= (- P1 R) 0)
                     (= (- L1 R) 0)
                     (= (- O1 Q) 0)
                     (= (- A1 Q) 0)
                     (= (- N1 O) 0)
                     (= (- P O) 0)
                     (= (- J1 C3) 0))))
     (let ((a!5 (or (and a!1
                         (= (- G1 D3) 0)
                         (= (- C1 H2) 0)
                         (= (- W W1) 0)
                         (= (- L E) 0)
                         (= (- F A) 0)
                         (= (- N1 O) 0)
                         (= (- P O) 0)
                         (= (- S1 S2) 0)
                         (= (- R1 H2) 0)
                         (= (- Q1 W1) 0)
                         (= (- P1 L1) 0)
                         (= (- O1 A1) 0)
                         (= (- M1 E) 0)
                         (= (- K1 A) 0)
                         (= (- J1 C3) 0))
                    a!3
                    a!4)))
       (=> (and (inv-f T1
                       S1
                       R1
                       Q1
                       P1
                       O1
                       N1
                       M1
                       K1
                       J1
                       I1
                       H1
                       G1
                       F1
                       E1
                       D1
                       C1
                       B1
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
                       D
                       C
                       B)
                a!5)
           (inv-f D3
                  S2
                  H2
                  W1
                  L1
                  A1
                  P
                  E
                  A
                  C3
                  B3
                  A3
                  Z2
                  Y2
                  X2
                  W2
                  V2
                  U2
                  T2
                  R2
                  Q2
                  P2
                  O2
                  N2
                  M2
                  L2
                  K2
                  J2
                  I2
                  G2
                  F2
                  E2
                  D2
                  C2
                  B2
                  A2
                  Z1
                  Y1
                  X1
                  V1
                  U1))))))
    ))


(check-sat)
(exit)
