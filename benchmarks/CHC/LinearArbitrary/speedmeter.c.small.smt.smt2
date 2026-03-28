(set-logic HORN)

(declare-fun |main@entry.split| ( Bool ) Bool)
(declare-fun |main@entry.split.us| ( Int Int Int ) Bool)
(declare-fun |main@entry.split.preheader| ( Int Int ) Bool)
(declare-fun |main@entry.split.us.split.preheader| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry.split.us.split| ( Bool ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@entry.split.us.split.us| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry G)
        (let ((a!1 (= H (and (not (<= 10 K)) (>= K 0)))))
  (and (= C (= B 0))
       a!1
       (= J (= I 0))
       (= D G)
       (= E G)
       (= F G)
       (= A true)
       (= C true)
       (= H true)
       (= J true)
       (= A (= L 0))))
      )
      (main@entry.split.us K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry G)
        (let ((a!1 (= H (and (not (<= 10 K)) (>= K 0)))))
  (and a!1
       (= J (= I 0))
       (= B (= A 0))
       (= D G)
       (= E G)
       (= F G)
       (= C true)
       (= H true)
       (not J)
       (= B true)
       (= C (= L 0))))
      )
      (main@entry.split.preheader K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@entry.split.preheader A B)
        (= C (not (<= B A)))
      )
      (main@entry.split C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@entry.split.us C D A)
        (and (= B true) (= B (= A 0)))
      )
      (main@entry.split.us.split.preheader C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry.split.us D A B)
        (and (= E 0) (= F 0) (not C) (= C (= B 0)))
      )
      (main@entry.split.us.split.us D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@entry.split.us.split.preheader A B)
        (= C (not (<= B A)))
      )
      (main@entry.split.us.split C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@entry.split.us.split.us E G F)
        (and (= A (not (<= E G)))
     (= H (not (= F G)))
     (= J (or H I))
     (= B (+ F C))
     (= C (ite A 1 0))
     (= D (+ G C))
     (= J true)
     (= I (not (<= D E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry.split.us.split.us J D C)
        (and (= E (not (= C D)))
     (= F (not (<= I J)))
     (= G (or F E))
     (= B (ite A 1 0))
     (= I (+ D B))
     (= H (+ C B))
     (= K I)
     (= L H)
     (not G)
     (= A (not (<= J D))))
      )
      (main@entry.split.us.split.us J K L)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@entry.split.us.split A)
        (= A true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@entry.split.us.split A)
        (not A)
      )
      (main@entry.split.us.split A)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@entry.split A)
        (= A true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@entry.split A)
        (not A)
      )
      (main@entry.split A)
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
