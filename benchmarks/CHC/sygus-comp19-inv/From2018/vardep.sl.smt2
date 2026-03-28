(set-logic HORN)

(declare-fun inv-f (Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int))
  (=> (and (inv-f C B A) (or (< C 0) (< B 0) (< A 0))) false)))
(assert (forall ((A Int) (B Int) (C Int))
  (=> (and (= C 0) (= B 0) (= A 0)) (inv-f C B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))
  (let ((a!1 (and (inv-f C B A)
                     (= (- (+ (- 1) F) C) 0)
                     (= (- (+ (- 2) E) B) 0)
                     (= (- (+ (- 3) D) A) 0))))
       (=> a!1 (inv-f F E D)))
    ))


(check-sat)
(exit)
