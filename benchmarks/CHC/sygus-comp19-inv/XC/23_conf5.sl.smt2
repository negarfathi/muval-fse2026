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
         (X Int))
  (let ((a!1 (and (inv-f X W V U T S R Q P O N M L K J I H G F E D C B A)
                     (= (- X O) 0)
                     (= (- W K) 0)
                     (= (- V H) 0)
                     (= (- U F) 0)
                     (= (- T E) 0)
                     (= (- S D) 0)
                     (< (- K O) 0)
                     (= (- R B) 0)
                     (not (= (+ (- 13) K) 0)))))
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
         (X Int))
  (=> (and (= (- X P) 0)
              (= (- W L) 0)
              (= (- V I) 0)
              (= (- U F) 0)
              (= (- T E) 0)
              (= (- S D) 0)
              (= (- R C) 0)
              (= (+ (- 5) I) 0)
              (= F 0)
              (= (+ (- 7) E) 0)
              (= (+ (- 5) D) 0)
              (= (+ (- 2) C) 0)
              (= (+ (- 1) P) 0)
              (= (+ (- 20) L) 0))
         (inv-f X W V U T S R Q P O N M L K J I H G F E D C B A))
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
         (V1 Int))
  (let ((a!1 (and (= (- U E1) 0) (= (- Q D1) 0) (= (- M C1) 0) (= (- G X) 0))))
     (let ((a!2 (and a!1
                     (>= (- Q U) 0)
                     (= (+ (- (- 2) U) T) 0)
                     (= (+ (- 643) L) 0)
                     (= (+ (- 1 Q) P) 0)
                     (= (+ (- (- 80) L) F) 0)
                     (= (- T V1) 0)
                     (= (- P K1) 0)
                     (= (- L Z) 0)
                     (= (- F C) 0)
                     (= (- B1 K) 0)
                     (= (- O K) 0)
                     (= (- A1 J) 0)
                     (= (- E J) 0)
                     (= (- Y I) 0)
                     (= (- D I) 0))))
     (let ((a!3 (or (and a!1
                         (= (- U V1) 0)
                         (= (- Q K1) 0)
                         (= (- M Z) 0)
                         (= (- G C) 0)
                         (= (- C1 Z) 0)
                         (= (- B1 O) 0)
                         (= (- A1 E) 0)
                         (= (- Y D) 0)
                         (= (- X C) 0))
                    a!2)))
       (=> (and (inv-f E1 D1 C1 B1 A1 Y X W V U T S R Q P N M L K J I H G F)
                a!3)
           (inv-f V1
                  K1
                  Z
                  O
                  E
                  D
                  C
                  B
                  A
                  U1
                  T1
                  S1
                  R1
                  Q1
                  P1
                  O1
                  N1
                  M1
                  L1
                  J1
                  I1
                  H1
                  G1
                  F1)))))
    ))


(check-sat)
(exit)
