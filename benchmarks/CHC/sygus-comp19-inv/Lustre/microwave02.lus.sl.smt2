(set-logic HORN)

(declare-fun str_invariant
             (Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Int
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Bool
              Int
              Int
              Int
              Bool
              Bool
              Int
              Int
              Int
              Int)
             Bool)
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Bool)
         (F Bool)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Int)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool))
  (=> (and (str_invariant K1
                             J1
                             I1
                             H1
                             G1
                             F1
                             E1
                             D1
                             C1
                             B1
                             A1
                             Z
                             Y
                             X
                             W
                             V
                             U
                             T
                             S
                             R
                             Q
                             P
                             O
                             N
                             M
                             L
                             K
                             J
                             I
                             H
                             G
                             F
                             E
                             D
                             C
                             B
                             A)
              (not (= X true)))
         false)
    ))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Bool)
         (F Bool)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Bool)
         (L Bool)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Int)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Bool)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool))
  (let ((a!1 (- C (ite (= F true) (ite (= E true) 1 0) 0)))
           (a!2 (>= (ite (not (= J1 true)) 0 1) 0))
           (a!3 (ite (= M true) 7 (ite (= L true) 8 (ite (= K true) 9 10))))
           (a!8 (>= (ite (not (= Y true)) 0 1) 0))
           (a!9 (- 1 (ite (not (= J1 true)) 0 1)))
           (a!10 (>= (ite (not (= K1 true)) 0 1) 0))
           (a!11 (- 1 (ite (not (= Y true)) 0 1)))
           (a!12 (- 1 (ite (not (= K1 true)) 0 1)))
           (a!13 (- D (ite (= F true) (ite (= E true) 4 0) 0)))
           (a!14 (ite (and (= J true) (not (= U true)))
                      0
                      (+ (* 60 I) (* 10 H) G))))
     (let ((a!4 (ite (= P true) 4 (ite (= O true) 5 (ite (= N true) 6 a!3)))))
     (let ((a!5 (ite (= S true) 1 (ite (= R true) 2 (ite (= Q true) 3 a!4)))))
     (let ((a!6 (>= (- 9 (ite (= T true) 0 a!5)) 0)))
     (let ((a!7 (ite (= J1 true) 0 (ite a!6 (ite (= T true) 0 a!5) 0))))
     (let ((a!15 (and (or (= Z true) (not (= K true)))
                      (or (= A1 true) (not (= L true)))
                      (or (not (= Z true)) (= K true))
                      (or (= B1 true) (not (= M true)))
                      (or (not (= A1 true)) (= L true))
                      (or (= C1 true) (not (= N true)))
                      (or (not (= B1 true)) (= M true))
                      (or (= D1 true) (not (= O true)))
                      (or (not (= C1 true)) (= N true))
                      (or (= E1 true) (not (= P true)))
                      (or (not (= D1 true)) (= O true))
                      (or (= F1 true) (not (= Q true)))
                      (or (not (= E1 true)) (= P true))
                      (or (= G1 true) (not (= R true)))
                      (or (not (= F1 true)) (= Q true))
                      (or (= H1 true) (not (= S true)))
                      (or (not (= G1 true)) (= R true))
                      (= a!1 0)
                      (or (= I1 true) (not (= T true)))
                      (or (not (= H1 true)) (= S true))
                      (= (- A C) 0)
                      (or (not (= I1 true)) (= T true))
                      a!2
                      (= B 0)
                      (= (- G a!7) 0)
                      a!8
                      (>= a!9 0)
                      (= H 0)
                      a!10
                      (>= a!11 0)
                      (= F true)
                      (= U true)
                      (= I 0)
                      (>= a!12 0)
                      (= a!13 0)
                      (= (- V a!14) 0)
                      (= J true)
                      (= E true)
                      (= X true)
                      (= W true))))
       (=> a!15
           (str_invariant K1
                          J1
                          I1
                          H1
                          G1
                          F1
                          E1
                          D1
                          C1
                          B1
                          A1
                          Z
                          Y
                          X
                          W
                          V
                          U
                          T
                          S
                          R
                          Q
                          P
                          O
                          N
                          M
                          L
                          K
                          J
                          I
                          H
                          G
                          F
                          E
                          D
                          C
                          B
                          A))))))))
    ))
