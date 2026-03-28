(set-logic HORN)

(declare-fun inv-f (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (=> (and (inv-f B A) (< (- 3 B) 0) (< (+ (- 3) A) 0)) false)))
(assert (forall ((A Int) (B Int)) (=> (and (= B 0) (= A 0)) (inv-f B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (let ((a!1 (and (= (- (+ (- 1) D) B) 0) (= (- (+ (- 100) C) A) 0)))
           (a!2 (and (>= (+ (- 4) B) 0)
                     (= (- (+ (- 1) D) B) 0)
                     (= (- (+ (- 1) C) A) 0)))
           (a!3 (and (>= (- (- 1) B) 0) (= (- D B) 0) (= (- (+ 1 C) A) 0))))
       (=> (and (inv-f B A) (or a!1 a!2 a!3)) (inv-f D C)))
    ))


(check-sat)
(exit)
