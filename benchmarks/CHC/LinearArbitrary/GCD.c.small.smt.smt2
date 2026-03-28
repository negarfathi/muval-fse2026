(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@postcall| ( Int Int Bool Int Bool ) Bool)
(declare-fun |main@.lr.ph.i6.preheader| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@precall7| ( Int Int Int Int ) Bool)
(declare-fun |main@tailrecurse.i.preheader| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@_27| ( Int Int Int ) Bool)
(declare-fun |main@tailrecurse.i| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@precall5| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split| ( Int Int Int Int ) Bool)
(declare-fun |main@tailrecurse.i5.preheader| ( Int Int Int ) Bool)
(declare-fun |main@divides.exit| ( Bool ) Bool)
(declare-fun |main@.lr.ph.split.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@gcd.preheader| ( Int Bool Int Int Int ) Bool)
(declare-fun |main@tailrecurse.outer.i| ( Int Int Int Int ) Bool)
(declare-fun |main@gcd.exit| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph.i| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@tailrecurse.i5| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph.i6| ( Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Bool) (P Int) (Q Bool) ) 
    (=>
      (and
        main@entry
        (let ((a!1 (= H (and (not (<= 8 F)) (>= F 0))))
      (a!2 (= I (and (not (<= 8 G)) (>= G 0)))))
  (and (= C (= B 1))
       (= E (= D 1))
       a!1
       a!2
       (= J (and I H))
       (= K (not (<= 1 P)))
       (= O (or Q K))
       (= Q (not (<= 1 N)))
       (= F (+ (- 1) N))
       (= G (+ (- 1) P))
       (= A true)
       (= C true)
       (= E true)
       (= J true)
       (= L true)
       (= A (= M 0))))
      )
      (main@postcall M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Bool) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        main@entry
        (let ((a!1 (= G (and (not (<= 8 E)) (>= E 0))))
      (a!2 (= H (and (not (<= 8 F)) (>= F 0)))))
  (and (= D (= P 1))
       a!1
       (= N (or K J))
       (= C (= Q 1))
       a!2
       (= I (and H G))
       (= J (not (<= 1 M)))
       (= K (not (<= 1 O)))
       (= E (+ (- 1) M))
       (= F (+ (- 1) O))
       (= B true)
       (= D true)
       (= C true)
       (= I true)
       (not L)
       (= B (= A 0))))
      )
      (main@gcd.preheader M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@gcd.preheader A E B C D)
        (= E true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@gcd.preheader C A B E G)
        (and (= F B) (not A) (= D C))
      )
      (main@.lr.ph.split.preheader D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@postcall F G B C A)
        (and (= E G) (= D true) (not B) (= D (= G C)))
      )
      (main@gcd.exit E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@postcall E F A D C)
        (and (= B (= F D)) (= G F) (= I D) (not A) (not B) (= H C))
      )
      (main@.lr.ph.i E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.i D E F A C)
        (and (= G C) (= B true) (= B (not (<= F C))))
      )
      (main@tailrecurse.outer.i D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.i B C D E F)
        (and (not A) (= A (not (<= D F))))
      )
      (main@tailrecurse.i.preheader B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.i.preheader I J G B A)
        (and (= C (not (<= 1 E)))
     (= D (or C B))
     (= H G)
     (= E (+ A (* (- 1) G)))
     (= F true)
     (not D)
     (= F (= G E)))
      )
      (main@gcd.exit H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.i.preheader F G H I A)
        (and (= C (or B I))
     (= D (= H E))
     (= J E)
     (= E (+ A (* (- 1) H)))
     (not C)
     (not D)
     (= B (not (<= 1 E))))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph D E F A C)
        (and (= G C) (= B true) (= B (not (<= F C))))
      )
      (main@tailrecurse.outer.i D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.lr.ph B C D E F)
        (and (not A) (= A (not (<= D F))))
      )
      (main@tailrecurse.i B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.outer.i I J A G)
        (and (= B (not (<= 1 G)))
     (= C (not (<= 1 E)))
     (= D (or C B))
     (= H G)
     (= E (+ A (* (- 1) G)))
     (= F true)
     (not D)
     (= F (= E G)))
      )
      (main@gcd.exit H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@tailrecurse.outer.i H I A F)
        (and (= B (not (<= 1 F)))
     (= C (or E B))
     (= D (= G F))
     (= E (not (<= 1 G)))
     (= J G)
     (= L F)
     (= G (+ A (* (- 1) F)))
     (not C)
     (not D)
     (= K E))
      )
      (main@.lr.ph.i H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.i I J G B A)
        (and (= C (not (<= 1 E)))
     (= D (or C B))
     (= H G)
     (= E (+ A (* (- 1) G)))
     (= F true)
     (not D)
     (= F (= G E)))
      )
      (main@gcd.exit H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.i F G H I A)
        (and (= C (or B I))
     (= D (= H E))
     (= J E)
     (= E (+ A (* (- 1) H)))
     (not C)
     (not D)
     (= B (not (<= 1 E))))
      )
      (main@.lr.ph F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@gcd.exit B C D)
        (and (= A true) (= A (not (<= B 0))))
      )
      (main@_27 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@gcd.exit C A B)
        (and (not D) (= D (not (<= C 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@_27 A B C)
        (and (= D true) (= E true) (= D (= C 0)))
      )
      (main@divides.exit E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@_27 B C D)
        (and (not A) (= A (= D 0)))
      )
      (main@.lr.ph.i6.preheader B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@.lr.ph.i6.preheader C A B)
        (and (= D true) (not E) (= D (not (<= C B))))
      )
      (main@divides.exit E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@.lr.ph.i6.preheader B C D)
        (and (not A) (= A (not (<= B D))))
      )
      (main@tailrecurse.i5.preheader B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@tailrecurse.i5.preheader C A B)
        (and (= D (+ B (* (- 1) C))) (= E true) (= F true) (= E (= D 0)))
      )
      (main@divides.exit F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@tailrecurse.i5.preheader E F A)
        (and (= D C) (= C (+ A (* (- 1) E))) (not B) (= B (= C 0)))
      )
      (main@.lr.ph.i6 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@tailrecurse.i5 A B D)
        (and (= C (+ A (* (- 1) B))) (= E true) (= F true) (= E (= C D)))
      )
      (main@divides.exit F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@tailrecurse.i5 A E F)
        (and (= D C) (= C (+ A (* (- 1) E))) (not B) (= B (= C F)))
      )
      (main@.lr.ph.i6 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@.lr.ph.i6 B C A)
        (and (= D true) (not E) (= D (not (<= C B))))
      )
      (main@divides.exit E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@.lr.ph.i6 B C D)
        (and (not A) (= A (not (<= C B))))
      )
      (main@tailrecurse.i5 B C D)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@divides.exit A)
        (not A)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.split D F C G)
        (and (= B (not (<= D C))) (= E C) (not A) (= B true) (= A (= C D)))
      )
      (main@precall5 D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.split D E C G)
        (and (= B (not (<= D C))) (= F C) (not A) (not B) (= A (= C D)))
      )
      (main@precall7 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@precall5 B C F A)
        (and (= E (+ B (* (- 1) C))) (not D) (= G true) (= G (not (<= F E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@precall5 A D G I)
        (and (= E (+ A (* (- 1) D)))
     (= F E)
     (= H D)
     (not B)
     (not C)
     (= C (not (<= G E))))
      )
      (main@.lr.ph.split.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.split.preheader D F C G)
        (and (= B (not (<= D C))) (= E C) (not A) (= B true) (= A (= C D)))
      )
      (main@precall5 D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.split.preheader D E C G)
        (and (= B (not (<= D C))) (= F C) (not A) (not B) (= A (= C D)))
      )
      (main@precall7 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@precall7 C A B F)
        (and (= E (+ B (* (- 1) C))) (not D) (= G true) (= G (not (<= F E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@precall7 D E A G)
        (and (= F (+ A (* (- 1) D))) (not C) (not B) (= C (not (<= G F))))
      )
      (main@.lr.ph.split D E F G)
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
