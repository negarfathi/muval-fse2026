(set-logic HORN)

(declare-fun InvF (Int) Bool)
(assert (forall ((A Int))
  (let ((a!1 (and (InvF A)
                     (not (= (+ (- 40) A) 0))
                     (or (>= (- (- 1) A) 0) (>= (+ (- 41) A) 0)))))
       (=> a!1 false))
    ))
(assert (forall ((A Int)) (=> (= A 0) (InvF A))))
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (not (= (+ (- 40) A) 0)) (= (- (+ (- 1) B) A) 0))))
     (let ((a!2 (or a!1 (and (= (+ (- 40) A) 0) (= (+ (- 1) B) 0)))))
       (=> (and (InvF A) a!2) (InvF B))))
    ))


(check-sat)
(exit)
