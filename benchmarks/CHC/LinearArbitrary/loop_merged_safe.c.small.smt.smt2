(set-logic HORN)

(declare-fun |main@postcall| ( Int Int Bool Int Int ) Bool)
(declare-fun |main@assert.split| ( ) Bool)
(declare-fun |main@assert| ( Bool ) Bool)
(declare-fun |main@.lr.ph10| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@.lr.ph10.preheader| ( Int Int ) Bool)
(declare-fun |main@postcall1| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (not (<= 0 E)))
     (= C D)
     (= G 0)
     (= H 0)
     (= B true)
     (= F true)
     (= B (= A 0)))
      )
      (main@orig.main.exit G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= 0 E))) (= B C) (= A true) (not D) (= A (= F 0)))
      )
      (main@.lr.ph10.preheader E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph10.preheader E F)
        (and (= C 0) (= A true) (= D true) (= B 0))
      )
      (main@postcall B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@.lr.ph10.preheader A B)
        (and (= D true) (not C))
      )
      (main@assert D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@.preheader B C D)
        (and (= A true) (= A (not (<= C (- 1)))))
      )
      (main@.lr.ph.preheader B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader D B A)
        (and (= E D) (= F 0) (not C) (= C (not (<= B (- 1)))))
      )
      (main@orig.main.exit E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader B E G)
        (and (= D 0) (= F true) (= A true) (= C E))
      )
      (main@postcall1 B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@.lr.ph.preheader A B C)
        (and (= E true) (not D))
      )
      (main@assert E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph10 A B E J K)
        (and (= I D) (= F (+ 1 A)) (= G F) (= H E) (= C true) (= D (= A B)))
      )
      (main@postcall G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@.lr.ph10 E F A B C)
        (and (= I H) (= D (+ 1 E)) (not G) (= H (= E F)))
      )
      (main@assert I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@postcall D E A G H)
        (and (= B (not A)) (= F (+ 1 E)) (= C true) (not B) (= C (not (<= G D))))
      )
      (main@.lr.ph10 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@postcall D A B G H)
        (and (= C (not B)) (= F (+ 1 A)) (not E) (not C) (= E (not (<= G D))))
      )
      (main@.preheader F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@.lr.ph H B A K G M)
        (and (= L E)
     (= C (+ A B))
     (= F (+ (- 1) B))
     (= I F)
     (= J G)
     (= D true)
     (= E (= C K)))
      )
      (main@postcall1 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (main@.lr.ph A F E H B C)
        (and (= K J) (= D (+ (- 1) F)) (= G (+ E F)) (not I) (= J (= G H)))
      )
      (main@assert K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@postcall1 D E F G A I)
        (and (= C (not (<= E I))) (= H (+ 1 F)) (not B) (= C true) (= B (not A)))
      )
      (main@.lr.ph D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@postcall1 H E B A C F)
        (and (= D (not C))
     (= I (+ 1 B))
     (= J H)
     (= K I)
     (not G)
     (not D)
     (= G (not (<= E F))))
      )
      (main@orig.main.exit J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B)
        (and (= E D) (not C) (= D (= A B)))
      )
      (main@assert E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@assert A)
        (and (= B true) (= B (not A)))
      )
      main@assert.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@assert.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
