(set-logic HORN)

(declare-fun inv-f (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (let ((a!1 (or (>= (- A) 0) (and (>= (+ (- 1) A) 0) (>= (+ (- 100) B) 0)))))
     (let ((a!2 (and (inv-f B A)
                     (< (- A) 0)
                     a!1
                     (or (< (+ (- 1) A) 0) (< (+ (- 100) B) 0)))))
       (=> a!2 false)))
    ))
(assert (forall ((A Int) (B Int)) (=> (>= (- 1000000 A) 0) (inv-f B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (inv-f B A)
                     (>= (- 99 B) 0)
                     (>= (+ (- 1) A) 0)
                     (= (- (- D B) A) 0)
                     (= (- C A) 0))))
       (=> a!1 (inv-f D C)))
    ))


(check-sat)
(exit)
