(set-logic HORN)

(declare-fun InvF (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (InvF B A) (>= (- B A) 0) (not (= (- B A) 0)))))
       (=> a!1 false))
    ))
(assert (forall ((A Int) (B Int)) (=> (and (= B 0) (>= A 0)) (InvF B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (InvF B A)
                     (>= (+ (- (- 1) B) A) 0)
                     (= (- C A) 0)
                     (= (- (+ (- 1) D) B) 0))))
       (=> a!1 (InvF D C)))
    ))


(check-sat)
(exit)
