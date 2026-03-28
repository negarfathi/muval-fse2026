(set-logic HORN)

(declare-fun InvF (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (not (= (- B A) 0)) (or (< B 0) (< (- A B) 0)))))
     (let ((a!2 (or a!1 (and (= (- B A) 0) (< A 0)))))
       (=> (and (InvF B A) a!2) false)))
    ))
(assert (forall ((A Int) (B Int))
  (=> (and (= B 0) (>= (+ (- 1) A) 0)) (InvF B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (not (= (- B A) 0)) (= (- (+ (- 1) D) B) 0) (= (- C A) 0))))
     (let ((a!2 (or a!1 (and (= (- B A) 0) (= (+ (- 1) D) 0) (= (- C A) 0)))))
       (=> (and (InvF B A) a!2) (InvF D C))))
    ))


(check-sat)
(exit)
