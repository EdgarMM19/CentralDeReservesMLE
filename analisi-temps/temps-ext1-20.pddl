(define (problem problema-h20-r20)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 hab5 hab6 hab7 hab8 hab9 hab10 hab11 hab12 hab13 hab14 hab15 hab16 hab17 hab18 hab19 - habitacio
             res0 res1 res2 res3 res4 res5 res6 res7 res8 res9 res10 res11 res12 res13 res14 res15 res16 res17 res18 res19 - reserva)
   (:init
         (= (capacitat hab0) 3)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 3)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 2)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 2)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 3)
         (= (ultim-dia-ocupada hab4) 0)
         (= (capacitat hab5) 2)
         (= (ultim-dia-ocupada hab5) 0)
         (= (capacitat hab6) 1)
         (= (ultim-dia-ocupada hab6) 0)
         (= (capacitat hab7) 4)
         (= (ultim-dia-ocupada hab7) 0)
         (= (capacitat hab8) 1)
         (= (ultim-dia-ocupada hab8) 0)
         (= (capacitat hab9) 1)
         (= (ultim-dia-ocupada hab9) 0)
         (= (capacitat hab10) 3)
         (= (ultim-dia-ocupada hab10) 0)
         (= (capacitat hab11) 2)
         (= (ultim-dia-ocupada hab11) 0)
         (= (capacitat hab12) 3)
         (= (ultim-dia-ocupada hab12) 0)
         (= (capacitat hab13) 3)
         (= (ultim-dia-ocupada hab13) 0)
         (= (capacitat hab14) 3)
         (= (ultim-dia-ocupada hab14) 0)
         (= (capacitat hab15) 4)
         (= (ultim-dia-ocupada hab15) 0)
         (= (capacitat hab16) 3)
         (= (ultim-dia-ocupada hab16) 0)
         (= (capacitat hab17) 3)
         (= (ultim-dia-ocupada hab17) 0)
         (= (capacitat hab18) 1)
         (= (ultim-dia-ocupada hab18) 0)
         (= (capacitat hab19) 3)
         (= (ultim-dia-ocupada hab19) 0)
         (= (persones res0) 2)
         (= (principi res0) 2)
         (= (final res0) 6)
         (= (persones res1) 4)
         (= (principi res1) 17)
         (= (final res1) 30)
         (= (persones res2) 3)
         (= (principi res2) 23)
         (= (final res2) 25)
         (= (persones res3) 1)
         (= (principi res3) 17)
         (= (final res3) 22)
         (= (persones res4) 4)
         (= (principi res4) 25)
         (= (final res4) 27)
         (= (persones res5) 1)
         (= (principi res5) 29)
         (= (final res5) 30)
         (= (persones res6) 4)
         (= (principi res6) 2)
         (= (final res6) 4)
         (= (persones res7) 3)
         (= (principi res7) 4)
         (= (final res7) 8)
         (= (persones res8) 2)
         (= (principi res8) 16)
         (= (final res8) 23)
         (= (persones res9) 4)
         (= (principi res9) 8)
         (= (final res9) 29)
         (= (persones res10) 2)
         (= (principi res10) 8)
         (= (final res10) 23)
         (= (persones res11) 2)
         (= (principi res11) 8)
         (= (final res11) 19)
         (= (persones res12) 3)
         (= (principi res12) 24)
         (= (final res12) 26)
         (= (persones res13) 4)
         (= (principi res13) 15)
         (= (final res13) 18)
         (= (persones res14) 1)
         (= (principi res14) 3)
         (= (final res14) 12)
         (= (persones res15) 4)
         (= (principi res15) 1)
         (= (final res15) 7)
         (= (persones res16) 2)
         (= (principi res16) 22)
         (= (final res16) 26)
         (= (persones res17) 3)
         (= (principi res17) 13)
         (= (final res17) 27)
         (= (persones res18) 2)
         (= (principi res18) 15)
         (= (final res18) 18)
         (= (persones res19) 3)
         (= (principi res19) 22)
         (= (final res19) 30)
         (= (reserves-satisfetes) 0)
   )
   (:goal (forall (?res - reserva) (processada ?res)))
   (:metric maximize (reserves-satisfetes))
)
