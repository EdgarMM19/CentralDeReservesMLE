(define (problem problema-h35-r35)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 hab5 hab6 hab7 hab8 hab9 hab10 hab11 hab12 hab13 hab14 hab15 hab16 hab17 hab18 hab19 hab20 hab21 hab22 hab23 hab24 hab25 hab26 hab27 hab28 hab29 hab30 hab31 hab32 hab33 hab34 - habitacio
             res0 res1 res2 res3 res4 res5 res6 res7 res8 res9 res10 res11 res12 res13 res14 res15 res16 res17 res18 res19 res20 res21 res22 res23 res24 res25 res26 res27 res28 res29 res30 res31 res32 res33 res34 - reserva)
   (:init
         (= (capacitat hab0) 1)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 1)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 4)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 2)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 4)
         (= (ultim-dia-ocupada hab4) 0)
         (= (capacitat hab5) 3)
         (= (ultim-dia-ocupada hab5) 0)
         (= (capacitat hab6) 3)
         (= (ultim-dia-ocupada hab6) 0)
         (= (capacitat hab7) 3)
         (= (ultim-dia-ocupada hab7) 0)
         (= (capacitat hab8) 3)
         (= (ultim-dia-ocupada hab8) 0)
         (= (capacitat hab9) 1)
         (= (ultim-dia-ocupada hab9) 0)
         (= (capacitat hab10) 2)
         (= (ultim-dia-ocupada hab10) 0)
         (= (capacitat hab11) 2)
         (= (ultim-dia-ocupada hab11) 0)
         (= (capacitat hab12) 4)
         (= (ultim-dia-ocupada hab12) 0)
         (= (capacitat hab13) 2)
         (= (ultim-dia-ocupada hab13) 0)
         (= (capacitat hab14) 1)
         (= (ultim-dia-ocupada hab14) 0)
         (= (capacitat hab15) 1)
         (= (ultim-dia-ocupada hab15) 0)
         (= (capacitat hab16) 4)
         (= (ultim-dia-ocupada hab16) 0)
         (= (capacitat hab17) 1)
         (= (ultim-dia-ocupada hab17) 0)
         (= (capacitat hab18) 1)
         (= (ultim-dia-ocupada hab18) 0)
         (= (capacitat hab19) 3)
         (= (ultim-dia-ocupada hab19) 0)
         (= (capacitat hab20) 3)
         (= (ultim-dia-ocupada hab20) 0)
         (= (capacitat hab21) 2)
         (= (ultim-dia-ocupada hab21) 0)
         (= (capacitat hab22) 1)
         (= (ultim-dia-ocupada hab22) 0)
         (= (capacitat hab23) 3)
         (= (ultim-dia-ocupada hab23) 0)
         (= (capacitat hab24) 2)
         (= (ultim-dia-ocupada hab24) 0)
         (= (capacitat hab25) 3)
         (= (ultim-dia-ocupada hab25) 0)
         (= (capacitat hab26) 3)
         (= (ultim-dia-ocupada hab26) 0)
         (= (capacitat hab27) 3)
         (= (ultim-dia-ocupada hab27) 0)
         (= (capacitat hab28) 4)
         (= (ultim-dia-ocupada hab28) 0)
         (= (capacitat hab29) 4)
         (= (ultim-dia-ocupada hab29) 0)
         (= (capacitat hab30) 4)
         (= (ultim-dia-ocupada hab30) 0)
         (= (capacitat hab31) 1)
         (= (ultim-dia-ocupada hab31) 0)
         (= (capacitat hab32) 2)
         (= (ultim-dia-ocupada hab32) 0)
         (= (capacitat hab33) 2)
         (= (ultim-dia-ocupada hab33) 0)
         (= (capacitat hab34) 3)
         (= (ultim-dia-ocupada hab34) 0)
         (= (persones res0) 2)
         (= (principi res0) 6)
         (= (final res0) 23)
         (= (persones res1) 2)
         (= (principi res1) 27)
         (= (final res1) 30)
         (= (persones res2) 2)
         (= (principi res2) 22)
         (= (final res2) 25)
         (= (persones res3) 2)
         (= (principi res3) 15)
         (= (final res3) 24)
         (= (persones res4) 3)
         (= (principi res4) 7)
         (= (final res4) 9)
         (= (persones res5) 3)
         (= (principi res5) 11)
         (= (final res5) 16)
         (= (persones res6) 2)
         (= (principi res6) 4)
         (= (final res6) 11)
         (= (persones res7) 4)
         (= (principi res7) 26)
         (= (final res7) 27)
         (= (persones res8) 2)
         (= (principi res8) 5)
         (= (final res8) 13)
         (= (persones res9) 1)
         (= (principi res9) 6)
         (= (final res9) 16)
         (= (persones res10) 3)
         (= (principi res10) 8)
         (= (final res10) 29)
         (= (persones res11) 1)
         (= (principi res11) 10)
         (= (final res11) 25)
         (= (persones res12) 3)
         (= (principi res12) 14)
         (= (final res12) 24)
         (= (persones res13) 4)
         (= (principi res13) 9)
         (= (final res13) 15)
         (= (persones res14) 4)
         (= (principi res14) 22)
         (= (final res14) 26)
         (= (persones res15) 2)
         (= (principi res15) 15)
         (= (final res15) 29)
         (= (persones res16) 4)
         (= (principi res16) 5)
         (= (final res16) 13)
         (= (persones res17) 3)
         (= (principi res17) 28)
         (= (final res17) 29)
         (= (persones res18) 3)
         (= (principi res18) 27)
         (= (final res18) 30)
         (= (persones res19) 4)
         (= (principi res19) 23)
         (= (final res19) 27)
         (= (persones res20) 2)
         (= (principi res20) 11)
         (= (final res20) 28)
         (= (persones res21) 2)
         (= (principi res21) 16)
         (= (final res21) 19)
         (= (persones res22) 1)
         (= (principi res22) 12)
         (= (final res22) 22)
         (= (persones res23) 2)
         (= (principi res23) 23)
         (= (final res23) 30)
         (= (persones res24) 3)
         (= (principi res24) 28)
         (= (final res24) 29)
         (= (persones res25) 2)
         (= (principi res25) 1)
         (= (final res25) 18)
         (= (persones res26) 2)
         (= (principi res26) 4)
         (= (final res26) 26)
         (= (persones res27) 3)
         (= (principi res27) 19)
         (= (final res27) 30)
         (= (persones res28) 1)
         (= (principi res28) 3)
         (= (final res28) 10)
         (= (persones res29) 3)
         (= (principi res29) 17)
         (= (final res29) 26)
         (= (persones res30) 2)
         (= (principi res30) 28)
         (= (final res30) 29)
         (= (persones res31) 4)
         (= (principi res31) 13)
         (= (final res31) 21)
         (= (persones res32) 1)
         (= (principi res32) 19)
         (= (final res32) 21)
         (= (persones res33) 3)
         (= (principi res33) 27)
         (= (final res33) 29)
         (= (persones res34) 1)
         (= (principi res34) 22)
         (= (final res34) 24)
         (= (reserves-no-satisfetes) 0)
         (= (habitacions-obertes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal  (and (forall (?res - reserva) (processada ?res)) (forall (?hab - habitacio) (decidida ?hab))))
   (:metric minimize (+ (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))) (* 1 (habitacions-obertes))))
)
