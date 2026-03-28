(set-logic HORN)

(declare-fun inv-f (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (=> (and (inv-f B A) (< (- (- 1) B) 0) (< A 0)) false)))
(assert (forall ((A Int) (B Int)) (=> (= (+ 50 B) 0) (inv-f B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (>= (- (- 1) B) 0)
                     (= (- (- D B) A) 0)
                     (= (- (+ (- 1) C) A) 0))))
     (let ((a!2 (or a!1 (and (>= B 0) (= (- D B) 0) (= (- C A) 0)))))
       (=> (and (inv-f B A) a!2) (inv-f D C))))
    ))


(check-sat)
(exit)
