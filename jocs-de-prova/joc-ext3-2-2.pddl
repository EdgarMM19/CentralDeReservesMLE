(define (problem problema-h3-r6)
   (:domain reserves)
   (:objects hab0 hab1 hab2 - habitacio
             res0 res1 res2 res3 res4 res5 - reserva)
   (:init
         (= (capacitat hab0) 4)
         (= (ultim-dia-ocupada hab0) 0)

         (= (capacitat hab1) 2)
         (= (ultim-dia-ocupada hab1) 0)

         (= (capacitat hab2) 1)
         (= (ultim-dia-ocupada hab2) 0)


         (= (persones res0) 2)
         (= (principi res0) 2)
         (= (final res0) 25)

         (= (persones res1) 1)
         (= (principi res1) 9)
         (= (final res1) 23)

         (= (persones res2) 1)
         (= (principi res2) 9)
         (= (final res2) 24)

         (= (persones res3) 1)
         (= (principi res3) 27)
         (= (final res3) 28)

         (= (persones res4) 3)
         (= (principi res4) 14)
         (= (final res4) 22)

         (= (persones res5) 2)
         (= (principi res5) 29)
         (= (final res5) 30)

         (= (reserves-no-satisfetes) 0)
         (= (desaprofitament-places) 0)

   )

   (:goal (forall (?res - reserva) (processada ?res)))

   (:metric minimize (+ (* 1 (reserves-no-satisfetes)) (* 10 (desaprofitament-places))))
)
