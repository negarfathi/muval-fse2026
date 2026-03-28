(set-logic HORN)

(declare-fun |main@empty.loop.body| ( Int Int Int Int ) Bool)
(declare-fun |main@_5| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@.preheader1.lr.ph| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split.preheader| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit3.preheader| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader2| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.preheader4| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_8| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit3| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split.split| ( ) Bool)
(declare-fun |main@.preheader1.us7| ( Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry D F)
        (and (= C (= G 0)) (= B F) (= A true) (not C) (= A (= E 1)))
      )
      (main@empty.loop D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_5 C D E F G)
        (and (= A (not (<= C 0))) (= B true) (= A true) (= B (not (<= E C))))
      )
      (main@_8 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_5 D A E F G)
        (and (= C (not (<= E D))) (= B true) (not C) (= B (not (<= D 0))))
      )
      (main@.loopexit D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_8 D E F G H)
        (and (= A H) (= C true) (= C (= B 0)))
      )
      (main@.loopexit3.preheader D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_8 D E F G I)
        (and (= A I) (= H E) (not C) (= C (= B 0)))
      )
      (main@.preheader4 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader4 D E F G B H)
        (and (= A (+ 1 B)) (= C true) (= C (not (<= B F))))
      )
      (main@.preheader2 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader4 D E F G A I)
        (and (= C (+ 1 A)) (= H C) (not B) (= B (not (<= A F))))
      )
      (main@.preheader4 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader2 B C D E F)
        (and (= A true) (= A (not (<= C D))))
      )
      (main@.loopexit3.preheader B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader2 B C D E F)
        (and (not A) (= A (not (<= C D))))
      )
      (main@.preheader1.lr.ph B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader1.lr.ph C G H B A)
        (and (= D (not (<= B C)))
     (= E (not (<= C H)))
     (= I G)
     (= F true)
     (= F (or E D)))
      )
      (main@.preheader1.us7 H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader1.lr.ph D E F H I)
        (and (= B (not (<= D F))) (= C (or B A)) (= G E) (not C) (= A (not (<= H D))))
      )
      (main@.preheader1 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@.preheader1.us7 A C)
        (and (= B (+ 1 C)) (= D true) (= D (not (<= C A))))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader1.us7 D A)
        (and (= C (+ 1 A)) (= E C) (not B) (= B (not (<= A D))))
      )
      (main@.preheader1.us7 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader1 A B C D F G)
        (= E B)
      )
      (main@_19 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_19 D E F G B H I)
        (and (= A (+ 1 B)) (= C true) (= C (not (<= B F))))
      )
      (main@.lr.ph.split.preheader D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_19 D E F G A I J)
        (and (= C (+ 1 A)) (= H C) (not B) (= B (not (<= A F))))
      )
      (main@_19 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.split.preheader D E F A H I)
        (and (= C (+ 1 A)) (= G C) (= B true) (= B (not (<= F A))))
      )
      (main@.preheader1 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph.split.preheader D E F B G H)
        (and (= A (+ 1 B)) (not C) (= C (not (<= F B))))
      )
      (main@.loopexit3.preheader D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.loopexit3.preheader B A D E F)
        (= C A)
      )
      (main@.loopexit3 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.loopexit3 D B E F G)
        (and (= A (+ 1 B)) (= C true) (= C (not (<= B E))))
      )
      (main@.loopexit D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.loopexit3 D A F G H)
        (and (= C (+ 1 A)) (= E C) (not B) (= B (not (<= A F))))
      )
      (main@.loopexit3 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.loopexit A E F G)
        (and (= D A) (= C B) (= B (+ (- 1) A)))
      )
      (main@_5 C D E F G)
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
      main@verifier.error.split.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop B C D E)
        (= A true)
      )
      (main@empty.loop.body B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@empty.loop E F G B)
        (and (= C E) (not A) (= D B))
      )
      (main@_5 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D)
        true
      )
      (main@empty.loop A B C D)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
