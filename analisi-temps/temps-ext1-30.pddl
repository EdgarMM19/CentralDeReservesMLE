(define (problem problema-h30-r30)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 hab5 hab6 hab7 hab8 hab9 hab10 hab11 hab12 hab13 hab14 hab15 hab16 hab17 hab18 hab19 hab20 hab21 hab22 hab23 hab24 hab25 hab26 hab27 hab28 hab29 - habitacio
             res0 res1 res2 res3 res4 res5 res6 res7 res8 res9 res10 res11 res12 res13 res14 res15 res16 res17 res18 res19 res20 res21 res22 res23 res24 res25 res26 res27 res28 res29 - reserva)
   (:init
         (= (capacitat hab0) 4)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 3)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 4)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 1)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 3)
         (= (ultim-dia-ocupada hab4) 0)
         (= (capacitat hab5) 1)
         (= (ultim-dia-ocupada hab5) 0)
         (= (capacitat hab6) 4)
         (= (ultim-dia-ocupada hab6) 0)
         (= (capacitat hab7) 4)
         (= (ultim-dia-ocupada hab7) 0)
         (= (capacitat hab8) 3)
         (= (ultim-dia-ocupada hab8) 0)
         (= (capacitat hab9) 3)
         (= (ultim-dia-ocupada hab9) 0)
         (= (capacitat hab10) 1)
         (= (ultim-dia-ocupada hab10) 0)
         (= (capacitat hab11) 3)
         (= (ultim-dia-ocupada hab11) 0)
         (= (capacitat hab12) 1)
         (= (ultim-dia-ocupada hab12) 0)
         (= (capacitat hab13) 4)
         (= (ultim-dia-ocupada hab13) 0)
         (= (capacitat hab14) 2)
         (= (ultim-dia-ocupada hab14) 0)
         (= (capacitat hab15) 4)
         (= (ultim-dia-ocupada hab15) 0)
         (= (capacitat hab16) 3)
         (= (ultim-dia-ocupada hab16) 0)
         (= (capacitat hab17) 4)
         (= (ultim-dia-ocupada hab17) 0)
         (= (capacitat hab18) 3)
         (= (ultim-dia-ocupada hab18) 0)
         (= (capacitat hab19) 1)
         (= (ultim-dia-ocupada hab19) 0)
         (= (capacitat hab20) 1)
         (= (ultim-dia-ocupada hab20) 0)
         (= (capacitat hab21) 4)
         (= (ultim-dia-ocupada hab21) 0)
         (= (capacitat hab22) 4)
         (= (ultim-dia-ocupada hab22) 0)
         (= (capacitat hab23) 3)
         (= (ultim-dia-ocupada hab23) 0)
         (= (capacitat hab24) 2)
         (= (ultim-dia-ocupada hab24) 0)
         (= (capacitat hab25) 1)
         (= (ultim-dia-ocupada hab25) 0)
         (= (capacitat hab26) 1)
         (= (ultim-dia-ocupada hab26) 0)
         (= (capacitat hab27) 2)
         (= (ultim-dia-ocupada hab27) 0)
         (= (capacitat hab28) 3)
         (= (ultim-dia-ocupada hab28) 0)
         (= (capacitat hab29) 3)
         (= (ultim-dia-ocupada hab29) 0)
         (= (persones res0) 1)
         (= (principi res0) 2)
         (= (final res0) 29)
         (= (persones res1) 4)
         (= (principi res1) 18)
         (= (final res1) 28)
         (= (persones res2) 1)
         (= (principi res2) 22)
         (= (final res2) 25)
         (= (persones res3) 4)
         (= (principi res3) 29)
         (= (final res3) 30)
         (= (persones res4) 1)
         (= (principi res4) 24)
         (= (final res4) 29)
         (= (persones res5) 3)
         (= (principi res5) 7)
         (= (final res5) 22)
         (= (persones res6) 2)
         (= (principi res6) 16)
         (= (final res6) 19)
         (= (persones res7) 1)
         (= (principi res7) 1)
         (= (final res7) 16)
         (= (persones res8) 3)
         (= (principi res8) 11)
         (= (final res8) 26)
         (= (persones res9) 2)
         (= (principi res9) 24)
         (= (final res9) 29)
         (= (persones res10) 3)
         (= (principi res10) 12)
         (= (final res10) 20)
         (= (persones res11) 4)
         (= (principi res11) 17)
         (= (final res11) 29)
         (= (persones res12) 3)
         (= (principi res12) 26)
         (= (final res12) 30)
         (= (persones res13) 1)
         (= (principi res13) 6)
         (= (final res13) 22)
         (= (persones res14) 3)
         (= (principi res14) 16)
         (= (final res14) 19)
         (= (persones res15) 3)
         (= (principi res15) 21)
         (= (final res15) 24)
         (= (persones res16) 3)
         (= (principi res16) 13)
         (= (final res16) 18)
         (= (persones res17) 3)
         (= (principi res17) 26)
         (= (final res17) 29)
         (= (persones res18) 3)
         (= (principi res18) 5)
         (= (final res18) 10)
         (= (persones res19) 1)
         (= (principi res19) 29)
         (= (final res19) 30)
         (= (persones res20) 1)
         (= (principi res20) 10)
         (= (final res20) 17)
         (= (persones res21) 3)
         (= (principi res21) 12)
         (= (final res21) 25)
         (= (persones res22) 1)
         (= (principi res22) 8)
         (= (final res22) 10)
         (= (persones res23) 2)
         (= (principi res23) 1)
         (= (final res23) 7)
         (= (persones res24) 1)
         (= (principi res24) 17)
         (= (final res24) 23)
         (= (persones res25) 1)
         (= (principi res25) 10)
         (= (final res25) 14)
         (= (persones res26) 2)
         (= (principi res26) 4)
         (= (final res26) 11)
         (= (persones res27) 4)
         (= (principi res27) 14)
         (= (final res27) 21)
         (= (persones res28) 4)
         (= (principi res28) 19)
         (= (final res28) 28)
         (= (persones res29) 4)
         (= (principi res29) 17)
         (= (final res29) 22)
         (= (reserves-satisfetes) 0)
   )
   (:goal (forall (?res - reserva) (processada ?res)))
   (:metric maximize (reserves-satisfetes))
)
