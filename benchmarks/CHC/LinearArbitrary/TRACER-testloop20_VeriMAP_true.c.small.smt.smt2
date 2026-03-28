(set-logic HORN)

(declare-fun |main@empty.loop| ( Int Bool Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@LeafBlock| ( Int Bool Bool Int Int Bool Bool Int ) Bool)
(declare-fun |main@NodeBlock.i| ( Int Bool Bool Int Int Bool Bool Int ) Bool)
(declare-fun |main@LeafBlock.i| ( Int Bool Bool Int Int Bool Bool Int ) Bool)
(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |main@NodeBlock6.i| ( Int Bool Bool Int Int Bool Bool Int ) Bool)
(declare-fun |main@NodeBlock6.i.backedge| ( Int Bool Bool Int Int Bool Bool Int ) Bool)
(declare-fun |main@precall| ( Bool ) Bool)
(declare-fun |main@NewDefault| ( Int Bool Bool Int Int Bool Bool Int ) Bool)
(declare-fun |main@_5| ( Int Int Bool Int ) Bool)
(declare-fun |main@NodeBlock6.i.outer.outer.backedge| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@NodeBlock6.i.outer| ( Int Bool Int Int Bool Int ) Bool)
(declare-fun |main@postcall| ( Int Bool Int Bool Int ) Bool)
(declare-fun |main@NodeBlock| ( Int Bool Bool Int Int Bool Bool Int ) Bool)
(declare-fun |main@_9| ( Int Bool Int Bool Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Bool Int ) Bool)
(declare-fun |main@_7| ( Int Int Bool Int ) Bool)
(declare-fun |main@NodeBlock6.i.outer.outer| ( Int Int Int Bool Int ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        main@entry
        (and (= B (= F 2)) (= E (= C 0)) (= A true) (= B true) (= A (= D 4)))
      )
      (main@empty.loop D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@NodeBlock6.i.outer.outer A B E F G)
        (and (= D A) (= C (= B 3)))
      )
      (main@NodeBlock6.i.outer B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@NodeBlock6.i.outer A C D E F H)
        (and (= G (not (<= 3 D))) (= B (= D H)))
      )
      (main@NodeBlock6.i A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@NodeBlock6.i A B C D E F G H)
        (and (= G true) (not F))
      )
      (main@LeafBlock.i A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@NodeBlock6.i A B C D E F G H)
        (and (not G) (not F))
      )
      (main@NodeBlock.i A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@NodeBlock.i A B C D E F G H)
        true
      )
      (main@NodeBlock A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@NodeBlock F A B D G H C I)
        (and (= E true) (= E (not (<= G D))))
      )
      (main@_7 F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Bool) (I Int) ) 
    (=>
      (and
        (main@NodeBlock B C D E F G H I)
        (and (not A) (= A (not (<= F E))))
      )
      (main@LeafBlock B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@LeafBlock E A F C G H B I)
        (and (= D true) (= D (= C 4)))
      )
      (main@_9 E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Bool) (I Int) ) 
    (=>
      (and
        (main@LeafBlock B C D E F G H I)
        (and (not A) (= A (= E 4)))
      )
      (main@NewDefault B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@NewDefault A B C D E F G H)
        true
      )
      (main@NodeBlock6.i.backedge A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@NodeBlock6.i.backedge A B C D E F G H)
        true
      )
      (main@NodeBlock6.i A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@LeafBlock.i E D A B F G C H)
        (= D true)
      )
      (main@_5 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@LeafBlock.i A B C D E F G H)
        (not B)
      )
      (main@NodeBlock6.i.backedge A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_5 B F G H)
        (and (= D 3) (= E C) (= C (ite A 1 B)) (= A (= B 0)))
      )
      (main@NodeBlock6.i.outer.outer.backedge D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_7 B F G H)
        (and (= D 4) (= E C) (= C (ite A 2 B)) (= A (= B 1)))
      )
      (main@NodeBlock6.i.outer.outer.backedge D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@NodeBlock6.i.outer.outer.backedge A B E F G)
        (and (= D B) (= C A))
      )
      (main@NodeBlock6.i.outer.outer C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@_9 B C D E F)
        (= A true)
      )
      (main@postcall B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@_9 A F B C D)
        (not E)
      )
      (main@precall F)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@postcall A B D E F)
        (and (not B) (= C 5))
      )
      (main@NodeBlock6.i.outer A B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@empty.loop B C D)
        (= A true)
      )
      (main@empty.loop.body B C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@empty.loop D E F)
        (and (= C 0) (not A) (= B 2))
      )
      (main@NodeBlock6.i.outer.outer B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C)
        true
      )
      (main@empty.loop A B C)
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
