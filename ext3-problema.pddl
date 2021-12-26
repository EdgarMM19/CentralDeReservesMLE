(define (problem reserves-habitacions)
  (:domain reserves)
  (:objects hab1 hab2 hab3 - habitacio
            res1 res2 - reserva)
  (:init (= (capacitat hab1) 4)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 1)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 4)
         (= (ultim-dia-ocupada hab3) 0)

         (= (persones res1) 1)
         (= (principi res1) 1)
         (= (final res1) 30)

         (= (persones res2) 1)
         (= (principi res2) 1)
         (= (final res2) 30)

         (= (reserves-no-satisfetes) 0)
         (= (desaprofitament-places) 0)
  )

  (:goal (forall (?res - reserva) (processada ?res)))

  (:metric minimize (+ (* 10 (reserves-no-satisfetes)) (desaprofitament-places)))
)
