(set-logic HORN)

(declare-fun InvF (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (=> (and (InvF B A) (< (- 47 B) 0) (< (+ (- 58) B) 0) (< A 0)) false)
    ))
(assert (forall ((A Int) (B Int)) (=> (= A 0) (InvF B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (= (+ (- (+ 48 C) B) (* (- 2) A)) 0)))
       (=> (and (InvF B A) (>= (- 56 B) 0) (>= (+ (- 49) B) 0) a!1) (InvF D C)))
    ))


(check-sat)
(exit)
