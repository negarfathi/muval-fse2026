(set-logic HORN)

(declare-fun |main@.lr.ph7.i| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.i1| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.i1.preheader| ( Int Int Int ) Bool)
(declare-fun |main@g2.exit| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@g1.exit.thread| ( ) Bool)
(declare-fun |main@.lr.ph.i| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@g2.exit.split| ( ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= B (= I 1))
     (= C (= L 1))
     (= F (not (<= G 0)))
     (= D E)
     (= J 0)
     (= K G)
     (= A true)
     (= B true)
     (= C true)
     (= F true)
     (= A (= H 1)))
      )
      (main@.lr.ph7.i G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@entry H)
        (and (= F (= E 1))
     (= D (= C 1))
     (= J (not (<= I 0)))
     (= G H)
     (= B true)
     (= F true)
     (= D true)
     (not J)
     (= B (= A 1)))
      )
      main@g1.exit.thread
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph7.i F G H A B K)
        (and (= E (+ (- 1) B))
     (= D (+ A F))
     (= I D)
     (= J E)
     (= C true)
     (= C (not (<= B K))))
      )
      (main@.lr.ph7.i F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph7.i F G K A C D)
        (and (= B (+ (- 1) C))
     (= H 0)
     (= I (+ A F))
     (= J F)
     (not E)
     (= E (not (<= C D))))
      )
      (main@.lr.ph.i F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph.i F G A I B K)
        (and (= E (+ (- 1) B))
     (= D (+ A I))
     (= H D)
     (= J E)
     (= C true)
     (= C (not (<= B K))))
      )
      (main@.lr.ph.i F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.i G H A B D E)
        (and (= C (+ (- 1) D)) (= I (+ A B)) (not F) (= F (not (<= D E))))
      )
      (main@.lr.ph.i1.preheader G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        main@g1.exit.thread
        (and (= B 0) (= A 0))
      )
      (main@g2.exit A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph.i1.preheader B D E)
        (and (= C B) (= A 0))
      )
      (main@.lr.ph.i1 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph.i1 A G B I J)
        (and (= D (+ (- 1) B))
     (= E (+ A G))
     (= F E)
     (= H D)
     (= C true)
     (= C (not (<= B I))))
      )
      (main@.lr.ph.i1 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph.i1 A B D E G)
        (and (= C (+ (- 1) D))
     (= H (+ A B))
     (= I G)
     (= J H)
     (not F)
     (= F (not (<= D E))))
      )
      (main@g2.exit I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@g2.exit A B)
        (and (not C) (= D true) (= D (not (= A B))))
      )
      main@g2.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@g2.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
