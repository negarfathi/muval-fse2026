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
                     (= (- A1 N) 0)
                     (= (- Z L) 0)
                     (= (- Y K) 0)
                     (= (- X H) 0)
                     (< (- (+ (- 1) E) B) 0)
                     (= (- W E) 0)
                     (>= (+ (- 1) E) 0)
                     (= (- V B) 0)
                     (< (+ (- (- 1) H) E) 0))))
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
              (= (- Z L) 0)
              (= (- Y K) 0)
              (= (- X I) 0)
              (= (- V C) 0)
              (= (+ (- 1) T) 0)
              (= (+ (- 6) S) 0)
              (= (+ (- 5) O) 0)
              (= (+ (- 1) L) 0)
              (= (+ (- 2) K) 0)
              (= C 0)
              (= I 0))
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
                     (= (- S G1) 0)
                     (= (- L D1) 0)
                     (= (- F B1) 0))))
     (let ((a!2 (and a!1 (>= (- (+ (- 1) I) F) 0))))
     (let ((a!3 (and a!2
                     (= (- K F) 0)
                     (= (+ (- V S) P) 0)
                     (= (- U V) 0)
                     (= (- J K) 0)
                     (= (+ (- (- 1) F) E) 0)
                     (= (- R P) 0)
                     (= (- U U1) 0)
                     (= (- R J1) 0)
                     (= (- J D) 0)
                     (= (- E B) 0)
                     (= (- I1 Z) 0)
                     (= (- F2 Z) 0)
                     (= (- F1 Q) 0)
                     (= (- Y Q) 0)
                     (= (- E1 P) 0)
                     (= (- N P) 0)
                     (= (- C1 I) 0)
                     (= (- C I) 0)
                     (= (- A1 A) 0)))
           (a!4 (and a!2
                     (= (- U W) 0)
                     (= (- J L) 0)
                     (= (+ (- (- 1) F) E) 0)
                     (= (- R P) 0)
                     (= (- U U1) 0)
                     (= (- R J1) 0)
                     (= (- J D) 0)
                     (= (- E B) 0)
                     (= (- I1 Z) 0)
                     (= (- F2 Z) 0)
                     (= (- F1 Q) 0)
                     (= (- Y Q) 0)
                     (= (- E1 P) 0)
                     (= (- N P) 0)
                     (= (- C1 I) 0)
                     (= (- C I) 0)
                     (= (- A1 A) 0))))
     (let ((a!5 (or (and a!1
                         (= (- W U1) 0)
                         (= (- S J1) 0)
                         (= (- L D) 0)
                         (= (- F B) 0)
                         (= (- C1 I) 0)
                         (= (- C I) 0)
                         (= (- I1 F2) 0)
                         (= (- H1 U1) 0)
                         (= (- G1 J1) 0)
                         (= (- F1 Y) 0)
                         (= (- E1 N) 0)
                         (= (- D1 D) 0)
                         (= (- A1 A) 0))
                    a!3
                    a!4)))
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
                a!5)
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