(assert (forall ((A Bool)
         (B Bool)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Bool)
         (H Bool)
         (I Bool)
         (J Int)
         (K Int)
         (L Int)
         (M Bool)
         (N Bool)
         (O Bool)
         (P Bool)
         (Q Bool)
         (R Bool)
         (S Bool)
         (T Bool)
         (U Bool)
         (V Bool)
         (W Bool)
         (X Bool)
         (Y Bool)
         (Z Int)
         (A1 Bool)
         (B1 Bool)
         (C1 Bool)
         (D1 Bool)
         (E1 Bool)
         (F1 Bool)
         (G1 Bool)
         (H1 Bool)
         (I1 Bool)
         (J1 Bool)
         (K1 Bool)
         (L1 Bool)
         (M1 Bool)
         (N1 Bool)
         (O1 Bool)
         (P1 Bool)
         (Q1 Bool)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Bool)
         (W1 Bool)
         (X1 Int)
         (Y1 Int)
         (Z1 Bool)
         (A2 Int)
         (B2 Bool)
         (C2 Bool)
         (D2 Bool)
         (E2 Bool)
         (F2 Bool)
         (G2 Bool)
         (H2 Bool)
         (I2 Bool)
         (J2 Bool)
         (K2 Bool)
         (L2 Bool)
         (M2 Bool)
         (N2 Bool)
         (O2 Int)
         (P2 Bool)
         (Q2 Bool)
         (R2 Bool)
         (S2 Bool)
         (T2 Bool)
         (U2 Bool)
         (V2 Bool)
         (W2 Bool)
         (X2 Int)
         (Y2 Int)
         (Z2 Bool)
         (A3 Int)
         (B3 Int)
         (C3 Int)
         (D3 Int)
         (E3 Int)
         (F3 Int)
         (G3 Int)
         (H3 Int)
         (I3 Bool)
         (J3 Bool)
         (K3 Int)
         (L3 Bool)
         (M3 Int)
         (N3 Int)
         (O3 Bool)
         (P3 Int)
         (Q3 Bool)
         (R3 Int)
         (S3 Bool)
         (T3 Int)
         (U3 Int)
         (V3 Int)
         (W3 Bool)
         (X3 Int)
         (Y3 Int)
         (Z3 Bool)
         (A4 Int)
         (B4 Int)
         (C4 Bool)
         (D4 Bool)
         (E4 Int)
         (F4 Bool)
         (G4 Int)
         (H4 Int)
         (I4 Int)
         (J4 Bool))
  (let ((a!1 (or (not (= N2 true))
                    (and (= N2 true) (not (= Y true)) (= M true))
                    (not (= B2 true))))
           (a!2 (and (= N2 true)
                     (or (not (= N2 true)) (= Y true) (not (= M true)))))
           (a!3 (ite (not (= (+ (- 4) F) 0)) 1 E))
           (a!4 (and (>= (+ (- 1) U3) 0) (>= (- 3 U3) 0)))
           (a!5 (ite (not (= (+ (- 3) A3) 0)) 3 G3))
           (a!10 (ite (= E2 true) 7 (ite (= D2 true) 8 (ite (= C2 true) 9 10))))
           (a!15 (ite (and (= D2 true) (= O false))
                      8
                      (ite (and (= C2 true) (= N false)) 9 10)))
           (a!20 (ite (and (= C2 true) (not (= N true))) 9 10))
           (a!36 (or (and (not (= I true)) (= G true)) (not (= V1 true))))
           (a!37 (or (and (>= (+ (- 1) H3) 0) (>= (- 3 H3) 0))
                     (= (+ (- 4) H3) 0)
                     (not (= Q2 true))))
           (a!38 (ite (not (= (+ (- 3) A3) 0)) 3 A3))
           (a!41 (ite (and (= B2 true) (not (= N2 true)))
                      0
                      (ite (= N2 true) (+ (* 60 A2) (* 10 Y1) X1) Z)))
           (a!42 (and (or (< (+ (- 1) H3) 0) (< (- 3 H3) 0))
                      (not (= (+ (- 4) H3) 0))))
           (a!43 (ite (not (= (+ (- 2) X2) 0)) 2 F3))
           (a!44 (ite (not (= (+ (- 4) G4) 0)) 1 E3))
           (a!45 (ite (not (= (+ (- 2) A4) 0)) 2 D3))
           (a!46 (ite (not (= (+ (- 4) X3) 0)) 1 C3))
           (a!47 (ite (not (= (+ (- 3) R3) 0)) 3 B3))
           (a!49 (ite (not (= (+ (- 2) N3) 0)) 2 E))
           (a!50 (ite (= Z2 true) (ite (= (+ (- 2) Y2) 0) 1 Y2) Y2))
           (a!51 (and (= (+ (- 2) Y2) 0)
                      (or (not (= E4 0)) (= P3 0))
                      (not (= W2 true))
                      (not (= J4 true))))
           (a!52 (ite (not (= (+ (- 2) X2) 0)) 2 X2))
           (a!53 (ite (= W2 true) (ite (= (+ (- 2) H4) 0) 1 H4) H4))
           (a!54 (= W2
                    (and (= (+ (- 2) H4) 0)
                         (>= (+ (- 1) I4) 0)
                         (not (= J4 true)))))
           (a!55 (ite (not (= (+ (- 4) G4) 0)) 4 G4))
           (a!56 (ite (and (>= (+ (- 1) B4) 0) (>= (- 3 B4) 0)) 0 B4))
           (a!57 (= F4
                    (and (= (+ (- 3) B4) 0)
                         (not (= E4 0))
                         (not (= C4 true))
                         (= (+ (- 3) B4) 0)
                         (not (= C4 true)))))
           (a!58 (= E4 (ite (not (= D4 true)) 0 1)))
           (a!59 (= D4 (and (= K2 true) (not (= P1 true)))))
           (a!60 (ite (not (= (+ (- 2) A4) 0)) 2 A4))
           (a!61 (ite (= Z3 true) (ite (= (+ (- 3) Y3) 0) 1 Y3) Y3))
           (a!62 (= Z3
                    (and (= (+ (- 3) Y3) 0)
                         (not (= K3 0))
                         (not (= P3 0))
                         (not (= W3 true)))))
           (a!63 (ite (not (= (+ (- 4) X3) 0)) 4 X3))
           (a!64 (= W3
                    (and (= (+ (- 2) U3) 0) (>= (- V3) 0) (= (+ (- 2) U3) 0))))
           (a!65 (ite (not (= (+ (- 3) R3) 0)) 3 R3))
           (a!66 (= S3
                    (and (= O3 true)
                         (>= (+ (- 1) R3) 0)
                         (>= (- 3 R3) 0)
                         (not (= Q3 true)))))
           (a!67 (ite (not (= (+ (- 2) N3) 0)) 2 N3))
           (a!68 (and (>= (+ (- 1) N3) 0) (>= (- 3 N3) 0)))
           (a!70 (= P3 (ite (not (= R2 true)) 0 1)))
           (a!71 (or (< (+ (- 1) M3) 0) (< (- 3 M3) 0)))
           (a!72 (ite (= L3 true) (ite (= (+ (- 4) F) 0) 0 F) F))
           (a!73 (= (ite (>= (- O2) 0) 0 1) 0))
           (a!75 (= K3 (ite (not (= J3 true)) 0 1)))
           (a!76 (= J3 (and (= V2 true) (not (= Q1 true)))))
           (a!77 (ite (not (= (+ (- 4) F) 0)) 4 F)))
     (let ((a!6 (ite (and (not (= L3 true)) a!4) (ite (= Z2 true) a!5 G3) C3))
           (a!8 (ite (and (not (= L3 true)) a!4)
                     (ite (= W2 true) (+ (- 1) I4) I4)
                     V3))
           (a!11 (ite (= H2 true)
                      4
                      (ite (= G2 true) 5 (ite (= F2 true) 6 a!10))))
           (a!16 (ite (and (= F2 true) (= Q false))
                      6
                      (ite (and (= E2 true) (= P false)) 7 a!15)))
           (a!21 (ite (and (= D2 true) (not (= O true))) 8 a!20))
           (a!39 (ite (and (not (= L3 true)) a!4) (ite (= Z2 true) a!38 A3) U3))
           (a!48 (= C3 (ite (= L3 true) (ite (= S3 true) a!47 B3) E)))
           (a!69 (= Q3 (and (= O3 true) a!68 (not (= P3 0)))))
           (a!74 (= L3
                    (and (= I3 true)
                         (= (+ (- 4) F) 0)
                         (not (= K3 0))
                         (not a!73)))))
     (let ((a!7 (- T1 (ite (= W1 true) (ite (= V1 true) a!3 a!6) E)))
           (a!9 (- S1 (ite (= W1 true) (ite (= V1 true) D a!8) D)))
           (a!12 (ite (= L2 true)
                      1
                      (ite (= J2 true) 2 (ite (= I2 true) 3 a!11))))
           (a!17 (ite (and (= H2 true) (= T false))
                      4
                      (ite (and (= G2 true) (= R false)) 5 a!16)))
           (a!22 (ite (and (= E2 true) (not (= P true))) 7 a!21))
           (a!40 (- U1 (ite (= W1 true) (ite (= V1 true) H3 a!39) F))))
     (let ((a!13 (>= (- 9 (ite (= M2 true) 0 a!12)) 0))
           (a!18 (ite (and (= J2 true) (= V false))
                      2
                      (ite (and (= I2 true) (= U false)) 3 a!17)))
           (a!23 (ite (and (= F2 true) (not (= Q true))) 6 a!22)))
     (let ((a!14 (ite (= K2 true) 0 (ite a!13 (ite (= M2 true) 0 a!12) 0)))
           (a!19 (ite (and (= M2 true) (= X false))
                      0
                      (ite (and (= L2 true) (= W false)) 1 a!18)))
           (a!24 (ite (and (= G2 true) (not (= R true))) 5 a!23)))
     (let ((a!25 (ite (and (= H2 true) (not (= T true))) 4 a!24))
           (a!32 (ite (= K2 true) 0 (ite (>= (- 9 a!19) 0) J K)))
           (a!34 (ite (= K2 true) 0 (ite (>= (- 9 a!19) 0) K L))))
     (let ((a!26 (ite (and (= I2 true) (not (= U true))) 3 a!25))
           (a!33 (- Y1 (ite (= N2 true) (ite (= B2 true) 0 a!32) K)))
           (a!35 (- A2 (ite (= N2 true) (ite (= B2 true) 0 a!34) L))))
     (let ((a!27 (ite (and (= J2 true) (not (= V true))) 2 a!26)))
     (let ((a!28 (ite (and (= L2 true) (not (= W true))) 1 a!27)))
     (let ((a!29 (ite (and (= M2 true) (not (= X true))) 0 a!28)))
     (let ((a!30 (ite (= K2 true) 0 (ite (>= (- 9 a!19) 0) a!29 J))))
     (let ((a!31 (- X1 (ite (= N2 true) (ite (= B2 true) a!14 a!30) J))))
     (let ((a!78 (and (str_invariant Q1
                                     P1
                                     N1
                                     M1
                                     L1
                                     K1
                                     J1
                                     I1
                                     H1
                                     G1
                                     F1
                                     E1
                                     C1
                                     B1
                                     A1
                                     Z
                                     Y
                                     X
                                     W
                                     V
                                     U
                                     T
                                     R
                                     Q
                                     P
                                     O
                                     N
                                     M
                                     L
                                     K
                                     J
                                     I
                                     G
                                     F
                                     E
                                     D
                                     C)
                      (or (= 1 C) (not (= N2 true)))
                      a!1
                      (or (not (= 1 C)) (= N2 true))
                      (or (= S2 true) (not (= C2 true)))
                      (or a!2 (= B2 true))
                      (or (= T2 true) (not (= D2 true)))
                      (or (not (= S2 true)) (= C2 true))
                      (or (= U2 true) (not (= E2 true)))
                      (or (not (= T2 true)) (= D2 true))
                      (or (= F2 true) (not (= A true)))
                      (or (not (= U2 true)) (= E2 true))
                      (or (= G2 true) (not (= B true)))
                      (or (not (= F2 true)) (= A true))
                      (or (= H2 true) (not (= H true)))
                      (or (not (= G2 true)) (= B true))
                      (or (= I2 true) (not (= S true)))
                      (or (not (= H2 true)) (= H true))
                      (or (= J2 true) (not (= D1 true)))
                      (or (not (= I2 true)) (= S true))
                      (or (= L2 true) (not (= O1 true)))
                      (or (not (= J2 true)) (= D1 true))
                      (= a!7 0)
                      (or (= M2 true) (not (= Z1 true)))
                      (or (not (= L2 true)) (= O1 true))
                      (= (- R1 T1) 0)
                      (or (not (= M2 true)) (= Z1 true))
                      (>= E4 0)
                      (= a!9 0)
                      (= a!31 0)
                      (>= P3 0)
                      (>= (- 1 E4) 0)
                      (= a!33 0)
                      (>= K3 0)
                      (>= (- 1 P3) 0)
                      (= W1 true)
                      (= a!35 0)
                      a!36
                      a!37
                      (>= (- 1 K3) 0)
                      (= a!40 0)
                      (= (- O2 a!41) 0)
                      (or (= I true) (not (= G true)) (= V1 true))
                      (or a!42 (= Q2 true))
                      (= G3 (ite (= W2 true) a!43 F3))
                      (= F3 (ite (= F4 true) a!44 E3))
                      (= E3 (ite (= Z3 true) a!45 D3))
                      (= D3 (ite (= W3 true) a!46 C3))
                      a!48
                      (= B3 (ite (= Q3 true) a!49 E))
                      (= A3 a!50)
                      (= Z2 a!51)
                      (= Y2 (ite (= W2 true) a!52 X2))
                      (= X2 a!53)
                      a!54
                      (= J4 (or (= F4 true) (= C4 true)))
                      (= I4 (ite (= F4 true) 0 V3))
                      (= H4 (ite (= F4 true) a!55 G4))
                      (= G4 (ite (= F4 true) a!56 B4))
                      a!57
                      a!58
                      a!59
                      (= C4 (or (= Z3 true) (= W3 true)))
                      (= B4 (ite (= Z3 true) a!60 A4))
                      (= A4 a!61)
                      a!62
                      (= Y3 (ite (= W3 true) a!63 X3))
                      (= X3 (ite (= W3 true) (ite a!4 0 U3) U3))
                      a!64
                      (= V3 (ite (= I3 true) O2 D))
                      (= U3 (ite (= L3 true) T3 M3))
                      (= T3 (ite (= S3 true) a!65 R3))
                      a!66
                      (= R3 (ite (= Q3 true) a!67 N3))
                      a!69
                      a!70
                      (= O3 (and a!71 a!68))
                      (= N3 (ite a!71 1 M3))
                      (= M3 a!72)
                      a!74
                      a!75
                      a!76
                      (= I3 (= (+ (- 4) F) 0))
                      (= H3 a!77)
                      (not (= P2 true)))))
       (=> a!78
           (str_invariant V2
                          K2
                          Z1
                          O1
                          D1
                          S
                          H
                          B
                          A
                          U2
                          T2
                          S2
                          R2
                          Q2
                          P2
                          O2
                          N2
                          M2
                          L2
                          J2
                          I2
                          H2
                          G2
                          F2
                          E2
                          D2
                          C2
                          B2
                          A2
                          Y1
                          X1
                          W1
                          V1
                          U1
                          T1
                          S1
                          R1)))))))))))))))
    ))


(check-sat)
(exit)
