(set-logic HORN)

(declare-fun |main@postcall.preheader| ( Int Int ) Bool)
(declare-fun |main@assert.split| ( ) Bool)
(declare-fun |main@assert| ( Bool ) Bool)
(declare-fun |main@postcall| ( Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@postcall1| ( Int Int Bool Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= D true) (= E true) (= D (not (<= F 0))))
      )
      (main@postcall.preheader F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (not F) (= G true) (= E true) (= E (not (<= D 0))))
      )
      (main@assert G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@postcall.preheader G H)
        (and (= F H) (= B H) (= C H) (= A true) (= D true) (= E 0))
      )
      (main@postcall1 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@postcall.preheader A B)
        (and (= D true) (not C))
      )
      (main@assert D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@postcall A C D E K J Q R)
        (and (= G (= I H))
     (= N G)
     (= H (+ E K))
     (= I (+ C D))
     (= O J)
     (= P K)
     (= L I)
     (= M H)
     (not B)
     (= F true)
     (= B (not A)))
      )
      (main@postcall1 L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) ) 
    (=>
      (and
        (main@postcall D F G H I A B C)
        (and (= M (= J K))
     (= N M)
     (= K (+ H I))
     (= J (+ F G))
     (not E)
     (not L)
     (= E (not D)))
      )
      (main@assert N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@postcall1 J K A D C N O)
        (and (= E (not (<= N M)))
     (= H (= I L))
     (= F (* 5 M))
     (= L (+ 5 C))
     (= M (+ 1 D))
     (= I (+ F O))
     (not B)
     (= G true)
     (= E true)
     (= B (not A)))
      )
      (main@postcall H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) ) 
    (=>
      (and
        (main@postcall1 A B C F E G K)
        (and (= D (not C))
     (= O (= L M))
     (= P O)
     (= I (+ 1 F))
     (= M (+ 5 E))
     (= J (* 5 I))
     (= L (+ J K))
     (= H true)
     (not D)
     (not N)
     (= H (not (<= G I))))
      )
      (main@assert P)
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
