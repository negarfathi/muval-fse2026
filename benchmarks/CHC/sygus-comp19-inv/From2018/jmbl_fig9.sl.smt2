(set-logic HORN)

(declare-fun InvF (Int Int) Bool)
(assert (forall ((A Int) (B Int)) (=> (and (InvF B A) (< A 0)) false)))
(assert (forall ((A Int) (B Int)) (=> (and (= B 0) (= A 0)) (InvF B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (InvF B A) (>= A 0) (= (- D B) 0) (= (- (- C B) A) 0))))
       (=> a!1 (InvF D C)))
    ))


(check-sat)
(exit)
