(set-logic HORN)

(declare-fun InvF (Int) Bool)
(assert (forall ((A Int))
  (=> (and (InvF A) (>= (- A) 0) (not (= A 0))) false)))
(assert (forall ((A Int)) (=> (= (+ (- 10000) A) 0) (InvF A))))
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (InvF A) (>= (+ (- 1) A) 0) (= (- (+ 1 B) A) 0))))
       (=> a!1 (InvF B)))
    ))


(check-sat)
(exit)
