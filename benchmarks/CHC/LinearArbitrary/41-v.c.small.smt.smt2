; Instance after reaching preproc fixed-point.

(set-logic HORN)

; Datatypes

; Functions

; Side-clauses


(declare-fun
  main@.lr.ph
  (Int Int Int Int ) Bool
)

; Original clauses' names (0) {
; }

; Clause #0
;   from: #3
;   4 inactive variable(s)
;   unroll: false
;   terms_changed: false
;   preds_changed: false
;   created by `parsing`
(assert 
  (forall
    ( (I Int) (M Int) (J Int) (K Int) )
    (=>
      (and
        (main@.lr.ph I M J K)
        (not (= (+ J (* (- 1) M)) 0))
        (= (+ I K) (* 2 M))
      )
      false
    )
  )
)



; Clause #1
;   from: #4
;   6 inactive variable(s)
;   unroll: false
;   terms_changed: false
;   preds_changed: false
;   created by `parsing`
(assert 
  (forall
    ( (I Int) (M Int) (J Int) (K Int))
    (=>
      (and
        (main@.lr.ph I M J K)
      )
      (main@.lr.ph (+ I 1) M (+ J (- 3)) (+ K 1))
    )
  )
)



; Clause #2
;   from: #2
;   2 inactive variable(s)
;   unroll: false
;   terms_changed: false
;   preds_changed: false
;   created by `parsing`
(assert 
  (forall
    ( (D Int) (M Int) )
    (=>
      true
      (main@.lr.ph 0 M (* 4 M) 0)
    )
  )
)



(check-sat)
