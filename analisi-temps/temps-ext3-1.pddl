(define (problem problema-h1-r1)
   (:domain reserves)
   (:objects hab0 - habitacio
             res0 - reserva)
   (:init
         (= (capacitat hab0) 2)
         (= (ultim-dia-ocupada hab0) 0)
         (= (persones res0) 1)
         (= (principi res0) 16)
         (= (final res0) 25)
         (= (reserves-no-satisfetes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal (forall (?res - reserva) (processada ?res)))
   (:metric minimize (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))))
)
