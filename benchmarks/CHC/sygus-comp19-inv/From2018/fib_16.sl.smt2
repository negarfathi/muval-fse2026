(set-logic HORN)

(declare-fun inv-f (Int Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (=> (and (inv-f D C B A) (= (- B A) 0) (= D 0) (not (= C 0))) false)
    ))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (=> (and (= (- D B) 0) (= (- C A) 0)) (inv-f D C B A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int))
  (let ((a!1 (and (= (- F B) 0) (= (- E A) 0))))
     (let ((a!2 (and (not (= D 0)) (= (- (+ 1 H) D) 0) (= (- (+ 1 G) C) 0) a!1)))
     (let ((a!3 (or a!2 (and (= D 0) (= (- H D) 0) (= (- G C) 0) a!1))))
       (=> (and (inv-f D C B A) a!3) (inv-f H G F E)))))
    ))


(check-sat)
(exit)
