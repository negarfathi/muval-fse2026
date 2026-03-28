(set-logic HORN)

(declare-fun |main@.lr.ph.i| ( Int Int Int Int ) Bool)
(declare-fun |main@f2.exit.split| ( ) Bool)
(declare-fun |main@.lr.ph.i1.preheader| ( Int Int ) Bool)
(declare-fun |main@.lr.ph.i1| ( Int Int Int Int Int ) Bool)
(declare-fun |main@f1.exit.thread| ( ) Bool)
(declare-fun |main@f2.exit| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= F 0) (= G 0) (= D true) (= D (not (<= E 0))))
      )
      (main@.lr.ph.i E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (not E) (= E (not (<= D 0))))
      )
      main@f1.exit.thread
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        main@f1.exit.thread
        (and (= B 0) (= A 0))
      )
      (main@f2.exit A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph.i H D A K)
        (and (= B (+ A K))
     (= C (* 5 D))
     (= G (+ 1 D))
     (= F (+ B C))
     (= I G)
     (= J F)
     (= E true)
     (= E (not (<= H G))))
      )
      (main@.lr.ph.i H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.i H E A B)
        (and (= C (+ A B))
     (= D (* 5 E))
     (= F (+ 1 E))
     (= I (+ C D))
     (not G)
     (= G (not (<= H F))))
      )
      (main@.lr.ph.i1.preheader H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph.i1.preheader D E)
        (and (= B 0) (= C 0) (= A 0))
      )
      (main@.lr.ph.i1 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph.i1 B A C K L)
        (and (= H F)
     (= E (+ B A))
     (= F (+ 5 B))
     (= G (+ 1 C))
     (= I E)
     (= J G)
     (= D true)
     (= D (not (<= K G))))
      )
      (main@.lr.ph.i1 H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph.i1 C A D F H)
        (and (= B (+ 5 C))
     (= E (+ 1 D))
     (= I (+ C A))
     (= J H)
     (= K I)
     (not G)
     (= G (not (<= F E))))
      )
      (main@f2.exit J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@f2.exit A B)
        (and (not C) (= D true) (= D (not (= A B))))
      )
      main@f2.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@f2.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
