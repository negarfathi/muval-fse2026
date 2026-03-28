(set-logic HORN)

(declare-fun |main@._crit_edge17| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split.us| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph16| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_46| ( Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph10| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge11| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@entry O R A J B)
        (and (= D (= Q 0))
     (= F (= E 0))
     (= H (= G 0))
     (= L (= K 0))
     (= I J)
     (= M 0)
     (= N 0)
     (= C true)
     (= D true)
     (= F true)
     (= H true)
     (= L true)
     (= C (= P 0)))
      )
      (main@.preheader M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@entry H K M N Q)
        (and (= B (= J 0))
     (= G (= F 0))
     (= C (= R 0))
     (= D (= O 0))
     (= L 0)
     (= E N)
     (= P 0)
     (= A true)
     (= B true)
     (not G)
     (= C true)
     (= D true)
     (= A (= I 0)))
      )
      (main@.preheader1 H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.preheader1 B C D E F G H I J K L)
        (and (= M 0) (= N F) (= A true) (= A (not (<= J F))))
      )
      (main@.lr.ph10 B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.preheader1 C D E F G H I J A K L)
        (and (= M 0) (not B) (= B (not (<= A G))))
      )
      (main@._crit_edge11 C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.preheader J K E A B C)
        (and (= D E) (= H 0) (= I 0) (= G true) (= G (= F 0)))
      )
      (main@._crit_edge H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader D E F G H I)
        (and (= A F) (not C) (= C (= B 0)))
      )
      (main@.lr.ph D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph D E J K A B)
        (and (= F 0) (= G 0) (= H 0) (= I 0) (= C true) (= C (= B 0)))
      )
      (main@.lr.ph.split.us D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph D E F A I B)
        (and (= G 0) (= H 0) (not C) (= C (= B 0)))
      )
      (main@.lr.ph.split D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph.split.us P Q A B D E H J)
        (and (= C (+ 1 B))
     (= G H)
     (= F (+ 1 A))
     (= L (+ C D))
     (= M (+ E F))
     (= N M)
     (= O L)
     (= K true)
     (= K (= I J)))
      )
      (main@._crit_edge N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph.split.us L M A B C D R S)
        (and (= E R)
     (= I (+ D K))
     (= H (+ 1 B))
     (= J (+ H C))
     (= K (+ 1 A))
     (= N K)
     (= O H)
     (= P J)
     (= Q I)
     (not G)
     (= G (= F S)))
      )
      (main@.lr.ph.split.us L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph10 F G H I J K L M N O P A B)
        (and (= D (+ 1 B))
     (= E (+ 1 A))
     (= Q E)
     (= R D)
     (= C true)
     (= C (not (<= N D))))
      )
      (main@.lr.ph10 F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph10 G H I J K L M N D O P A B)
        (and (= C (+ 1 B)) (= F (+ 1 A)) (= Q F) (not E) (= E (not (<= D C))))
      )
      (main@._crit_edge11 G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@._crit_edge11 K L M N O R S T U V B)
        (and (= H (= G 0))
     (= A (mod O 2))
     (= C (ite D (- 1) 0))
     (= J (+ O E))
     (= P J)
     (= E (ite D 1 0))
     (= F U)
     (= I (+ B C))
     (= Q I)
     (= H true)
     (= D (= A 1)))
      )
      (main@._crit_edge17 K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@._crit_edge11 K L M N O P Q R U V B)
        (and (= H (= G 0))
     (= A (mod O 2))
     (= C (ite D (- 1) 0))
     (= J (+ B C))
     (= E (ite D 1 0))
     (= F U)
     (= I (+ O E))
     (= S I)
     (= T J)
     (not H)
     (= D (= A 1)))
      )
      (main@.lr.ph16 K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph16 L M N O P S T U F C V W)
        (and (= I (= H W))
     (= A (mod F 2))
     (= E (ite D 2 (- 1)))
     (= K (+ E F))
     (= Q K)
     (= G V)
     (= J (+ B C))
     (= R J)
     (or (not (= F 0)) (= B (- 2)))
     (= I true)
     (= D (= A 0)))
      )
      (main@._crit_edge17 L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph16 L M N O P Q R S F C V W)
        (and (= I (= H W))
     (= A (mod F 2))
     (= E (ite D 2 (- 1)))
     (= K (+ B C))
     (= G V)
     (= J (+ E F))
     (= T J)
     (= U K)
     (or (not (= F 0)) (= B (- 2)))
     (not I)
     (= D (= A 0)))
      )
      (main@.lr.ph16 L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        (main@._crit_edge17 U V W X C D E G M O A B)
        (and (= I (= H 0))
     (= F G)
     (= J (+ D E))
     (= L M)
     (= R (+ 1 C))
     (= K (ite I 1 2))
     (= Q (+ J K))
     (= S Q)
     (= T R)
     (= P true)
     (= P (= N O)))
      )
      (main@.preheader S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        (main@._crit_edge17 N O P Q A B C S T U W X)
        (and (= K (= J U))
     (= D S)
     (= I T)
     (= L (+ 1 A))
     (= R L)
     (= G (+ B C))
     (= H (ite F 1 2))
     (= M (+ G H))
     (= V M)
     (not K)
     (= F (= E 0)))
      )
      (main@.preheader1 N O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph.split L M D A B F)
        (and (= C D)
     (= H (+ 1 A))
     (= I (+ 1 B))
     (= J I)
     (= K H)
     (= G true)
     (= G (= E F)))
      )
      (main@._crit_edge J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph.split H I J A B M)
        (and (= C J) (= G (+ 1 A)) (= F (+ 1 B)) (= K G) (= L F) (not E) (= E (= D M)))
      )
      (main@.lr.ph.split H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@._crit_edge A B C D)
        (and (= E true) (= E (not (<= D C))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge D E A B)
        (and (not C) (= C (not (<= B A))))
      )
      (main@_46 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_46 A B)
        (and (not C) (= C (= A B)))
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
