(define (problem problema-h4-r4)
   (:domain reserves)
   (:objects hab0 hab1 hab2 hab3 - habitacio
             res0 res1 res2 res3 - reserva)
   (:init
         (= (capacitat hab0) 3)
         (= (ultim-dia-ocupada hab0) 0)
         (= (capacitat hab1) 3)
         (= (ultim-dia-ocupada hab1) 0)
         (= (capacitat hab2) 3)
         (= (ultim-dia-ocupada hab2) 0)
         (= (capacitat hab3) 3)
         (= (ultim-dia-ocupada hab3) 0)
         (= (persones res0) 2)
         (= (principi res0) 8)
         (= (final res0) 22)
         (= (persones res1) 3)
         (= (principi res1) 6)
         (= (final res1) 17)
         (= (persones res2) 3)
         (= (principi res2) 16)
         (= (final res2) 25)
         (= (persones res3) 3)
         (= (principi res3) 15)
         (= (final res3) 19)
         (= (reserves-no-satisfetes) 0)
         (= (habitacions-obertes) 0)
         (= (desaprofitament-places) 0)
   )
   (:goal  (and (forall (?res - reserva) (processada ?res)) (forall (?hab - habitacio) (decidida ?hab))))
   (:metric minimize (+ (+ (* 1 (reserves-no-satisfetes)) (* 1 (desaprofitament-places))) (* 1 (habitacions-obertes))))
)