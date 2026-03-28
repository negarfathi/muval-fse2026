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
                     (= (- Y Q) 0)
                     (= (- X P) 0)
                     (= (- W N) 0)
                     (= (- V K) 0)
                     (= (- U I) 0)
                     (= (- T F) 0)
                     (not (= (+ 1 F) 0))
                     (= (- S B) 0)
                     (not (= (- F B) 0)))))
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
              (= (- X P) 0)
              (= (- W O) 0)
              (= (- V L) 0)
              (= (- U I) 0)
              (= (- T G) 0)
              (= (- S C) 0)
              (= (+ (- 8) Q) 0)
              (= (+ (- 3) P) 0)
              (= (+ (- 4) O) 0)
              (= (+ (- 4) L) 0)
              (= (+ (- 7) I) 0)
              (= G 0)
              (= C 0))
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
  (let ((a!1 (and (= (- T D1) 0) (= (- P C1) 0) (= (- K Z) 0) (= (- G Y) 0))))
     (let ((a!2 (and a!1
                     (= (+ (- (- 1) G) E) 0)
                     (= (- O (+ W P)) 0)
                     (= (+ (- (- 1) K) J) 0)
                     (= (+ (- 858) S) 0)
                     (= (- S B1) 0)
                     (= (- O Q) 0)
                     (= (- J D) 0)
                     (= (- E C) 0)
                     (= (- F1 W) 0)
                     (= (- X1 W) 0)
                     (= (- E1 V) 0)
                     (= (- M1 V) 0)
                     (= (- A1 N) 0)
                     (= (- F N) 0)
                     (= (- X B) 0))))
     (let ((a!3 (or (and a!1
                         (= (- T B1) 0)
                         (= (- P Q) 0)
                         (= (- K D) 0)
                         (= (- G C) 0)
                         (= (- F1 X1) 0)
                         (= (- E1 M1) 0)
                         (= (- D1 B1) 0)
                         (= (- C1 Q) 0)
                         (= (- A1 F) 0)
                         (= (- Z D) 0)
                         (= (- Y C) 0)
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
