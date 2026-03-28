(set-logic HORN)

(declare-fun InvF (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (InvF B A) (not (= (- A B) 0)) (not (= (+ 1 A) 0)))))
       (=> a!1 false))
    ))
(assert (forall ((A Int) (B Int)) (=> (and (= A 0) (= B 0)) (InvF B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (InvF B A) (= (- (+ (- 1) D) B) 0) (= (- (+ (- 1) C) A) 0))))
       (=> a!1 (InvF D C)))
    ))


(check-sat)
(exit)
