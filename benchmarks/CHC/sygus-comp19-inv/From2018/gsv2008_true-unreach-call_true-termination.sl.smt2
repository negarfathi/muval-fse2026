(set-logic HORN)

(declare-fun inv-f (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (=> (and (inv-f B A) (< (- (- 1) B) 0) (< (+ (- 1) A) 0)) false)
    ))
(assert (forall ((A Int) (B Int))
  (=> (and (= (+ 50 B) 0) (>= (+ 999 A) 0)) (inv-f B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (inv-f B A)
                     (>= (- (- 1) B) 0)
                     (= (- (- D B) A) 0)
                     (= (- (+ (- 1) C) A) 0))))
       (=> a!1 (inv-f D C)))
    ))


(check-sat)
(exit)
