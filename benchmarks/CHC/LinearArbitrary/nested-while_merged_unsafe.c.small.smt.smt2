(set-logic HORN)

(declare-fun |main@.preheader| ( Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph12| ( Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int ) Bool)
(declare-fun |main@.loopexit1| ( Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph8| ( Int Int Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph18| ( Bool Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= G E) (= H 0) (= I F) (= D true) (= D (not (<= E 0))))
      )
      (main@.lr.ph18 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= G F) (= H F) (not E) (= E (not (<= D 0))))
      )
      (main@orig.main.exit G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.loopexit1 D E F G C B)
        (and (= H B) (= I C) (= J D) (= A true) (= A (not (<= B C))))
      )
      (main@.lr.ph18 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@.loopexit1 D E F G A B)
        (and (not C) (= C (not (<= B A))))
      )
      (main@.preheader D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader G A B C)
        (and (= E B) (= F C) (= A true) (= D 0))
      )
      (main@.lr.ph8 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader C B A D)
        (and (= F D) (not B) (= E C))
      )
      (main@orig.main.exit E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph18 G H I E B A)
        (and (= F D)
     (= D (+ (- 1) A))
     (= J (+ 1 B))
     (= K E)
     (= C true)
     (= C (not (<= E B))))
      )
      (main@.loopexit1 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph18 E F G C I A)
        (and (= D (+ (- 1) A))
     (= H (+ 1 I))
     (= J C)
     (= K D)
     (not B)
     (= B (not (<= C I))))
      )
      (main@.lr.ph12 E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph12 F G H I J B A)
        (and (= D (+ 1 B))
     (= E (+ 1 A))
     (= K D)
     (= L E)
     (= C true)
     (= C (not (<= J B))))
      )
      (main@.lr.ph12 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph12 H I J K C B A)
        (and (= G E) (= E (+ 1 A)) (= F (+ 1 B)) (= L F) (not D) (= D (not (<= C B))))
      )
      (main@.loopexit1 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.loopexit B C D H)
        (and (= E B) (= F C) (= G D) (= A true) (= A (not (<= C B))))
      )
      (main@.lr.ph8 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.loopexit A B E D)
        (and (= F D) (= G E) (not C) (= C (not (<= B A))))
      )
      (main@orig.main.exit F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph8 B E A I)
        (and (= D (+ (- 2) A))
     (= F (+ 1 B))
     (= G E)
     (= H D)
     (= C true)
     (= C (not (<= E B))))
      )
      (main@.loopexit F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph8 F C A G)
        (and (= D (+ (- 2) A))
     (= E (+ 1 F))
     (= H C)
     (= I D)
     (not B)
     (= B (not (<= C F))))
      )
      (main@.lr.ph E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph F G H B A)
        (and (= E (+ 2 A))
     (= D (+ 1 B))
     (= I D)
     (= J E)
     (= C true)
     (= C (not (<= G B))))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph G C J B A)
        (and (= E (+ 2 A)) (= F (+ 1 B)) (= H F) (= I E) (not D) (= D (not (<= C B))))
      )
      (main@.loopexit G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B)
        (and (not C) (= D true) (= D (not (= A B))))
      )
      main@orig.main.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@orig.main.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
