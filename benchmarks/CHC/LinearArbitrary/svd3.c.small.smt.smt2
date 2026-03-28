(set-logic HORN)

(declare-fun |main@empty.loop.body| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_5| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@.preheader3| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_17| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_8| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit2.preheader| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@_20| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph7| ( Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit2| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry D G)
        (and (= B (= F 0)) (= C G) (= A true) (= B true) (= A (= E (- 1))))
      )
      (main@empty.loop D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_5 C D E F G H)
        (and (= B (not (<= E C))) (= A true) (= B true) (= A (not (<= C 0))))
      )
      (main@_8 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_5 D A E F G H)
        (and (= B (not (<= D 0))) (not C) (= B true) (= C (not (<= E D))))
      )
      (main@.loopexit D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_8 D E F G H I)
        (and (= A I) (= C true) (= C (= B 0)))
      )
      (main@.loopexit2.preheader D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_8 D E F G H I)
        (and (= A I) (not C) (= C (= B 0)))
      )
      (main@.preheader3 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader3 B C D E F G)
        (and (= A true) (= A (not (<= C D))))
      )
      (main@.loopexit2.preheader B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader3 A B C D F G)
        (and (not E) (= E (not (<= B C))))
      )
      (main@.lr.ph.preheader A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader B C D F G H I)
        (and (= E C) (= A true) (= A (not (<= C H))))
      )
      (main@.lr.ph7 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph.preheader A F B C D G E)
        (and (not H) (= H (not (<= F G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph7 B C D E F G H I)
        (and (= A true) (= A (not (<= D E))))
      )
      (main@.lr.ph B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph7 C D E A F G H I)
        (and (not B) (= B (not (<= E A))))
      )
      (main@.preheader1 C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader1 B C D E A F G)
        (= A true)
      )
      (main@.loopexit2.preheader B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader1 B C D E A G H)
        (and (not A) (= F C))
      )
      (main@.preheader B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph D E F A H I J K)
        (and (= C (+ 1 A)) (= G C) (= B true) (= B (not (<= A H))))
      )
      (main@.lr.ph7 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@.lr.ph A B C H I D E F)
        (and (= G (+ 1 H)) (not J) (= J (not (<= H I))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader A B C D E G H)
        (= F B)
      )
      (main@_17 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_17 D E F G H B I J)
        (and (= A (+ 1 B)) (= C true) (= C (not (<= B F))))
      )
      (main@_20 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_17 D E F G H A J K)
        (and (= C (+ 1 A)) (= I C) (not B) (= B (not (<= A F))))
      )
      (main@_17 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_20 D E F G A I J)
        (and (= C (+ 1 A)) (= H C) (= B true) (= B (not (<= F A))))
      )
      (main@.preheader D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_20 D E F G B H I)
        (and (= A (+ 1 B)) (not C) (= C (not (<= F B))))
      )
      (main@.loopexit2.preheader D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.loopexit2.preheader B A D E F G)
        (= C A)
      )
      (main@.loopexit2 B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.loopexit2 D B E F G H)
        (and (= A (+ 1 B)) (= C true) (= C (not (<= B E))))
      )
      (main@.loopexit D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.loopexit2 D A F G H I)
        (and (= C (+ 1 A)) (= E C) (not B) (= B (not (<= A F))))
      )
      (main@.loopexit2 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.loopexit A E F G H)
        (and (= C B) (= D A) (= B (+ (- 1) A)))
      )
      (main@_5 C D E F G H)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F)
        (= A true)
      )
      (main@empty.loop.body B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@empty.loop E F G H B)
        (and (= D B) (not A) (= C E))
      )
      (main@_5 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E)
        true
      )
      (main@empty.loop A B C D E)
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
