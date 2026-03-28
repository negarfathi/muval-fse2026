(set-logic HORN)

(declare-fun inv-f (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (inv-f B A) (< (- 1023 B) 0) (not (= (- B A) 0)))))
       (=> a!1 false))
    ))
(assert (forall ((A Int) (B Int)) (=> (= (- A B) 0) (inv-f B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (inv-f B A)
                     (= (- (+ (- 1) D) B) 0)
                     (>= (- 1023 B) 0)
                     (= (- (+ (- 1) C) A) 0))))
       (=> a!1 (inv-f D C)))
    ))


(check-sat)
(exit)
