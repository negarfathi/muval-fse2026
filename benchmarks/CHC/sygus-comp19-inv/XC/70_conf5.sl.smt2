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
         (Y Int))
  (let ((a!1 (and (inv-f Y X W V U T S R Q P O N M L K J I H G F E D C B A)
                     (= (- Y P) 0)
                     (= (- X N) 0)
                     (= (- W L) 0)
                     (= (- V J) 0)
                     (= (- U I) 0)
                     (= (- T H) 0)
                     (< (- H E) 0)
                     (= (- S E) 0)
                     (>= (+ (- 1) H) 0)
                     (= (- R B) 0)
                     (< (- (+ (- 1) H) B) 0))))
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
         (Y Int))
  (=> (and (= (- Y Q) 0)
              (= (- X N) 0)
              (= (- W M) 0)
              (= (- V J) 0)
              (= (- U I) 0)
              (= (- S F) 0)
              (= (+ (- 2) Q) 0)
              (= (+ (- 1) N) 0)
              (= (+ (- 2) M) 0)
              (= (+ (- 7) J) 0)
              (= (+ (- 8) I) 0)
              (= (+ (- 1) F) 0))
         (inv-f Y X W V U T S R Q P O N M L K J I H G F E D C B A))
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
         (X1 Int))
  (let ((a!1 (and (= (- V F1) 0) (= (- R D1) 0) (= (- J Y) 0) (= (- G X) 0))))
     (let ((a!2 (and a!1
                     (>= (- M J) 0)
                     (= (+ (- J M) E) 0)
                     (= (- (+ (- 292) U) N) 0)
                     (= (+ (- (- 1) J) I) 0)
                     (= (- P O) 0)
                     (= (- U X1) 0)
                     (= (- P B1) 0)
                     (= (- I C) 0)
                     (= (- E B) 0)
                     (= (- E1 T) 0)
                     (= (- M1 T) 0)
                     (= (- C1 O) 0)
                     (= (- Q O) 0)
                     (= (- A1 N) 0)
                     (= (- F N) 0)
                     (= (- Z M) 0)
                     (= (- D M) 0))))
     (let ((a!3 (or (and a!1
                         (= (- V X1) 0)
                         (= (- R B1) 0)
                         (= (- J C) 0)
                         (= (- G B) 0)
                         (= (- Z M) 0)
                         (= (- D M) 0)
                         (= (- F1 X1) 0)
                         (= (- E1 M1) 0)
                         (= (- D1 B1) 0)
                         (= (- C1 Q) 0)
                         (= (- A1 F) 0)
                         (= (- X B) 0))
                    a!2)))
       (=> (and (inv-f F1 E1 D1 C1 A1 Z Y X W V U T S R P O N M L K J I H G E)
                a!3)
           (inv-f X1
                  M1
                  B1
                  Q
                  F
                  D
                  C
                  B
                  A
                  W1
                  V1
                  U1
                  T1
                  S1
                  R1
                  Q1
                  P1
                  O1
                  N1
                  L1
                  K1
                  J1
                  I1
                  H1
                  G1)))))
    ))


(check-sat)
(exit)
