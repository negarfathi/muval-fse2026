(set-logic HORN)

(declare-fun |main@NodeBlock6.i.backedge| ( Int Bool Bool Int Int Bool Int ) Bool)
(declare-fun |main@NodeBlock.i| ( Int Bool Bool Int Int Bool Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |main@_7| ( Int Int Int ) Bool)
(declare-fun |main@NodeBlock| ( Int Bool Bool Int Int Bool Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int ) Bool)
(declare-fun |main@NodeBlock6.i.outer.outer| ( Int Int Int Int ) Bool)
(declare-fun |main@precall| ( Bool ) Bool)
(declare-fun |main@NodeBlock6.i.outer| ( Int Bool Int Int Int ) Bool)
(declare-fun |main@NodeBlock6.i.outer.outer.backedge| ( Int Int Int Int ) Bool)
(declare-fun |main@_5| ( Int Int Int ) Bool)
(declare-fun |main@LeafBlock.i| ( Int Bool Bool Int Int Bool Int ) Bool)
(declare-fun |main@NodeBlock6.i| ( Int Bool Bool Int Int Bool Int ) Bool)
(declare-fun |main@postcall| ( Int Bool Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int ) Bool)
(declare-fun |main@_9| ( Int Bool Int Int ) Bool)
(declare-fun |main@LeafBlock| ( Int Bool Bool Int Int Bool Int ) Bool)
(declare-fun |main@NewDefault| ( Int Bool Bool Int Int Bool Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        main@entry
        (and (= B (= D 2)) (= A true) (= B true) (= A (= C 4)))
      )
      (main@empty.loop C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@NodeBlock6.i.outer.outer A B E F)
        (and (= D A) (= C (= B 3)))
      )
      (main@NodeBlock6.i.outer B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@NodeBlock6.i.outer A C D E G)
        (and (= F (not (<= 3 D))) (= B (= D G)))
      )
      (main@NodeBlock6.i A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@NodeBlock6.i C D E F G H I)
        (and (not B) (= H true) (= B (= A 0)))
      )
      (main@LeafBlock.i C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@NodeBlock6.i C D E F G H I)
        (and (not B) (not H) (= B (= A 0)))
      )
      (main@NodeBlock.i C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@NodeBlock.i A B C D E F G)
        true
      )
      (main@NodeBlock A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@NodeBlock F A B D G C H)
        (and (= E true) (= E (not (<= G D))))
      )
      (main@_7 F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@NodeBlock B C D E F G H)
        (and (not A) (= A (not (<= F E))))
      )
      (main@LeafBlock B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@LeafBlock E A F C G B H)
        (and (= D true) (= D (= C 4)))
      )
      (main@_9 E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@LeafBlock B C D E F G H)
        (and (not A) (= A (= E 4)))
      )
      (main@NewDefault B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@NewDefault A B C D E F G)
        true
      )
      (main@NodeBlock6.i.backedge A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@NodeBlock6.i.backedge A B C D E F G)
        true
      )
      (main@NodeBlock6.i A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@LeafBlock.i E D A B F C G)
        (= D true)
      )
      (main@_5 E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@LeafBlock.i A B C D E F G)
        (not B)
      )
      (main@NodeBlock6.i.backedge A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_5 B F G)
        (and (= D 3) (= C (ite A 1 B)) (= E C) (= A (= B 0)))
      )
      (main@NodeBlock6.i.outer.outer.backedge D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_7 B F G)
        (and (= D 4) (= C (ite A 2 B)) (= E C) (= A (= B 1)))
      )
      (main@NodeBlock6.i.outer.outer.backedge D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@NodeBlock6.i.outer.outer.backedge A B E F)
        (and (= D B) (= C A))
      )
      (main@NodeBlock6.i.outer.outer C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@_9 B C D E)
        (= A true)
      )
      (main@postcall B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_9 A E B C)
        (not D)
      )
      (main@precall E)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@postcall A B D E)
        (and (not B) (= C 5))
      )
      (main@NodeBlock6.i.outer A B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@empty.loop B C)
        (= A true)
      )
      (main@empty.loop.body B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop D E)
        (and (= C 0) (not A) (= B 2))
      )
      (main@NodeBlock6.i.outer.outer B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (main@empty.loop.body A B)
        true
      )
      (main@empty.loop A B)
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
