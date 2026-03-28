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
                     (= (- W L) 0)
                     (= (- V J) 0)
                     (= (- U H) 0)
                     (= (- T F) 0)
                     (< (- 8 O) 0)
                     (= (- S E) 0)
                     (not (= B 0))
                     (= (- R B) 0)
                     (not (= (+ (- 8) B) 0)))))
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
              (= (- W M) 0)
              (= (- V J) 0)
              (= (- U I) 0)
              (= (- T F) 0)
              (= (- S E) 0)
              (= (- R C) 0)
              (= (+ (- 6) M) 0)
              (= (+ (- 2) J) 0)
              (= (+ (- 6) I) 0)
              (= (+ (- 2) F) 0)
              (= (+ (- 4) E) 0)
              (= C 0)
              (= (+ (- 1) P) 0))
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
  (let ((a!1 (and (= (- U E1) 0) (= (- R D1) 0) (= (- M B1) 0) (= (- G X) 0))))
     (let ((a!2 (and a!1
                     (>= (- 8 U) 0)
                     (= (+ (- (- 1) U) T) 0)
                     (= (- (+ 206 Q) K) 0)
                     (= (+ (- (- 1) G) F) 0)
                     (= (- L K) 0)
                     (= (- T V1) 0)
                     (= (- Q K1) 0)
                     (= (- L O) 0)
                     (= (- F C) 0)
                     (= (- C1 P) 0)
                     (= (- Z P) 0)
                     (= (- A1 K) 0)
                     (= (- E K) 0)
                     (= (- Y J) 0)
                     (= (- D J) 0))))
     (let ((a!3 (or (and a!1
                         (= (- U V1) 0)
                         (= (- R K1) 0)
                         (= (- M O) 0)
                         (= (- G C) 0)
                         (= (- D1 K1) 0)
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
