(set-logic HORN)

(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |main@precall.loopexit| ( Bool ) Bool)
(declare-fun |main@postcall| ( Bool Int Bool Int Bool Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@precall| ( Bool ) Bool)

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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= F E)
     (= H E)
     (= A B)
     (= D (ite E K 0))
     (= G K)
     (= I K)
     (= L D)
     (= M D)
     (= C true)
     (= J true)
     (= E (not (<= K 0))))
      )
      (main@postcall F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= C (ite D E 0)) (not F) (not G) (= D (not (<= E 0))))
      )
      (main@precall G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@precall.loopexit A)
        (and (= C B) (= B (not A)))
      )
      (main@precall C)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@precall A)
        (= A true)
      )
      main@precall.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Int) (U Bool) (V Int) (W Bool) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) ) 
    (=>
      (and
        (main@postcall A B D E G Z J L)
        (and (= N (= Q O))
     (= P (not (<= S 0)))
     (= R (not (<= T 0)))
     (= U P)
     (= W R)
     (= Y N)
     (= C (ite A (- 1) 0))
     (= F (ite D (- 1) 0))
     (= I (ite R Z 0))
     (= K (ite P Z 0))
     (= O (+ K L))
     (= T (+ E F))
     (= Q (+ I J))
     (= S (+ B C))
     (= V S)
     (= X T)
     (= A1 Q)
     (= B1 O)
     (not H)
     (= M true)
     (= H (not G)))
      )
      (main@postcall U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) ) 
    (=>
      (and
        (main@postcall A B D E G O L Q)
        (and (= J (not (<= I 0)))
     (= N (not (<= M 0)))
     (= U (= R S))
     (= F (ite D (- 1) 0))
     (= K (ite J O 0))
     (= C (ite A (- 1) 0))
     (= M (+ B C))
     (= R (+ K L))
     (= P (ite N O 0))
     (= I (+ E F))
     (= S (+ P Q))
     (not H)
     (not T)
     (= H (not G)))
      )
      (main@precall.loopexit U)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@precall.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
