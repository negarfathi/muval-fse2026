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
              (= (- X N) 0)
              (= (- W J) 0)
              (= (- V I) 0)
              (= (- U H) 0)
              (= (- T G) 0)
              (= (- S E) 0)
              (>= A 0)
              (= (- R A) 0)
              (= (- N A) 0))
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
  (=> (and (= (- X O) 0)
              (= (- W J) 0)
              (= (- V I) 0)
              (= (- U H) 0)
              (= (- T G) 0)
              (= (- S F) 0)
              (= (- R A) 0)
              (= (+ (- 1) J) 0)
              (= (+ (- 5) I) 0)
              (= (+ (- 9) H) 0)
              (= (+ (- 4) G) 0)
              (= (+ (- 5) F) 0)
              (= O 0)
              (>= (+ (- 1) A) 0))
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
  (let ((a!1 (and (= (- T E1) 0) (= (- J Y) 0))))
     (let ((a!2 (and a!1 (not (= (- T F) 0))))
           (a!4 (and (and a!1 (= (- T F) 0))
                     (= (- R T) 0)
                     (= (- H J) 0)
                     (= (- R V1) 0)
                     (= (- H D) 0)
                     (= (- D1 P) 0)
                     (= (- K1 P) 0)
                     (= (- C1 N) 0)
                     (= (- Z N) 0)
                     (= (- B1 M) 0)
                     (= (- O M) 0)
                     (= (- A1 L) 0)
                     (= (- E L) 0)
                     (= (- X F) 0)
                     (= (- C F) 0)
                     (= (- W B) 0)))
           (a!5 (and (and a!1 (= (- T F) 0))
                     (= (+ (- 1) Q) 0)
                     (= (+ (- (- 272) N) G) 0)
                     (= (- R Q) 0)
                     (= (- H G) 0)
                     (= (- R V1) 0)
                     (= (- H D) 0)
                     (= (- D1 P) 0)
                     (= (- K1 P) 0)
                     (= (- C1 N) 0)
                     (= (- Z N) 0)
                     (= (- B1 M) 0)
                     (= (- O M) 0)
                     (= (- A1 L) 0)
                     (= (- E L) 0)
                     (= (- X F) 0)
                     (= (- C F) 0)
                     (= (- W B) 0))))
     (let ((a!3 (and a!2
                     (= (+ (- (- 1) T) S) 0)
                     (= (+ (- 631) I) 0)
                     (= (- R S) 0)
                     (= (- H I) 0)
                     (= (- R V1) 0)
                     (= (- H D) 0)
                     (= (- D1 P) 0)
                     (= (- K1 P) 0)
                     (= (- C1 N) 0)
                     (= (- Z N) 0)
                     (= (- B1 M) 0)
                     (= (- O M) 0)
                     (= (- A1 L) 0)
                     (= (- E L) 0)
                     (= (- X F) 0)
                     (= (- C F) 0)
                     (= (- W B) 0))))
     (let ((a!6 (or (and a!1
                         (= (- T V1) 0)
                         (= (- J D) 0)
                         (= (- E1 V1) 0)
                         (= (- D1 K1) 0)
                         (= (- C1 Z) 0)
                         (= (- B1 O) 0)
                         (= (- A1 E) 0)
                         (= (- Y D) 0)
                         (= (- X C) 0)
                         (= (- W B) 0))
                    a!3
                    a!4
                    a!5
                    (and a!2
                         (= (- R T) 0)
                         (= (- H J) 0)
                         (= (- R V1) 0)
                         (= (- H D) 0)
                         (= (- D1 P) 0)
                         (= (- K1 P) 0)
                         (= (- C1 N) 0)
                         (= (- Z N) 0)
                         (= (- B1 M) 0)
                         (= (- O M) 0)
                         (= (- A1 L) 0)
                         (= (- E L) 0)
                         (= (- X F) 0)
                         (= (- C F) 0)
                         (= (- W B) 0)))))
       (=> (and (inv-f E1 D1 C1 B1 A1 Y X W V U T S R Q P N M L K J I H G F)
                a!6)
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
                  F1))))))
    ))


(check-sat)
(exit)
