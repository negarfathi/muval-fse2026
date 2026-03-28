(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int ) Bool)
(declare-fun |main@.preheader.split| ( ) Bool)
(declare-fun |main@.preheader| ( Int ) Bool)

(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (main@entry A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry D)
        (let ((a!1 (= E (and (not (<= 201 G)) (>= G 0)))))
  (and a!1
       (= F (not (<= G 0)))
       (= B D)
       (= C D)
       (= H G)
       (= A true)
       (= E true)
       (= F true)
       (= A (= I 1))))
      )
      (main@.lr.ph H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry E)
        (let ((a!1 (= F (and (not (<= 201 H)) (>= H 0)))))
  (and (= G (not (<= H 0)))
       a!1
       (= C E)
       (= D E)
       (= I H)
       (= B true)
       (not G)
       (= F true)
       (= B (= A 1))))
      )
      (main@.preheader I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@.preheader A)
        (and (not B) (= B (not (<= A (- 1)))))
      )
      main@.preheader.split
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph A E)
        (and (= C (+ (- 1) A)) (= D C) (= B true) (= B (not (<= A E))))
      )
      (main@.lr.ph D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph A B)
        (and (= D (+ (- 1) A)) (= E D) (not C) (= C (not (<= A B))))
      )
      (main@.preheader E)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@.preheader.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
