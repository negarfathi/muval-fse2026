
(set-logic HORN)
(declare-fun Q (Int, Int) Bool)
(declare-fun P (Int, Int) Bool)

(assert (Q 0 0))
(assert (forall ((i Int) (x Int)) 
(=> 
    (Q i x)
    (= x 0)
)))
(assert (forall ((i Int) (x Int) (r Int)) 
(=> 
    (and (Q i x) (P i r))
    (Q (+ i 1) (+ x r))
)))
