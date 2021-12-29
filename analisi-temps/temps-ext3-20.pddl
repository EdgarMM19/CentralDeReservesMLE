(define (problem problema-h20-r20)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 hab5 hab6 hab7 hab8 hab9 hab10 hab11 hab12 hab13 hab14 hab15 hab16 hab17 hab18 hab19 - habitacio
             res0 res1 res2 res3 res4 res5 res6 res7 res8 res9 res10 res11 res12 res13 res14 res15 res16 res17 res18 res19 - reserva)
   (:init
         (= (capacitat hab0) 4)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 1)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 3)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 1)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 4)
         (= (ultim-dia-ocupada hab4) 0)
         (= (capacitat hab5) 4)
         (= (ultim-dia-ocupada hab5) 0)
         (= (capacitat hab6) 4)
         (= (ultim-dia-ocupada hab6) 0)
         (= (capacitat hab7) 2)
         (= (ultim-dia-ocupada hab7) 0)
         (= (capacitat hab8) 1)
         (= (ultim-dia-ocupada hab8) 0)
         (= (capacitat hab9) 4)
         (= (ultim-dia-ocupada hab9) 0)
         (= (capacitat hab10) 4)
         (= (ultim-dia-ocupada hab10) 0)
         (= (capacitat hab11) 2)
         (= (ultim-dia-ocupada hab11) 0)
         (= (capacitat hab12) 4)
         (= (ultim-dia-ocupada hab12) 0)
         (= (capacitat hab13) 3)
         (= (ultim-dia-ocupada hab13) 0)
         (= (capacitat hab14) 4)
         (= (ultim-dia-ocupada hab14) 0)
         (= (capacitat hab15) 1)
         (= (ultim-dia-ocupada hab15) 0)
         (= (capacitat hab16) 3)
         (= (ultim-dia-ocupada hab16) 0)
         (= (capacitat hab17) 1)
         (= (ultim-dia-ocupada hab17) 0)
         (= (capacitat hab18) 3)
         (= (ultim-dia-ocupada hab18) 0)
         (= (capacitat hab19) 3)
         (= (ultim-dia-ocupada hab19) 0)
         (= (persones res0) 4)
         (= (principi res0) 27)
         (= (final res0) 30)
         (= (persones res1) 3)
         (= (principi res1) 12)
         (= (final res1) 23)
         (= (persones res2) 2)
         (= (principi res2) 29)
         (= (final res2) 30)
         (= (persones res3) 3)
         (= (principi res3) 4)
         (= (final res3) 30)
         (= (persones res4) 4)
         (= (principi res4) 17)
         (= (final res4) 24)
         (= (persones res5) 4)
         (= (principi res5) 15)
         (= (final res5) 22)
         (= (persones res6) 1)
         (= (principi res6) 7)
         (= (final res6) 10)
         (= (persones res7) 3)
         (= (principi res7) 25)
         (= (final res7) 29)
         (= (persones res8) 2)
         (= (principi res8) 4)
         (= (final res8) 21)
         (= (persones res9) 1)
         (= (principi res9) 13)
         (= (final res9) 23)
         (= (persones res10) 4)
         (= (principi res10) 12)
         (= (final res10) 15)
         (= (persones res11) 3)
         (= (principi res11) 20)
         (= (final res11) 29)
         (= (persones res12) 2)
         (= (principi res12) 26)
         (= (final res12) 30)
         (= (persones res13) 3)
         (= (principi res13) 17)
         (= (final res13) 24)
         (= (persones res14) 4)
         (= (principi res14) 2)
         (= (final res14) 28)
         (= (persones res15) 3)
         (= (principi res15) 6)
         (= (final res15) 20)
         (= (persones res16) 4)
         (= (principi res16) 20)
         (= (final res16) 29)
         (= (persones res17) 2)
         (= (principi res17) 8)
         (= (final res17) 26)
         (= (persones res18) 4)
         (= (principi res18) 3)
         (= (final res18) 4)
         (= (persones res19) 1)
         (= (principi res19) 5)
         (= (final res19) 8)
         (= (reserves-no-satisfetes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal (forall (?res - reserva) (processada ?res)))
   (:metric minimize (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))))
)