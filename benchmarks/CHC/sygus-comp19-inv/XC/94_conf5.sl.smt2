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
  (let ((a!1 (and (inv-f A1
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
                     (= (- A1 P) 0)
                     (= (- Z L) 0)
                     (= (- Y I) 0)
                     (= (- X F) 0)
                     (= (- W E) 0)
                     (= (- V D) 0)
                     (= (- U C) 0)
                     (= (- T B) 0)
                     (< (- A P) 0)
                     (= (- S A) 0)
                     (< (+ (- 1) P L B (* (- 2) A)) 0))))
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
         (A1 Int))
  (=> (and (= (- A1 Q) 0)
              (= (- Z M) 0)
              (= (- Y J) 0)
              (= (- X F) 0)
              (= (- W E) 0)
              (= (- V D) 0)
              (= (- U C) 0)
              (= (- T B) 0)
              (= (- S A) 0)
              (= (+ (- 3) J) 0)
              (= (+ (- 2) F) 0)
              (= E 0)
              (= (+ (- 6) D) 0)
              (= (+ (- 9) C) 0)
              (>= B 0)
              (>= A 0)
              (= Q 0)
              (= M 0))
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
  (let ((a!1 (and (= (- V H1) 0) (= (- Q G1) 0) (= (- N E1) 0))))
     (let ((a!2 (and a!1
                     (>= (- E V) 0)
                     (= (+ (- (- 1) V) T) 0)
                     (= (+ (- (- 205) N) M) 0)
                     (= (- P (+ T Q)) 0)
                     (= (+ (- 797) L) 0)
                     (= (- T B2) 0)
                     (= (- P Q1) 0)
                     (= (- L F1) 0)
                     (= (- D1 K) 0)
                     (= (- U K) 0)
                     (= (- C1 I) 0)
                     (= (- J I) 0)
                     (= (- B1 H) 0)
                     (= (- D H) 0)
                     (= (- A1 G) 0)
                     (= (- C G) 0)
                     (= (- Z F) 0)
                     (= (- B F) 0)
                     (= (- Y E) 0)
                     (= (- A E) 0))))
     (let ((a!3 (or (and a!1
                         (= (- V B2) 0)
                         (= (- Q Q1) 0)
                         (= (- N F1) 0)
                         (= (- Y E) 0)
                         (= (- A E) 0)
                         (= (- G1 Q1) 0)
                         (= (- E1 F1) 0)
                         (= (- D1 U) 0)
                         (= (- C1 J) 0)
                         (= (- B1 D) 0)
                         (= (- A1 C) 0)
                         (= (- Z B) 0))
                    a!2)))
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
                a!3)
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
                  I1)))))
    ))


(check-sat)
(exit)
