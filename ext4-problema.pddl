(define (problem reserves-habitacions-basic)
  (:domain reserves)
  (:objects hab1 hab2 hab3 hab4 - habitacio
            res1 res2 res3 res4 - reserva)
  (:init (= (capacitat hab1) 1)
         (= (ultim-dia-ocupat hab1) 0)

         (= (capacitat hab2) 2)
         (= (ultim-dia-ocupat hab2) 0)
         (= (capacitat hab3) 3)
         (= (ultim-dia-ocupat hab3) 0)
         (= (capacitat hab4) 4)
         (= (ultim-dia-ocupat hab4) 0)

         (= (persones res1) 1)
         (= (principi res1) 1)
         (= (final res1) 1)

         (= (persones res2) 2)
         (= (principi res2) 1)
         (= (final res2) 1)

         (= (persones res3) 3)
         (= (principi res3) 1)
         (= (final res3) 1)

         (= (persones res4) 4)
         (= (principi res4) 1)
         (= (final res4) 1)

         (= (reserves-no-satisfetes) 0)
         (= (habitacions-obertes) 0)
         (= (desaprofitament-places) 0)

         (decidir hab1)
         (decidir hab2)
         (decidir hab3)
         (decidir hab4)
  )

  (:goal (and (forall (?res - reserva) (processada ?res)) (forall (?res - habitacio) (not (decidir ?res)))))

  (:metric minimize (+ (+ (* 80 (reserves-no-satisfetes)) (desaprofitament-places)) (* 120 (habitacions-obertes))))
  ; (:metric minimize (+ (* 120 (reserves-no-satisfetes)) (desaprofitament-places)))
)
