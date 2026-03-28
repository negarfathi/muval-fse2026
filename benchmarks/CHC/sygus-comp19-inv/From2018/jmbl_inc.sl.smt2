(set-logic HORN)

(declare-fun InvF (Int) Bool)
(assert (forall ((A Int))
  (let ((a!1 (and (InvF A) (>= (+ (- 100) A) 0) (not (= (+ (- 100) A) 0)))))
       (=> a!1 false))
    ))
(assert (forall ((A Int)) (=> (= A 0) (InvF A))))
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (InvF A) (>= (- 99 A) 0) (= (- (+ (- 1) B) A) 0))))
       (=> a!1 (InvF B)))
    ))


(check-sat)
(exit)
