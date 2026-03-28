(set-logic HORN)

(declare-fun |main@_20| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int Int Bool Bool Bool Bool ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int Int Bool Bool Bool Bool Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Bool Bool Bool Bool ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Bool) (U Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (= M O))
     (= G (= N O))
     (= H (or F E))
     (= I (or H G))
     (= J (not (<= O M)))
     (= K (not (<= U N)))
     (= L (or R Q))
     (= Q (>= O P))
     (= R (or T S))
     (= S (>= N U))
     (= T (>= M O))
     (= A D)
     (= B D)
     (= C D)
     (= P (ite K U N))
     (= U (ite J O M))
     (not I)
     (= L true)
     (= E (= M N)))
      )
      (main@.lr.ph.preheader M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Bool) (T Bool) (U Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= P (>= M N))
     (= U (or T S))
     (= E (= L M))
     (= F (= L Q))
     (= G (= M Q))
     (= H (or F E))
     (= I (or H G))
     (= J (not (<= Q L)))
     (= K (not (<= N M)))
     (= S (or P O))
     (= T (>= Q R))
     (= R (ite K N M))
     (= A D)
     (= B D)
     (= C D)
     (= N (ite J Q L))
     (not U)
     (not I)
     (= O (>= L Q)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) ) 
    (=>
      (and
        (main@.lr.ph.preheader M N O G B C D E H)
        (and (= P B)
     (= Q C)
     (= R D)
     (= A (not (<= G O)))
     (= J F)
     (= K H)
     (= L G)
     (= F (ite A G O))
     (= I 0)
     (= S E))
      )
      (main@.lr.ph I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph F G H I J K L A B C D)
        (and (= E true) (= E (= F 0)))
      )
      (main@_20 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) ) 
    (=>
      (and
        (main@.lr.ph B C D E F G H I J K L)
        (and (not A) (= A (= B 0)))
      )
      (main@_19 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) ) 
    (=>
      (and
        (main@_19 A B C D E F G O N J I)
        (and (= M (and K J))
     (= R (or Q P))
     (= H (or J O))
     (= P (and O N))
     (= Q (or M L))
     (= K (or O I))
     (= R true)
     (= L (and I H)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@_19 L M N O P Q R H G C B)
        (and (= E (and A B))
     (= F (and D C))
     (= I (and H G))
     (= A (or H C))
     (= J (or F E))
     (= K (or J I))
     (not K)
     (= D (or H B)))
      )
      (main@_20 L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) (Y Bool) (Z Bool) (A1 Bool) ) 
    (=>
      (and
        (main@_20 A G C E U V W)
        (and (= D (not (<= O E)))
     (= F (not (<= N G)))
     (= H (or J I))
     (= A1 L)
     (= K (= N V))
     (= L (= O U))
     (= X I)
     (= Y J)
     (= Z K)
     (= I (= M W))
     (= J (or L K))
     (= M (ite F N G))
     (= R M)
     (= S O)
     (= T N)
     (= N (ite D O E))
     (= O (ite B G C))
     (= P (+ 1 A))
     (= Q P)
     (= H true)
     (= B (not (<= G C))))
      )
      (main@.lr.ph Q R S T U V W X Y Z A1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) ) 
    (=>
      (and
        (main@_20 B H D F J L P)
        (and (= N (= K L))
     (= S (or R Q))
     (= C (not (<= H D)))
     (= E (not (<= I F)))
     (= G (not (<= K H)))
     (= Q (or N M))
     (= R (= O P))
     (= O (ite G K H))
     (= A (+ 1 B))
     (= K (ite E I F))
     (= I (ite C H D))
     (not S)
     (= M (= I J)))
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
