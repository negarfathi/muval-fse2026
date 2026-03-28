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
  (=> (and (inv-f X W V U T S R Q P O N M L K J I H G F E D C B A)
              (= (- X P) 0)
              (= (- W N) 0)
              (= (- V M) 0)
              (= (- U L) 0)
              (= (- T J) 0)
              (= (- S F) 0)
              (< (- 99999 B) 0)
              (= (- R B) 0)
              (< (- F B) 0))
         false)
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
  (=> (and (= (- X Q) 0)
              (= (- W N) 0)
              (= (- V M) 0)
              (= (- U L) 0)
              (= (- T K) 0)
              (= (- S G) 0)
              (= (- R C) 0)
              (= (+ (- 9) Q) 0)
              (= (+ (- 4) N) 0)
              (= (+ (- 5) M) 0)
              (= L 0)
              (= (+ (- 4) K) 0)
              (= (+ (- 1) G) 0)
              (= C 0))
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
  (let ((a!1 (and (= (- V E1) 0) (= (- P A1) 0) (= (- K Y) 0) (= (- G X) 0))))
     (let ((a!2 (and a!1
                     (>= (- 99999 G) 0)
                     (= (- (- J K) G) 0)
                     (= (+ (- 687 R) N) 0)
                     (= (+ (- (- 1) G) F) 0)
                     (= (+ (- 178) U) 0)
                     (= (- U V1) 0)
                     (= (- N E) 0)
                     (= (- J D) 0)
                     (= (- F C) 0)
                     (= (- D1 T) 0)
                     (= (- K1 T) 0)
                     (= (- C1 S) 0)
                     (= (- Z S) 0)
                     (= (- B1 R) 0)
                     (= (- O R) 0))))
     (let ((a!3 (or (and a!1
                         (= (- V V1) 0)
                         (= (- P E) 0)
                         (= (- K D) 0)
                         (= (- G C) 0)
                         (= (- E1 V1) 0)
                         (= (- D1 K1) 0)
                         (= (- C1 Z) 0)
                         (= (- B1 O) 0)
                         (= (- A1 E) 0)
                         (= (- Y D) 0))
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
