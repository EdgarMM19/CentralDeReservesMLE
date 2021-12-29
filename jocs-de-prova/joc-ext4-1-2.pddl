(define (problem problema-h1-r6)
   (:domain reserves)
   (:objects hab0 - habitacio
             res0 res1 res2 res3 res4 res5 - reserva)
   (:init
         (= (capacitat hab0) 2)
         (= (ultim-dia-ocupada hab0) 0)

         (= (persones res0) 2)
         (= (principi res0) 1)
         (= (final res0) 10)

         (= (persones res1) 1)
         (= (principi res1) 11)
         (= (final res1) 20)

         (= (persones res2) 1)
         (= (principi res2) 21)
         (= (final res2) 30)

         (= (persones res3) 2)
         (= (principi res3) 1)
         (= (final res3) 15)

         (= (persones res4) 2)
         (= (principi res4) 16)
         (= (final res4) 30)

         (= (persones res5) 1)
         (= (principi res5) 1)
         (= (final res5) 30)

         (= (reserves-no-satisfetes) 0)
         (= (habitacions-obertes) 0)
         (= (desaprofitament-places) 0)
  )

  (:goal (and (forall (?res - reserva) (processada ?res)) (forall (?hab - habitacio) (decidida ?hab))))

  (:metric minimize (+ (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))) (* 1 (habitacions-obertes))))
)