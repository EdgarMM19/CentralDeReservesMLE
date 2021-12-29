(define (problem problema-h3-r6)
   (:domain reserves)
   (:objects hab0 hab1 hab2 - habitacio
             res0 res1 res2 res3 res4 res5 - reserva)
   (:init
         (= (capacitat hab0) 2)
         (= (ultim-dia-ocupada hab0) 0)

         (= (capacitat hab1) 3)
         (= (ultim-dia-ocupada hab1) 0)

         (= (capacitat hab2) 1)
         (= (ultim-dia-ocupada hab2) 0)


         (= (persones res0) 2)
         (= (principi res0) 9)
         (= (final res0) 13)

         (= (persones res1) 1)
         (= (principi res1) 24)
         (= (final res1) 30)

         (= (persones res2) 4)
         (= (principi res2) 19)
         (= (final res2) 28)

         (= (persones res3) 2)
         (= (principi res3) 13)
         (= (final res3) 19)

         (= (persones res4) 3)
         (= (principi res4) 12)
         (= (final res4) 16)

         (= (persones res5) 1)
         (= (principi res5) 18)
         (= (final res5) 23)

         (= (reserves-no-satisfetes) 0)
         (= (habitacions-obertes) 0)
         (= (desaprofitament-places) 0)

   )

   (:goal  (and (forall (?res - reserva) (processada ?res)) (forall (?res - habitacio) (decidida ?res))))

   (:metric minimize (+ (+ (* 10 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))) (* 5 (habitacions-obertes))))
)
