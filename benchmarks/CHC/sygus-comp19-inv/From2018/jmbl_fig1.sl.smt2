(set-logic HORN)

(declare-fun InvF (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (=> (and (InvF B A) (>= B 0) (>= (- A) 0)) false)))
(assert (forall ((A Int) (B Int)) (=> (= (+ 50 B) 0) (InvF B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (InvF B A)
                     (>= (- (- 1) B) 0)
                     (= (- (- D B) A) 0)
                     (= (- (+ (- 1) C) A) 0))))
       (=> a!1 (InvF D C)))
    ))


(check-sat)
(exit)
