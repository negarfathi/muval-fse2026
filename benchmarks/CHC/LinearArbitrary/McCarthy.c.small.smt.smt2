(set-logic HORN)

(declare-fun |main@_9| ( Int Bool ) Bool)
(declare-fun |main@_18| ( Int Bool ) Bool)
(declare-fun |main@_12| ( Int Bool ) Bool)
(declare-fun |f91| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@_5| ( Int Bool Int ) Bool)
(declare-fun |f91@_loop.bound| ( Int ) Bool)
(declare-fun |main@_15| ( Int Bool ) Bool)
(declare-fun |main@_24| ( Int Bool ) Bool)
(declare-fun |main@_27| ( Int Bool ) Bool)
(declare-fun |main@_30| ( Int Bool ) Bool)
(declare-fun |main@_33| ( Int Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_21| ( Int Bool ) Bool)
(declare-fun |f91@tailrecurse._crit_edge| ( Int Int ) Bool)
(declare-fun |f91@tailrecurse._crit_edge.split| ( Int Int ) Bool)
(declare-fun |f91@tailrecurse| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (f91 v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (f91 v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (f91 v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (f91@_loop.bound A)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (f91@_loop.bound E)
        (and (= C (not (<= E 100))) (= D E) (= B true) (= C true) (= B (= A 100)))
      )
      (f91@tailrecurse._crit_edge D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (f91@_loop.bound E)
        (and (= B (not (<= E 100))) (= C E) (= A true) (not B) (= A (= D 100)))
      )
      (f91@tailrecurse C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (f91@tailrecurse._crit_edge A C)
        (= B (+ (- 10) A))
      )
      (f91@tailrecurse._crit_edge.split B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (f91@tailrecurse A C G)
        (f91 v_7 v_8 v_9 B E)
        (and (= v_7 true)
     (= v_8 false)
     (= v_9 false)
     (= B (+ 11 A))
     (= F E)
     (= D true)
     (= D (not (<= E C))))
      )
      (f91@tailrecurse._crit_edge F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) ) 
    (=>
      (and
        (f91@tailrecurse A F G)
        (f91 v_7 v_8 v_9 B D)
        (and (= v_7 true)
     (= v_8 false)
     (= v_9 false)
     (= B (+ 11 A))
     (= E D)
     (not C)
     (= C (not (<= D F))))
      )
      (f91@tailrecurse E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (f91@tailrecurse._crit_edge.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (f91 v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        main@entry
        (f91 v_6 v_7 v_8 D F)
        (let ((a!1 (= B (or (not (<= A 9)) (not (>= A 0))))))
  (and (= v_6 true)
       (= v_7 false)
       (= v_8 false)
       a!1
       (= C (or B E))
       (= A (+ (- 91) D))
       (= C true)
       (= E (= F 91))))
      )
      (main@_5 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        main@entry
        (f91 v_6 v_7 v_8 B A)
        (let ((a!1 (= D (or (not (<= C 9)) (not (>= C 0))))))
  (and (= v_6 true)
       (= v_7 false)
       (= v_8 false)
       (= E (= A 91))
       a!1
       (= C (+ (- 91) B))
       (not F)
       (= F (or D E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) ) 
    (=>
      (and
        (main@_5 F G A)
        (and (= D (= A B))
     (= E (or D C))
     (= B (+ (- 10) F))
     (= E true)
     (= C (not (<= 101 F))))
      )
      (main@_9 F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@_5 B A C)
        (and (= F (= C D))
     (= E (not (<= 101 B)))
     (= D (+ (- 10) B))
     (not G)
     (= G (or E F)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@_9 D E)
        (let ((a!1 (= B (or (not (<= A 19)) (not (>= A 0))))))
  (and (= C (or B E)) (= A (+ (- 81) D)) (= C true) a!1))
      )
      (main@_12 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_9 A D)
        (let ((a!1 (= C (or (not (<= B 19)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 81) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@_12 D E)
        (let ((a!1 (= B (or (not (<= A 29)) (not (>= A 0))))))
  (and (= C (or B E)) (= A (+ (- 71) D)) (= C true) a!1))
      )
      (main@_15 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_12 A D)
        (let ((a!1 (= C (or (not (<= B 29)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 71) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@_15 D E)
        (let ((a!1 (= B (or (not (<= A 39)) (not (>= A 0))))))
  (and (= C (or B E)) (= A (+ (- 61) D)) (= C true) a!1))
      )
      (main@_18 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_15 A D)
        (let ((a!1 (= C (or (not (<= B 39)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 61) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@_18 D E)
        (let ((a!1 (= B (or (not (<= A 49)) (not (>= A 0))))))
  (and (= C (or B E)) (= A (+ (- 51) D)) (= C true) a!1))
      )
      (main@_21 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_18 A D)
        (let ((a!1 (= C (or (not (<= B 49)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 51) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@_21 D E)
        (let ((a!1 (= B (or (not (<= A 59)) (not (>= A 0))))))
  (and (= C (or B E)) (= A (+ (- 41) D)) (= C true) a!1))
      )
      (main@_24 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_21 A D)
        (let ((a!1 (= C (or (not (<= B 59)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 41) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@_24 D E)
        (let ((a!1 (= B (or (not (<= A 69)) (not (>= A 0))))))
  (and (= C (or B E)) (= A (+ (- 31) D)) (= C true) a!1))
      )
      (main@_27 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_24 A D)
        (let ((a!1 (= C (or (not (<= B 69)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 31) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@_27 D E)
        (let ((a!1 (= B (or (not (<= A 79)) (not (>= A 0))))))
  (and (= C (or B E)) (= A (+ (- 21) D)) (= C true) a!1))
      )
      (main@_30 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_27 A D)
        (let ((a!1 (= C (or (not (<= B 79)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 21) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@_30 D E)
        (let ((a!1 (= B (or (not (<= A 89)) (not (>= A 0))))))
  (and (= C (or B E)) (= A (+ (- 11) D)) (= C true) a!1))
      )
      (main@_33 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_30 A D)
        (let ((a!1 (= C (or (not (<= B 89)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 11) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_33 A D)
        (let ((a!1 (= C (or (not (<= B 99)) (not (>= B 0))))))
  (and a!1 (= B (+ (- 1) A)) (not E) (= E (or C D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error
        true
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
