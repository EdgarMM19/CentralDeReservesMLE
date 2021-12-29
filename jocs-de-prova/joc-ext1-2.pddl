(define (problem problema-h5-r10)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 hab4 - habitacio
             res0 res1 res2 res3 res4 res5 res6 res7 res8 res9 - reserva)
   (:init
         (= (capacitat hab0) 1)
         (= (ultim-dia-ocupada hab0) 0)

         (= (capacitat hab1) 1)
         (= (ultim-dia-ocupada hab1) 0)

         (= (capacitat hab2) 4)
         (= (ultim-dia-ocupada hab2) 0)

         (= (capacitat hab3) 1)
         (= (ultim-dia-ocupada hab3) 0)

         (= (capacitat hab4) 2)
         (= (ultim-dia-ocupada hab4) 0)


         (= (persones res0) 1)
         (= (principi res0) 6)
         (= (final res0) 27)

         (= (persones res1) 4)
         (= (principi res1) 17)
         (= (final res1) 27)

         (= (persones res2) 2)
         (= (principi res2) 7)
         (= (final res2) 23)

         (= (persones res3) 1)
         (= (principi res3) 3)
         (= (final res3) 18)

         (= (persones res4) 3)
         (= (principi res4) 16)
         (= (final res4) 27)

         (= (persones res5) 4)
         (= (principi res5) 24)
         (= (final res5) 26)

         (= (persones res6) 3)
         (= (principi res6) 10)
         (= (final res6) 24)

         (= (persones res7) 2)
         (= (principi res7) 27)
         (= (final res7) 30)

         (= (persones res8) 1)
         (= (principi res8) 13)
         (= (final res8) 29)

         (= (persones res9) 4)
         (= (principi res9) 4)
         (= (final res9) 22)

         (= (reserves-satisfetes) 0)

   )

   (:goal (forall (?res - reserva) (processada ?res)))

   (:metric maximize (reserves-satisfetes))
)
