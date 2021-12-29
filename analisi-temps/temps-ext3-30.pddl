(define (problem problema-h30-r30)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 hab5 hab6 hab7 hab8 hab9 hab10 hab11 hab12 hab13 hab14 hab15 hab16 hab17 hab18 hab19 hab20 hab21 hab22 hab23 hab24 hab25 hab26 hab27 hab28 hab29 - habitacio
             res0 res1 res2 res3 res4 res5 res6 res7 res8 res9 res10 res11 res12 res13 res14 res15 res16 res17 res18 res19 res20 res21 res22 res23 res24 res25 res26 res27 res28 res29 - reserva)
   (:init
         (= (capacitat hab0) 1)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 2)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 1)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 2)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 3)
         (= (ultim-dia-ocupada hab4) 0)
         (= (capacitat hab5) 1)
         (= (ultim-dia-ocupada hab5) 0)
         (= (capacitat hab6) 4)
         (= (ultim-dia-ocupada hab6) 0)
         (= (capacitat hab7) 1)
         (= (ultim-dia-ocupada hab7) 0)
         (= (capacitat hab8) 2)
         (= (ultim-dia-ocupada hab8) 0)
         (= (capacitat hab9) 1)
         (= (ultim-dia-ocupada hab9) 0)
         (= (capacitat hab10) 3)
         (= (ultim-dia-ocupada hab10) 0)
         (= (capacitat hab11) 3)
         (= (ultim-dia-ocupada hab11) 0)
         (= (capacitat hab12) 4)
         (= (ultim-dia-ocupada hab12) 0)
         (= (capacitat hab13) 3)
         (= (ultim-dia-ocupada hab13) 0)
         (= (capacitat hab14) 3)
         (= (ultim-dia-ocupada hab14) 0)
         (= (capacitat hab15) 2)
         (= (ultim-dia-ocupada hab15) 0)
         (= (capacitat hab16) 3)
         (= (ultim-dia-ocupada hab16) 0)
         (= (capacitat hab17) 2)
         (= (ultim-dia-ocupada hab17) 0)
         (= (capacitat hab18) 2)
         (= (ultim-dia-ocupada hab18) 0)
         (= (capacitat hab19) 2)
         (= (ultim-dia-ocupada hab19) 0)
         (= (capacitat hab20) 4)
         (= (ultim-dia-ocupada hab20) 0)
         (= (capacitat hab21) 4)
         (= (ultim-dia-ocupada hab21) 0)
         (= (capacitat hab22) 4)
         (= (ultim-dia-ocupada hab22) 0)
         (= (capacitat hab23) 3)
         (= (ultim-dia-ocupada hab23) 0)
         (= (capacitat hab24) 3)
         (= (ultim-dia-ocupada hab24) 0)
         (= (capacitat hab25) 3)
         (= (ultim-dia-ocupada hab25) 0)
         (= (capacitat hab26) 4)
         (= (ultim-dia-ocupada hab26) 0)
         (= (capacitat hab27) 1)
         (= (ultim-dia-ocupada hab27) 0)
         (= (capacitat hab28) 4)
         (= (ultim-dia-ocupada hab28) 0)
         (= (capacitat hab29) 4)
         (= (ultim-dia-ocupada hab29) 0)
         (= (persones res0) 2)
         (= (principi res0) 11)
         (= (final res0) 28)
         (= (persones res1) 1)
         (= (principi res1) 29)
         (= (final res1) 30)
         (= (persones res2) 4)
         (= (principi res2) 28)
         (= (final res2) 30)
         (= (persones res3) 1)
         (= (principi res3) 9)
         (= (final res3) 28)
         (= (persones res4) 2)
         (= (principi res4) 11)
         (= (final res4) 15)
         (= (persones res5) 1)
         (= (principi res5) 1)
         (= (final res5) 7)
         (= (persones res6) 4)
         (= (principi res6) 14)
         (= (final res6) 21)
         (= (persones res7) 4)
         (= (principi res7) 13)
         (= (final res7) 15)
         (= (persones res8) 1)
         (= (principi res8) 13)
         (= (final res8) 28)
         (= (persones res9) 4)
         (= (principi res9) 18)
         (= (final res9) 27)
         (= (persones res10) 1)
         (= (principi res10) 17)
         (= (final res10) 20)
         (= (persones res11) 3)
         (= (principi res11) 10)
         (= (final res11) 30)
         (= (persones res12) 4)
         (= (principi res12) 27)
         (= (final res12) 28)
         (= (persones res13) 3)
         (= (principi res13) 29)
         (= (final res13) 30)
         (= (persones res14) 4)
         (= (principi res14) 22)
         (= (final res14) 25)
         (= (persones res15) 1)
         (= (principi res15) 13)
         (= (final res15) 15)
         (= (persones res16) 3)
         (= (principi res16) 18)
         (= (final res16) 24)
         (= (persones res17) 4)
         (= (principi res17) 4)
         (= (final res17) 18)
         (= (persones res18) 2)
         (= (principi res18) 11)
         (= (final res18) 22)
         (= (persones res19) 1)
         (= (principi res19) 16)
         (= (final res19) 30)
         (= (persones res20) 2)
         (= (principi res20) 23)
         (= (final res20) 29)
         (= (persones res21) 4)
         (= (principi res21) 18)
         (= (final res21) 26)
         (= (persones res22) 4)
         (= (principi res22) 5)
         (= (final res22) 26)
         (= (persones res23) 4)
         (= (principi res23) 26)
         (= (final res23) 29)
         (= (persones res24) 4)
         (= (principi res24) 5)
         (= (final res24) 22)
         (= (persones res25) 4)
         (= (principi res25) 25)
         (= (final res25) 26)
         (= (persones res26) 4)
         (= (principi res26) 5)
         (= (final res26) 18)
         (= (persones res27) 4)
         (= (principi res27) 19)
         (= (final res27) 28)
         (= (persones res28) 3)
         (= (principi res28) 16)
         (= (final res28) 24)
         (= (persones res29) 4)
         (= (principi res29) 7)
         (= (final res29) 13)
         (= (reserves-no-satisfetes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal (forall (?res - reserva) (processada ?res)))
   (:metric minimize (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))))
)