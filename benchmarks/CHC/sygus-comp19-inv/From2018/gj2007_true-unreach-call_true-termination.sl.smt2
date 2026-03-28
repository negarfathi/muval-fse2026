(set-logic HORN)

(declare-fun inv-f (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (let ((a!1 (and (inv-f B A) (< (- 99 B) 0) (not (= (+ (- 100) A) 0)))))
       (=> a!1 false))
    ))
(assert (forall ((A Int) (B Int))
  (=> (and (= B 0) (= (+ (- 50) A) 0)) (inv-f B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (or (and (< B 50) (= D (+ B 1))) (and (>= B 50) (= C A)))))
     (let ((a!2 (and (inv-f B A)
                     (>= (- 99 B) 0)
                     a!1
                     (= (- (+ (- 1) D) B) 0)
                     (= (- (+ (- 1) C) A) 0))))
       (=> a!2 (inv-f D C))))
    ))


(check-sat)
(exit)
