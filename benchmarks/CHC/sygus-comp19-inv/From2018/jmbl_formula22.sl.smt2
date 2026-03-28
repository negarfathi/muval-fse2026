(set-logic HORN)

(declare-fun InvF (Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int))
  (let ((a!1 (and (< B 0) (< (+ (- 2 B) A) 0))))
     (let ((a!2 (and (InvF C B A) (or (< (- B C) 0) a!1))))
       (=> a!2 false)))
    ))
(assert (forall ((A Int) (B Int) (C Int))
  (=> (and (= B 0) (= C 0) (= A 0)) (InvF C B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))
  (let ((a!1 (or (>= E 0) (>= (+ (- 2 E) D) 0))))
       (=> (and (InvF C B A) (>= (- E F) 0) a!1) (InvF F E D)))
    ))


(check-sat)
(exit)
