(define (problem problema-h10-r10)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 hab5 hab6 hab7 hab8 hab9 - habitacio
             res0 res1 res2 res3 res4 res5 res6 res7 res8 res9 - reserva)
   (:init
         (= (capacitat hab0) 2)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 3)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 2)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 3)
         (= (ultim-dia-ocupada hab3) 0)
         (= (capacitat hab4) 2)
         (= (ultim-dia-ocupada hab4) 0)
         (= (capacitat hab5) 2)
         (= (ultim-dia-ocupada hab5) 0)
         (= (capacitat hab6) 1)
         (= (ultim-dia-ocupada hab6) 0)
         (= (capacitat hab7) 1)
         (= (ultim-dia-ocupada hab7) 0)
         (= (capacitat hab8) 3)
         (= (ultim-dia-ocupada hab8) 0)
         (= (capacitat hab9) 3)
         (= (ultim-dia-ocupada hab9) 0)
         (= (persones res0) 1)
         (= (principi res0) 19)
         (= (final res0) 26)
         (= (persones res1) 3)
         (= (principi res1) 21)
         (= (final res1) 30)
         (= (persones res2) 3)
         (= (principi res2) 4)
         (= (final res2) 17)
         (= (persones res3) 4)
         (= (principi res3) 22)
         (= (final res3) 28)
         (= (persones res4) 3)
         (= (principi res4) 12)
         (= (final res4) 18)
         (= (persones res5) 4)
         (= (principi res5) 5)
         (= (final res5) 8)
         (= (persones res6) 3)
         (= (principi res6) 4)
         (= (final res6) 11)
         (= (persones res7) 4)
         (= (principi res7) 4)
         (= (final res7) 30)
         (= (persones res8) 4)
         (= (principi res8) 25)
         (= (final res8) 30)
         (= (persones res9) 3)
         (= (principi res9) 10)
         (= (final res9) 15)
         (= (reserves-no-satisfetes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal (forall (?res - reserva) (processada ?res)))
   (:metric minimize (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))))
)
