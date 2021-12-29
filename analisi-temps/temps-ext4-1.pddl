(define (problem problema-h1-r1)
   (:domain reserves)
   (:objects hab0 - habitacio
             res0 - reserva)
   (:init
         (= (capacitat hab0) 1)
         (= (ultim-dia-ocupada hab0) 0)
         (= (persones res0) 1)
         (= (principi res0) 27)
         (= (final res0) 29)
         (= (reserves-no-satisfetes) 0)
         (= (habitacions-obertes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal  (and (forall (?res - reserva) (processada ?res)) (forall (?hab - habitacio) (decidida ?hab))))
   (:metric minimize (+ (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))) (* 1 (habitacions-obertes))))
)
