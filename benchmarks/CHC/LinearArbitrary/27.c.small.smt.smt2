(set-logic HORN)

(declare-fun |main@_6| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_11| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry F H L)
        (and (= B (= G 0))
     (= C (= I 0))
     (= D (= M 0))
     (= A true)
     (= B true)
     (= C true)
     (= D true)
     (= A (= E 1)))
      )
      (main@empty.loop E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_6 G H I J K L M N B D)
        (and (= A B) (= E (+ 1 L)) (= F true) (= F (= C D)))
      )
      (main@_11 G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_6 F G H I J C L M N O)
        (and (= A N) (= E (+ 1 C)) (= K E) (not D) (= D (= B O)))
      )
      (main@_6 F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_11 M N O I A C B D)
        (and (= E (<= C B))
     (= F (not (<= C D)))
     (= G (and F E))
     (= H I)
     (= L (- 1))
     (= P 0)
     (= K true)
     (not G)
     (= K (= J 0)))
      )
      (main@.preheader1 L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_11 J K L O P B A C)
        (and (= D (<= B A))
     (= E (not (<= B C)))
     (= F (and E D))
     (= G O)
     (= M 0)
     (= N 0)
     (not I)
     (not F)
     (= I (= H 0)))
      )
      (main@.lr.ph J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader1 A B C D E)
        true
      )
      (main@_22 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph K L M I B D F)
        (and (= A (+ 1 I))
     (= C D)
     (= H (+ 1 B))
     (= J I)
     (= N H)
     (= G true)
     (= G (= E F)))
      )
      (main@.preheader1 J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph H I J A B M N)
        (and (= C M) (= F (+ 1 A)) (= G (+ 1 B)) (= K F) (= L G) (not E) (= E (= D N)))
      )
      (main@.lr.ph H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_22 I J B D F)
        (and (= A B) (= G F) (= H 0) (= E true) (= E (= C D)))
      )
      (main@.preheader G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_22 D E F G H)
        (and (= A F) (not C) (= C (= B G)))
      )
      (main@_22 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.preheader F C D G)
        (and (= H (not (<= G F)))
     (= A (+ (- 1) F))
     (= B (+ 1 C))
     (= E true)
     (= H true)
     (= E (not (<= D C))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader C A I J)
        (and (= B (not (<= I A)))
     (= E (+ (- 1) C))
     (= F (+ 1 A))
     (= G E)
     (= H F)
     (not D)
     (= B true)
     (= D (not (<= J C))))
      )
      (main@.preheader G H I J)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G H I J)
        (= A true)
      )
      (main@empty.loop.body B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F H I J K)
        (and (not A) (= G 0))
      )
      (main@_6 B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F G H I)
        true
      )
      (main@empty.loop A B C D E F G H I)
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
