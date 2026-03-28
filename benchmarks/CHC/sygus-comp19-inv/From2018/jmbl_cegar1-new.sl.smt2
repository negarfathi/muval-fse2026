(set-logic HORN)

(declare-fun InvF (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (=> (and (InvF B A) (= (+ (- 20) B) 0) (= A 0)) false)))
(assert (forall ((A Int) (B Int))
  (=> (and (>= (- 10 B) 0) (>= B 0) (>= (- 10 A) 0) (>= A 0)) (InvF B A))
    ))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (InvF B A)
                     (= (- (+ (- 10) D) B) 0)
                     (= (- (+ (- 10) C) A) 0))))
       (=> a!1 (InvF D C)))
    ))


(check-sat)
(exit)
