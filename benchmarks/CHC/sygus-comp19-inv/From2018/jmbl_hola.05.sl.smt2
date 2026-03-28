(set-logic HORN)

(declare-fun InvF (Int Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (=> (and (InvF D C B A) (< (- A B) 0)) false)))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (=> (and (= D 0) (= B 0) (= A 0) (= C 0)) (InvF D C B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int))
  (let ((a!1 (= (- (- (+ (- 1) F) D) B) 0))
           (a!2 (= (- (- (+ (- 1) E) C) A) 0))
           (a!3 (= (- (- (+ (- 2) E) C) A) 0)))
     (let ((a!4 (and (InvF D C B A)
                     a!1
                     (= (- (+ (- 1) G) C) 0)
                     (= (- (+ (- 1) H) D) 0)
                     (or a!2 a!3))))
       (=> a!4 (InvF H G F E))))
    ))


(check-sat)
(exit)
