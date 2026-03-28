(set-logic HORN)

(declare-fun inv-f (Int) Bool)
(assert (forall ((A Int)) (=> (and (inv-f A) (< (+ 5 A) 0)) false)))
(assert (forall ((A Int))
  (=> (and (>= (- (- 2) A) 0) (>= (+ 3 A) 0)) (inv-f A))))
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (= (- (+ (- 2) B) A) 0) (>= (- A) 0)))
           (a!2 (and (= (- (+ (- 1) B) A) 0) (>= (+ (- 1) A) 0))))
       (=> (and (inv-f A) (or a!1 a!2)) (inv-f B)))
    ))


(check-sat)
(exit)
