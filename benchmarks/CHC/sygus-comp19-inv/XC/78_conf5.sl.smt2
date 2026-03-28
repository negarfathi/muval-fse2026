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
                     (= (- X M) 0)
                     (= (- W J) 0)
                     (= (- V H) 0)
                     (= (- U E) 0)
                     (= (- T D) 0)
                     (= (- S C) 0)
                     (= (- R B) 0)
                     (>= (+ (- (- 1) M) A) 0)
                     (= (- Q A) 0)
                     (< M 0))))
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
  (=> (and (= (- X N) 0)
              (= (- W J) 0)
              (= (- V I) 0)
              (= (- U E) 0)
              (= (- T D) 0)
              (= (- S C) 0)
              (= (- R B) 0)
              (= (- Q A) 0)
              (= (+ (- 1) J) 0)
              (= (+ (- 6) I) 0)
              (= (+ (- 5) E) 0)
              (= (+ (- 1) D) 0)
              (= (+ (- 2) C) 0)
              (= N 0)
              (>= B 0)
              (>= A 0)
              (>= (- B A) 0))
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
  (let ((a!1 (and (= (- S E1) 0) (= (- M C1) 0))))
     (let ((a!2 (and a!1
                     (>= (+ (- (- 1) S) F) 0)
                     (= (+ (- (- 1) S) R) 0)
                     (= (+ (- L J) H) 0)
                     (= (- Q R) 0)
                     (= (- K L) 0)
                     (= (- Q V1) 0)
                     (= (- K Z) 0)
                     (= (- D1 P) 0)
                     (= (- K1 P) 0)
                     (= (- B1 J) 0)
                     (= (- O J) 0)
                     (= (- A1 I) 0)
                     (= (- E I) 0)
                     (= (- Y H) 0)
                     (= (- D H) 0)
                     (= (- X G) 0)
                     (= (- C G) 0)
                     (= (- W F) 0)
                     (= (- B F) 0)
                     (= (- V A) 0)))
           (a!3 (and a!1
                     (< (+ (- (- 1) S) F) 0)
                     (= (- Q S) 0)
                     (= (- K M) 0)
                     (= (- Q V1) 0)
                     (= (- K Z) 0)
                     (= (- D1 P) 0)
                     (= (- K1 P) 0)
                     (= (- B1 J) 0)
                     (= (- O J) 0)
                     (= (- A1 I) 0)
                     (= (- E I) 0)
                     (= (- Y H) 0)
                     (= (- D H) 0)
                     (= (- X G) 0)
                     (= (- C G) 0)
                     (= (- W F) 0)
                     (= (- B F) 0)
                     (= (- V A) 0))))
     (let ((a!4 (or (and a!1
                         (= (- S V1) 0)
                         (= (- M Z) 0)
                         (= (- E1 V1) 0)
                         (= (- D1 K1) 0)
                         (= (- C1 Z) 0)
                         (= (- B1 O) 0)
                         (= (- A1 E) 0)
                         (= (- Y D) 0)
                         (= (- X C) 0)
                         (= (- W B) 0)
                         (= (- V A) 0))
                    a!2
                    a!3)))
       (=> (and (inv-f E1 D1 C1 B1 A1 Y X W V U T S R Q P N M L K J I H G F)
                a!4)
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
